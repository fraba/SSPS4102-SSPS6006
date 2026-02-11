
**Course Integration:** This course combines two complementary textbooks:

- **TSwD**: _Telling Stories with Data_ by Rohan Alexander (2023)
- **ROS**: _Regression and Other Stories_ by Gelman, Hill, and Vehtari (2021)

---

## Week 1: Introduction to R & Data Science Workflow

### Topic/Theme

Introduction to data science workflow and R programming fundamentals

### Readings

**TSwD:**

- Ch 1: Telling stories with data
- Ch 2: Drinking from a fire hose (sections 2.1-2.2)

**ROS:**

- Ch 1: Overview
- Ch 2: Data and Measurement

### Learning Objectives

- Understand the role of data analysis in social science research
- Set up R and RStudio environment
- Learn basic principles of reproducible research
- Understand data validity and reliability
- Learn the Plan-Simulate-Acquire-Explore-Share workflow

### Statistical Concepts Covered

- The three challenges of statistics (generalization, treatment effects, measurement)
- Validity and reliability in measurement
- Data quality assessment
- Statistical thinking
- Workflow components

### R Programming Concepts Covered

- R and RStudio setup
- Basic R syntax and data types
- Working directories and file management
- Introduction to reproducible workflows
- Writing your first R script

---

## Week 2: Reproducible Workflows and Version Control

### Topic/Theme

Creating reproducible research with Quarto, R Projects, and version control

### Readings

**TSwD:**

- Ch 3: Reproducible workflows
    - 3.2 Quarto
    - 3.3 R Projects and file structure
    - 3.4 Version control

**ROS:**

- Appendix A.3-A.4: The basics & Reading, writing, and looking at data

### Learning Objectives

- Create reproducible documents with Quarto
- Organize projects with R Projects
- Use Git and GitHub for version control
- Import data from various sources

### Statistical Concepts Covered

- Reproducibility principles
- Documentation importance
- Version control concepts
- Data provenance

### R Programming Concepts Covered

- Quarto basics (YAML, chunks, markdown)
- R Projects structure
- Git commands (commit, push, pull)
- `read.csv()` and `read.table()`
- File paths and working directories

---

## Week 3: Data Acquisition and Measurement

### Topic/Theme

Understanding measurement, working with government data, and accessing data through APIs

### Readings

**TSwD:**

- Ch 6: Farm data
    - 6.2 Measurement
    - 6.3 Censuses and other government data
    - 6.4 Sampling essentials
- Ch 7: Gather data (7.2 APIs)

**ROS:**

- Appendix A.6: Working with messy data

### Learning Objectives

- Understand measurement properties and error
- Work with census and government data
- Learn probabilistic and non-probability sampling
- Access data through APIs

### Statistical Concepts Covered

- Validity and reliability in measurement
- Measurement error
- Missing data mechanisms (MCAR, MAR, MNAR)
- Sampling methods (simple random, stratified, cluster)
- Selection bias

### R Programming Concepts Covered

- Working with messy data
- `is.na()` and `complete.cases()`
- API access with httr/tidyverse packages
- Data subsetting with brackets and `$`
- `factor()` for categorical variables

---

## Week 4: Data Visualization

### Topic/Theme

Creating effective visualizations for data exploration and communication

### Readings

**TSwD:**

- Ch 5: Static communication
    - 5.2 Graphs (bar charts, scatterplots, line plots, histograms, boxplots)

**ROS:**

- Ch 2.3-2.5: All graphs are comparisons, Data and adjustment

### Learning Objectives

- Create effective visualizations with ggplot2
- Apply principles of good graphics
- Choose appropriate plot types for different data
- Compare distributions and identify relationships

### Statistical Concepts Covered

- Distributions (shape, center, spread)
- Graphical comparisons
- Principles of effective visualization
- Summary statistics
- Exploratory data analysis

### R Programming Concepts Covered

- ggplot2: `geom_bar()`, `geom_point()`, `geom_line()`
- `geom_histogram()`, `geom_boxplot()`
- Aesthetics (color, size, shape) and facets
- Customizing graphics (labels, themes, scales)
- Base R plotting for comparison

---

## Week 5: Data Cleaning and Probability Simulation

### Topic/Theme

Systematic data cleaning and understanding probability through simulation

### Readings

**TSwD:**

- Ch 9: Clean and prepare
    - 9.2 Workflow
    - 9.3 Checking and testing
    - 9.4-9.7 Examples (running times, DHS, Kenyan census)

