import numpy as np
import matplotlib.pyplot as plt

# Parameters
phi1 = -0.7
phi2 = -0.2
nlag = 30

# Compute autocorrelations
rho = np.zeros(nlag + 1)
rho[0] = 1
rho[1] = -phi1 / (1 + phi2)

for k in range(2, nlag + 1):
    rho[k] = -phi1 * rho[k-1] - phi2 * rho[k-2]

# Plot
plt.stem(range(nlag + 1), rho, basefmt="k")
plt.xlabel("Lag k")
plt.ylabel("Autocorrelation")
plt.title("Autocorrelation function of AR(2) process")
#plt.axhline(0, color="black", linewidth=0.8)
plt.savefig("Assignment2/Plot_1_4.png")