# =========================================================================
# Title: R Statistics Bootcamp - Core Concepts
# Author: Daniil Gerasimov
# =========================================================================

# --- Day 5: Probability & Normal Distribution ---
# Simulating a biological trait (e.g., plant heights)
set.seed(123)
heights <- rnorm(1000, mean = 150, sd = 20)
# Probability of finding a plant taller than 180cm
prob_tall <- 1 - pnorm(180, mean = 150, sd = 20)

# --- Day 6: Central Limit Theorem (CLT) ---
# Proving that sample means distribute normally
population <- rchisq(10000, df = 2) # Skewed population
sample_means <- replicate(1000, mean(sample(population, 30)))
hist(sample_means, main="CLT in Action", col="gold")

# --- Day 8: ANOVA & Post-hoc Testing ---
# Comparing growth across 3+ treatment groups
# model <- aov(Height ~ Treatment, data = plant_df)
# summary(model)
# TukeyHSD(model)

# --- Day 9: Linear Regression ---
# Predicting Yield based on Biomass
# model_yield <- lm(Yield_g ~ Biomass_g, data = plant_df)
# summary(model_yield)