**ROS:**

- Ch 3: Some basic methods in mathematics and probability
- Ch 4: Statistical inference
- Ch 5: Simulation

### Learning Objectives

- Clean and prepare raw data systematically
- Write tests and documentation for data cleaning
- Handle missing values appropriately
- Understand probability distributions
- Simulate data for testing and validation

### Statistical Concepts Covered

- Probability distributions (normal, binomial, uniform)
- Central Limit Theorem
- Sampling distributions
- Data quality checks
- Testing and validation principles

### R Programming Concepts Covered

- dplyr for data manipulation (`filter()`, `mutate()`, `select()`)
- Writing tests with testthat package
- `rnorm()`, `rbinom()`, `runif()` for simulation
- `sample()` and `replicate()` for repeated sampling
- Simulation for data validation

---

## Week 6: Simple Linear Regression

### Topic/Theme

Fitting and interpreting simple linear regression models

### Readings

**TSwD:**

- Ch 12: Linear models
    - 12.1 Introduction
    - 12.2 Simple linear regression
    - 12.2.1 Simulated example: running times

**ROS:**

- Ch 6: Background on regression modeling
- Ch 7: Linear regression with a single predictor

### Learning Objectives

- Fit and interpret simple linear regression models
- Understand the least squares criterion
- Assess model fit with R-squared
- Make predictions from fitted models
- Use simulation to understand regression

### Statistical Concepts Covered

- Correlation vs. causation
- Least squares estimation
- Regression coefficients as comparisons
- Residuals and fitted values
- R-squared interpretation
- Standard errors and confidence intervals

### R Programming Concepts Covered

- `lm()` function for fitting models
- broom package (`tidy()`, `glance()`, `augment()`)
- `coef()`, `summary()`, `fitted()`, `residuals()`
- `predict()` for making predictions
- Visualizing regression lines with `abline()` and ggplot2

---

## Week 7: Multiple Regression

### Topic/Theme

Building and interpreting multiple regression models

### Readings

**TSwD:**

- Ch 12: Linear models
    - 12.3 Multiple linear regression
    - 12.4 Building models

**ROS:**

- Ch 9: Prediction and Bayesian inference
- Ch 10: Linear regression with multiple predictors

### Learning Objectives

- Build multiple regression models with several predictors
- Interpret coefficients in the presence of multiple predictors
- Handle categorical predictors effectively
- Build and compare models systematically
- Understand confounding and control variables

### Statistical Concepts Covered

- Multiple regression coefficients
- Partial effects and confounding
- Adjusted R-squared
- Categorical predictors (dummy variables)
- Model comparison and selection
- Interaction effects

### R Programming Concepts Covered

- Formula syntax: `y ~ x1 + x2 + x3`
- `factor()` for categorical variables
- Interaction terms with `:` and `*`
- modelsummary package for regression tables
- Model comparison strategies

---

## Week 8: Model Diagnostics and Communication

### Topic/Theme

Checking model assumptions and communicating results effectively

### Readings

**TSwD:**

- Ch 5: Static communication
    - 5.3 Tables
    - 5.4 Maps
- Ch 4: Writing research

**ROS:**

- Ch 11: Assumptions, diagnostics, and model evaluation
- Ch 12: Transformations and regression
- Ch 2.4: Data and adjustment

### Learning Objectives

- Check regression assumptions systematically
- Create publication-quality tables
- Communicate statistical results effectively
- Transform variables appropriately
- Diagnose and address model problems

### Statistical Concepts Covered

- Linearity assumption
- Constant variance (homoscedasticity)
- Normality of residuals
- Influential observations
- Variable transformations (log, sqrt)
- Cook's distance

### R Programming Concepts Covered

- `plot()` for regression diagnostics
- `residuals()` and `fitted()`
- `log()`, `sqrt()` transformations
- kableExtra and gt packages for tables
- Creating effective captions and labels

---

## Week 9: Logistic Regression

### Topic/Theme

Modeling binary outcomes with logistic regression

### Readings

**TSwD:**

- Ch 13: Generalized linear models
    - 13.1 Introduction
    - 13.2 Logistic regression (including examples)

**ROS:**

- Ch 13: Logistic regression
- Ch 14: Working with logistic regression
- Ch 5.4: Bootstrapping

### Learning Objectives

