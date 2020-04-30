##### Exploring the COVID19 Tracking Project Data 

## data exploration example using used car data
us_hist <- read.csv("daily.csv", stringsAsFactors = FALSE)


# get structure of data
str(us_hist)

## summary of data/variables
summary(us_hist)


## Exploring relationships between variables ---------------

# scatterplot 1
plot(x = us_hist$positive, y = us_hist$death,
     main = "Scatterplot of # of Positive test results vs. # of Deaths",
     xlab = " positive (#)",
     ylab = " Deaths(#)")

# scatterplot 2
plot(x = us_hist$positiveIncrease, y = us_hist$deathIncrease,
     main = "Scatterplot of # of Positive test results vs. # of Deaths (both increased from day before)",
     xlab = " positive (#)",
     ylab = " Deaths(#)")

# scatterplot 3
plot(x = us_hist$hospitalized, y = us_hist$recovered,
     main = "Scatterplot of # of Hospitalized vs. # of Recovered",
     xlab = " Hospitalized (#)",
     ylab = " Recovered (#)")


# scatterplot 4
plot(x = us_hist$hospitalized, y = us_hist$death,
     main = "Scatterplot of # of Hospitalized vs. # of Deaths",
     xlab = " Hospitalized (#)",
     ylab = " Death (#)")


#linear regression 
linearMod_pos_death <- lm(us_hist$positive ~ us_hist$death)
summary(linearMod_pos_death)

linearMod_pos_death_inc <- lm(us_hist$positiveIncrease ~ us_hist$deathIncrease)
summary(linearMod_pos_death_inc)

linearMod_hos_rec <- lm(us_hist$hospitalizedCurrently ~ us_hist$recovered)
summary(linearMod_hos_rec)

linearMod_hos_death <- lm(us_hist$hospitalizedCurrently ~ us_hist$death)
summary(linearMod_hos_death)

