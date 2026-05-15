kf_logLik_dt <- function(par, df) {
  # par = c(A, B1, B2, B3, G, sigma_y)
  # 1D model: X_{t+1} = A*X_t + B*u_t + G*e1_t,  Y_t = X_t + e2_t
  A   <- matrix(par[1], 1, 1)
  B   <- matrix(par[2:4], 1, 3)
  Qlt <- matrix(par[5], 1, 1)       # Cholesky factor of system noise cov
  Q   <- Qlt %*% t(Qlt)             # system noise covariance = G^2
  H   <- matrix(1, 1, 1)            # observation matrix C = 1
  X0  <- matrix(df[1, "Y"], 1, 1)  # initial state from first observation
  R_obs <- matrix(par[6]^2, 1, 1)  # observation noise covariance
  obs_cols   <- c("Y")
  input_cols <- c("Ta", "S", "I")

  # pull out data
  Y  <- as.matrix(df[, obs_cols])     # T×1
  U  <- as.matrix(df[, input_cols])   # T×3
  Tn <- nrow(df)

  # init
  n      <- nrow(A)
  x_est  <- X0
  P_est  <- diag(1e1, n)             # diffuse prior covariance
  logLik <- 0

  for (t in 1:Tn) {
    u_t <- matrix(U[t, ], ncol = 1)

    # prediction step
    x_pred <- A %*% x_est + B %*% u_t
    P_pred <- A %*% P_est %*% t(A) + Q

    # innovation step
    y_pred  <- H %*% x_pred
    S_t     <- H %*% P_pred %*% t(H) + R_obs
    innov   <- matrix(Y[t, ]) - y_pred

    # log-likelihood contribution
    logLik <- logLik - 0.5*(sum(log(2*pi*S_t)) + t(innov) %*% solve(S_t, innov))

    # update step
    K_t   <- P_pred %*% t(H) %*% solve(S_t)
    x_est <- x_pred + K_t %*% innov
    P_est <- (diag(n) - K_t %*% H) %*% P_pred
  }

  as.numeric(logLik)
}

# Optimizer wrapper
estimate_dt <- function(start_par, df, lower=NULL, upper=NULL) {
  negLL <- function(par) -kf_logLik_dt(par, df)
  optim(
    par    = start_par, fn = negLL,
    method = "L-BFGS-B",
    lower  = lower, upper = upper,
    control= list(maxit=1000, trace=1)
  )
}
