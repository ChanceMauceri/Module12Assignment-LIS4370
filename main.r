---
title: "Assignment#12(LIS4370)"
output: html_document
date: "2026-11-10"
author: "Chance Mauceri"
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# R Markdown is a tool that allows users to combine text, programming code, and visualizations together in one place. One big advantage of R Markdown is how it can generate reports automatically and save the reports when you knit the file. This allows your findings/results to be saved to the document.

Below is a sample of a LaTeX math expression.

$$ 
a^2 + b^2 = c^2
$$

# Loading Data and Libraries

The following code chunk loads the ggplot2 library and the mtcars dataset.

```{r load-data}
library(ggplot2)

data(mtcars)

head(mtcars)
```

# Analyzing the Data
I will examine some basic statistics from the dataset. The summary function provides information such as minimum values, maximum values, averages, and medians.

```{r summary-statistics}
summary(mtcars)

mean(mtcars$mpg)
mean(mtcars$hp)
```

The results provide a better understanding of the dataset. For example, calculating the average miles per gallon helps describe the fuel efficiency of the vehicles included in the dataset.

# Creating a Visualization

R Markdown also allows users to generate charts directly inside the document. The following example uses ggplot2 to create a scatterplot comparing vehicle horsepower and fuel efficiency.

```{r scatterplot}
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "steelblue", size = 3) +
  labs(
    title = "Horsepower vs. Fuel Efficiency",
    x = "Horsepower",
    y = "Miles Per Gallon"
  ) +
  theme_minimal()
```



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

# Using R Markdown is a more efficient and better experience when compared to writing a report in a standard way. One thing i found very useful was being able to run the R code in the document and being able to keep those results saved when I knit the file.
