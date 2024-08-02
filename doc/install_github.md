# Installing R packages from Github

There are three suggested R packages to install other packages from Github. Try them in this order. Please note that if you have successfully installed one package with one method, you don't need to reinstall it with another method. 

## First, how do I know if I package has been sucessfully installed? 

### 1. Open the "Packages" tab in RStudio and search for the package name, if the package is listed there it is installed. 

### 2. Try to load the package in R, as see if you get any error.

```{r}
library(ggplot2)
```

### 2.1 Message if the package was not succesfully installed 

```{r}
library(this_package_doesnt_exist)
```
> Error in `library()`:
> ! there is no package called 'this_package_doesnt_exist'

## Install packages using devtools

### 1. Install devtools with

```{r}
install.packages('devtools')
```

### 2. Install the required packages from Github with

```{r}
devtools::install_github("kosukeimai/qss-package")
devtools::install_github("rstudio/learnr")
devtools::install_github("rstudio-education/gradethis")
devtools::install_github("fraba/sspslearnr")
```

If something goes wrong, try this...

## Install packages using pak

```{r}
install.packages('pak')
```

### 2. Install the required packages from Github with

```{r}
pak::pkg_install("kosukeimai/qss-package")
pak::pkg_install("rstudio/learnr")
pak::pkg_install("rstudio-education/gradethis")
pak::pkg_install("fraba/sspslearnr")
```

If something goes wrong, try this...

## Install packages using remotes

### 1. Install remotes with

```{r}
install.packages('remotes')
```

### 2. Install the required packages from Github with

```{r}
remotes::install_github("kosukeimai/qss-package")
remotes::install_github("rstudio/learnr")
remotes::install_github("rstudio-education/gradethis")
remotes::install_github("fraba/sspslearnr")
```

## After successfully installing the last package, sspslearnr...

You should be able to launch the tutorial with

```{r}
learnr::run_tutorial("week-01", package = "sspslearnr")
```
