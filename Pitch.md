Why you have to make banana bread - NOW
========================================================
author: El Grueff - A.S.
date: 1. August 2019
autosize: true

Introduction
========================================================

Hi there

There are multiple reasons why you would want to make banana bread right now in this moment. The most obvious one being: you bought some bananas, some days ago, because you intended to live healthy and stop eating sugary junk food. But we all know that it's not as simple as that. The bananas know that too and that's the reason, they're laying around somewhere in your kitchen and getting browner by the day.

But, don't feel sorry for the bananas, the're better in the form of gooey, chocolaty banana bread anyway

How can the app help
========================================================

The basic recipe is for 3 bananas. But maybe you have 5 bananas laying around. or maybe just one.
But honestly, nobody wants to calculate everything, so use the app and let it calculate the required ingredients for you.

You can even decide, if you want to use normal units (gram) or the (in my opinion) slightly silly american units (cups).

How does the calculation work
========================================================
Basically we just take the basic recipe, grab the number of bananas and multiply by the ratio of the actual number of bananas and 3 (beacuse 3 is the number of bananas in the basic recipe).


```r
banana <- 5 #normally we grab the input from the UI here
        ingredients <- c("VegetableOil","BrownSugar",
                         "Flour","BakingPowder","ChocolateChips")
        amount <- c(75,100,225,6,75)
        amount <- round((amount / 3)*banana,2)
        unit <- c("gram", "gram", "gram", "gram", "gram")
        ingr <- data.frame(ingredients, amount, unit)
        ingr
```

Example output
========================================================

The above code would produce the following output

```
     ingredients amount unit
1   VegetableOil 125.00 gram
2     BrownSugar 166.67 gram
3          Flour 375.00 gram
4   BakingPowder  10.00 gram
5 ChocolateChips 125.00 gram
```
