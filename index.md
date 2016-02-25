---
title       : Data Product Pitch
subtitle    : MPG shiny App
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## mtcars: MPG and Cylinders

My shiny app is a calculator based on the relationship between the number of cylinders and mpg.

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id 

## The input
The app takes a single input: the number of cylinders.  You select either 4, 6, or 8.

--- .class #id 

## The calculation
The prediction is based upon a linear regression with a single variable

```r
library(datasets)
dat <- mtcars
fit <- lm(mpg ~ cyl, data = dat)
fit
```

```
## 
## Call:
## lm(formula = mpg ~ cyl, data = dat)
## 
## Coefficients:
## (Intercept)          cyl  
##      37.885       -2.876
```

--- .class #id 

## The prediction
After selecting the number of cylinders, the output is the regression function evaluated using the number of cylinders you indicate, for example, 6:

```r
as.numeric(predict(fit,data.frame(cyl=6))) 
```

```
## [1] 20.62984
```