- Fit and interpret logistic regression models
- Understand and interpret odds ratios and log-odds
- Make probabilistic predictions for binary outcomes
- Evaluate classification model performance
- Use bootstrap for uncertainty estimation

### Statistical Concepts Covered

- Binary outcomes and binomial distribution
- Logit transformation
- Odds and odds ratios
- Predicted probabilities
- Classification metrics (accuracy, sensitivity, specificity)
- Bootstrap resampling

### R Programming Concepts Covered

- `glm()` with `family=binomial`
- `plogis()` and `qlogis()` functions
- `predict()` with `type='response'`
- Creating confusion matrices
- Bootstrap implementation in R

---

## Week 10: Count Models and Multilevel Modeling

### Topic/Theme

Extending regression to count data and introducing hierarchical models

### Readings

**TSwD:**

- Ch 13: Generalized linear models
    - 13.3 Poisson regression
    - 13.4 Negative binomial regression
    - 13.5 Multilevel modeling

**ROS:**

- Ch 15: Other generalized linear models

### Learning Objectives

- Fit Poisson and negative binomial models for count data
- Understand and diagnose overdispersion
- Introduce multilevel/hierarchical models
- Choose appropriate models for different outcome types
- Understand link functions in GLMs

### Statistical Concepts Covered

- Poisson distribution
- Count data characteristics
- Overdispersion and negative binomial distribution
- Link functions (log, logit, identity)
- Random effects and clustering
- Intraclass correlation

### R Programming Concepts Covered

- `glm()` with `family=poisson`
- `MASS::glm.nb()` for negative binomial regression
- lme4 package basics for multilevel models
- Offset terms for modeling rates
- Interpreting exponential coefficients

---

## Week 11: Surveys and Experimental Design

### Topic/Theme

Designing and analyzing surveys and randomized controlled trials

### Readings

**TSwD:**

- Ch 8: Hunt data
    - 8.2 Field experiments and randomized controlled trials
    - 8.3 Surveys
    - 8.4 RCT examples

**ROS:**

- Ch 16: Design and sample size decisions
- Ch 17: Poststratification and missing-data imputation

### Learning Objectives

- Understand principles of randomized controlled trials
- Design and analyze survey data
- Apply survey weights appropriately
- Use poststratification for inference
- Understand ethical foundations of experimental research

### Statistical Concepts Covered

- Randomization principles
- Treatment and control groups
- Survey sampling designs
- Survey weights and design effects
- Poststratification
- Experimental ethics
- Average treatment effects

### R Programming Concepts Covered

- survey package for weighted analysis
- Random assignment simulation
- Creating and applying weights
- `aggregate()` for grouped summaries
- Fisher's exact test
- Treatment effect estimation

---

## Week 12: Causal Inference from Observational Data

### Topic/Theme

Methods for estimating causal effects from observational data

### Readings

**TSwD:**

- Ch 14: Causality from observational data
    - 14.2 Directed Acyclic Graphs (DAGs)
    - 14.4 Difference-in-differences
    - 14.5 Propensity score matching
    - 14.6 Regression discontinuity design
    - 14.7 Instrumental variables

**ROS:**

- Ch 18: Causal inference and randomized experiments
- Ch 19: Causal inference using regression on the treatment variable

### Learning Objectives

- Understand and create Directed Acyclic Graphs (DAGs)
- Apply difference-in-differences estimation
- Use propensity score matching to balance treatment groups
- Implement regression discontinuity designs
- Understand instrumental variables approach
- Recognize confounders, mediators, and colliders

### Statistical Concepts Covered

- Confounders, mediators, colliders
- Simpson's paradox and Berkson's paradox
- Parallel trends assumption (DiD)
- Propensity scores and matching
- Discontinuity designs and local effects
- Instrumental variables and exclusion restriction
- Treatment effect heterogeneity

### R Programming Concepts Covered

- dagitty or ggdag packages for DAGs
- MatchIt package for propensity score matching
- Treatment effect estimation
- Balance checking (standardized mean differences)
- Regression with interactions for difference-in-differences
- Two-stage least squares for IV

---

## Week 13: Advanced Applications and Best Practices

### Topic/Theme

Data sharing, advanced applications, and synthesis of best practices

### Readings

**TSwD:**

- Ch 4: Writing research (Recap - Repetition)
- Ch 10: Store and share
- Ch 15: Multilevel regression with post-stratification (MRP) - introduction
- Ch 17: Concluding remarks

**ROS:**

