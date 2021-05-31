# Why R?

In this course, you will learn how to use the R programming language to work with your data without tool limitations. You will get plenty of practice using R for statistical analysis, and RStudio—an integrated developer environment (IDE) for R that you will use to create advanced data visualizations with lots of detail. R makes it easier to present your data with beautiful, artistic style. A few other advantages of R include its:

- Popularity: R is frequently used for data analysis
- Tools: R has a convenient library of ready-to-use tools for data cleaning and analysis
- Focus: R was created with statistics in mind; data analysts can conveniently use a rich library of statistical routines
- Adaptability: R adapts well for use in both machine learning and data analysis projects
- Availability: R is an open source programming language  

## Install packages in rstudio

For install packages in rstudio you can use the console.

```r
install.packages("palmerpenguins")
install.packages("tidyverse")
```

Use the ``palmepenguins`` library.

```r
library("palmerpenguins")
library(tidyverse)
```

Summary the ``penguins`` data set

```r
summary(penguins)

```

Create basic graph

```r
ggplot(data=penguins, aes( x = flipper_length_mm, y=body_mass_g)) +geom_point(aes(color=species))
```
