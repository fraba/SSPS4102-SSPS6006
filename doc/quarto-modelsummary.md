# Producing nice model summary tables with Quarto and modelsummary()

Remember to set the correct format in the header, PDF or HTML or both.

```
---
title: "Professional Regression Tables"
format:
  html:
    toc: true
  pdf:
    toc: true
---
```

## Setup
First, we load the necessary libraries. We'll use the built-in `mtcars` dataset for our examples.

```{r}
library(modelsummary)
library(dplyr)

# Fit three example models
model1 <- lm(mpg ~ hp, data = mtcars)
model2 <- lm(mpg ~ hp + wt, data = mtcars)
model3 <- lm(mpg ~ hp + wt + drat, data = mtcars)

# Store them in a named list for better table labels
models <- list(
  "Baseline" = model1,
  "Control 1" = model2,
  "Full Model" = model3
)
```

## Basic Regression Table
The modelsummary() function automatically detects whether you are rendering to HTML or PDF and adjusts its output accordingly.

```{r}
modelsummary(models)
```

## Customizing the Output
To make the table "nice," we usually want to rename coefficients, add a title, and perhaps change the goodness-of-fit statistics.

```
modelsummary(
  models,
  title = "Table 1: The Impact of Horsepower on MPG",
  coef_rename = c("hp" = "Horsepower", 
                  "wt" = "Weight (1000 lbs)", 
                  "drat" = "Rear Axle Ratio"),
  stars = TRUE, # Adds significance stars (e.g., *** p < 0.01)
  gof_omit = "IC|Log|Adj|F" # Omit AIC, BIC, Log Likelihood, etc.
)
```

## Advanced Styling with kableExtra
For even more control (like bolding rows or adding headers), you can pipe the output into kableExtra.

```{r}
library(kableExtra)

modelsummary(models, output = "kableExtra") %>%
  kable_styling(bootstrap_options = c("striped", "hover"), 
                latex_options = "striped") %>%
  add_header_above(c(" " = 1, "Economy Models" = 2, "Complex Model" = 1))
```

---

### Key Components Explained

* **`modelsummary(models)`**: The core function. It accepts a single model or a list of models. If you use a named list (e.g., `list("Model A" = m1)`), the names become the column headers.
* **The `stars` Argument**: Set `stars = TRUE` to get the classic $*, **, ***$ notation for p-values.
* **The `output` Argument**: 
    * By default, `modelsummary` detects your Quarto format.
    * Using `output = "kableExtra"` allows you to use `kableExtra` functions to further refine the look (e.g., adding row groups or custom CSS/LaTeX formatting).
* **Cross-Format Compatibility**:
    * **HTML**: Renders as a responsive, clean table using Bootstrap.
    * **PDF**: Renders as a formal LaTeX table. Ensure you have a LaTeX distribution (like TinyTeX) installed.

### Pro-Tips for RStudio
1.  **TinyTeX**: If you have trouble rendering to PDF, run `tinytex::install_tinytex()` in your console.
2.  **Visual Editor**: You can toggle the **Visual** button at the top of the RStudio script editor to see a near-real-time preview of your tables.
3.  **Global Options**: You can set `modelsummary` to always use stars by adding `options(modelsummary_stars = TRUE)` to your setup chunk.