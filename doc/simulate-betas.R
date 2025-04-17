# Load packages
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Simulation parameters
n <- 100             # sample size per simulation
n_sim <- 1000        # number of simulations
true_beta <- 1       # now there's a real relationship!

# Store test-statistics
z_vals <- numeric(n_sim)

# Simulate under H0: beta = 0
for (i in 1:n_sim) {
  x <- rnorm(n)                     # predictor
  # y <- rnorm(n)                     # outcome (no relationship to x, so beta = 0)
  y <- 2 + true_beta * x + rnorm(n) # Linear relationship with noise
  fit <- lm(y ~ x)
  summary_fit <- summary(fit)
  
  # Extract coefficient and standard error for x
  beta_hat <- summary_fit$coefficients["x", "Estimate"]
  se_beta <- summary_fit$coefficients["x", "Std. Error"]
  
  # Compute z-statistic
  z_vals[i] <- beta_hat / se_beta
}

# Convert to data frame
z_df <- data.frame(z = z_vals)

# Plot the distribution of test statistics
ggplot(z_df, aes(x = z)) +
  geom_histogram(aes(y = ..density..), bins = 40, fill = "skyblue", color = "black", alpha = 0.7) +
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1), color = "red", size = 1.2) +
  geom_vline(xintercept = c(-1.96, 1.96), linetype = "dashed", color = "darkgreen") +
  annotate("text", x = -2.5, y = 0.1, label = "-1.96", color = "darkgreen") +
  annotate("text", x = 2.5, y = 0.1, label = "1.96", color = "darkgreen") +
  labs(title = "Sampling Distribution of Test Statistics under H₀: β = 0",
       subtitle = "Standard normal overlay in red — dashed lines show 5% significance cutoffs",
       x = "Test Statistic (β̂ / SE(β̂))",
       y = "Density") +
  theme_minimal()