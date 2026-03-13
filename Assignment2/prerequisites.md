## MA process:
Moving Average process. Page 117 in the book. Definition 5.16.

## AR process:
Autoregressive process. Page 119 in the book. Definition 5.17 (The AR($p$) process): 

The process {$Y_t$} given by 

$Y_t + \phi_1Y_{t-1}+···+\phi_pY_{t-p} = \epsilon_t$,

where $\epsilon_t$ is white noie, is called an *autoregressive process* of order *p* (or an $AR(p)$ process).

## ARMA process: 
Autoregressive Moving Average. Page 125 in the book. Definition 5.19. 

## ARIMA process:
Integrated Autoregressive Moving Average. Section 5.6.1. Definition 5.21.

## Seasonal Models:
Section 5.6.2 in the book. Definition 5.22.

## ACF:
AutoCorrelation Function. Page 103 in the book. The ACF is defined as:

$\rho_{XX}(t_1, t_2) = \rho(t_1, t_2) = \frac{\gamma_{XX}(t_1, t_2)}{\sqrt{\sigma^2(t_1)\sigma^2(t_2)}}$

From GeeksforGeeks: "*Autocorrelation measures the degree of similarity between a given time series and the lagged version of that time series over successive time periods. It is similar to calculating the correlation between two different variables except in Autocorrelation we calculate the correlation between two different versions $X_t$ and $X_{t-k}$ of the same time series.*"

## PACF:
Partial AutoCorrelation Function. Page 124 in the book.