## MA process:
Moving Average process. Page 117 in the book. Definition 5.16.
The shock affects the system only for a short finite time, so the impulse response stops completely after q steps. 

Example: A website recieves a shock, e.g. an outage, a bug etc. The complaints due to this shock will be many today, less tomorrow, even less two days from now, and gone by the fourth day. (finite)

## AR process:
Autoregressive process. Page 119 in the book. Definition 5.17 (The AR($p$) process): 

The process {$Y_t$} given by 

$Y_t + \phi_1Y_{t-1}+···+\phi_pY_{t-p} = \epsilon_t$,

where $\epsilon_t$ is white noise, is called an *autoregressive process* of order *p* (or an $AR(p)$ process).

Here, the chock affects the system forever, but fades gradually. There are infinite $\phi$ weights where each $\phi_t$ is smaller than $\phi_{t-1}$. The value at time $t$ is therefore only dependent on the previous value at time $t-1$.

An example of AR(1):

$ \gamma_t = 0.7 \gamma_{t-1} + \epsilon_t $ 

Example: 

## ARMA process: 
Autoregressive Moving Average. Page 125 in the book. Definition 5.19. 

ARMA combines the immediate short term effect from MA with the persistent and decaying long term effect from AR.

Example: The electricity demand is depend on recent shocks (sudden cold weather, etc) as well as depends on the long-term history of demands. 


## ARIMA process:
Integrated Autoregressive Moving Average. Section 5.6.1. Definition 5.21.

Many real-world series have trends or growth, so they are not stationary. ARIMA makes them stationary by differencing before applying an ARMA model.

Example: Stock prices themselves are not stationary, but the price changes are. The changes of stock prices can be described as a random walk, were only the random noise $\epsilon$ affects the future values. Therefore, ARIMA difference to be able to work with the time series as stationary.

## Seasonal Models:
Section 5.6.2 in the book. Definition 5.22.

## ACF:
AutoCorrelation Function. Page 103 in the book. The ACF is defined as:

$\rho_{XX}(t_1, t_2) = \rho(t_1, t_2) = \frac{\gamma_{XX}(t_1, t_2)}{\sqrt{\sigma^2(t_1)\sigma^2(t_2)}}$

From GeeksforGeeks: "*Autocorrelation measures the degree of similarity between a given time series and the lagged version of that time series over successive time periods. It is similar to calculating the correlation between two different variables except in Autocorrelation we calculate the correlation between two different versions $X_t$ and $X_{t-k}$ of the same time series.*"

## PACF:
Partial AutoCorrelation Function. Page 124 in the book.