- Ch 11.8: Cross-validation
- Appendix B: 10 quick tips to improve your regression modeling

### Learning Objectives

- Share and document data properly and ethically
- Understand basics of MRP (multilevel regression with post-stratification)
- Create fully reproducible research projects
- Apply best practices in statistical workflow
- Communicate findings effectively to various audiences
- Understand ethical considerations in data science

### Statistical Concepts Covered

- Cross-validation (leave-one-out, k-fold)
- Out-of-sample prediction
- Multilevel regression with post-stratification (basics)
- Statistical vs. practical significance
- Research ethics and reproducibility
- Model validation strategies

### R Programming Concepts Covered

- GitHub for sharing research
- Data documentation with codebooks
- R Markdown for complete reproducible reports
- modelsummary for professional model tables
- Best practices synthesis
- Creating R packages for data (optional)

---

## Course Structure Notes

### Integration Philosophy

This course strategically combines:

- **TSwD strengths**: Modern workflow (Quarto, tidyverse), practical data acquisition methods, contemporary examples, reproducibility emphasis
- **ROS strengths**: Deep statistical theory, simulation-based learning, comprehensive causal inference framework, Bayesian perspective

### Weekly Structure

Each week should include:

1. **Readings**: Assigned chapters from both textbooks
2. **Coding Lab**: Hands-on practice with real social science data
3. **Problem Set**: Combining theoretical understanding with practical application
4. **Reproducibility**: All work done in documented, reproducible R scripts

### Course Progression

- **Weeks 1-3**: Foundations (workflow, tools, data acquisition)
- **Weeks 4-5**: Data preparation, exploration, and probability
- **Weeks 6-8**: Linear regression theory and practice
- **Weeks 9-10**: Generalized linear models and multilevel models
- **Weeks 11-13**: Experimental design, causal inference, advanced applications

### Assessment

| Type | Description | Weight | Due | Length | AI Use | Outcomes |
|------|-------------|--------|-----|--------|--------|----------|
| Practical skill | Data preparation and communication task | 30% | Week 06, 03 Apr 2026 at 23:59 | 1,000 words | Allowed | LO1, LO2 |
| Written work | Written report on data analysis project | 40% | Week 13, 29 May 2026 at 23:59 | 1,500 words | Allowed | LO1, LO2, LO3, LO4 |
| In-class quiz | 10 weekly coding exercises with brief written interpretation of R output | 10% | Weekly | 10 × 100 words equivalent | Allowed | LO1, LO2, LO3, LO4 |
| Out-of-class quiz | 10 weekly coding exercises with brief written interpretation of R output | 20% | Weekly | 10 × 100 words equivalent | Allowed | LO1, LO2, LO3, LO4 |

*Note: Written report on data analysis project is a hurdle task

### Required Software

- R (version 4.0 or higher)
- RStudio (latest version)
- Git and GitHub account
- Quarto

### Key R Packages

**Core tidyverse:**

- ggplot2, dplyr, tidyr, readr, tibble, stringr, forcats, purrr

**Modeling:**

- broom, modelsummary, lme4, MASS

**Data acquisition:**

- haven, readxl, httr, rvest, jsonlite

**Reproducibility:**

- rmarkdown, knitr, here

**Causal inference:**

- MatchIt, dagitty/ggdag

**Survey analysis:**

- survey

### Learning Outcomes

By the end of this course, students will be able to:

1. Import, clean, and prepare data from various sources
2. Create effective data visualizations for exploration and communication
3. Fit and interpret linear and generalized linear models
4. Understand and apply basic causal inference methods
5. Conduct reproducible data analysis
6. Communicate statistical results clearly to technical and non-technical audiences
7. Critically evaluate statistical claims in social science research
8. Apply ethical principles in data collection and analysis
9. Use version control and collaborative tools
10. Continue learning independently with confidence

---

## Additional Resources

### Online Communities

- RStudio Community (community.rstudio.com)
- Stack Overflow (#r tag)
- Twitter #rstats community

### Further Reading

- _R for Data Science_ by Wickham & Grolemund (r4ds.had.co.nz)
- _Data Analysis Using Regression and Multilevel/Hierarchical Models_ by Gelman & Hill
- _The Effect_ by Nick Huntington-Klein (theeffectbook.net)

---

_This syllabus provides a comprehensive introduction to R programming and data analysis specifically designed for social science students, emphasizing both practical skills and theoretical understanding._