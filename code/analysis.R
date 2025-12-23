# =========================================
# 1. Data Overview & Initial Exploration
# =========================================
summary(hotel_data)
library(DataExplorer)
create_report(hotel_data)
# =========================================
# 2. Data Transformation & Feature Engineering
# =========================================
hist(hotel_data$avgFoodSpendPerNight)
hotel_data$logAvgFoodSPN <- log(hotel_data$avgFoodSpendPerNight)
hist(hotel_data$logAvgFoodSPN)

hist(hotel_data$distanceTraveled)
hotel_data$logAvgdist <- log(hotel_data$distanceTraveled)

hist(hotel_data$nightsStayed)
hotel_data$logNightStay <- log(hotel_data$nightsStayed)

hotel_data$visitPurpose <- factor(hotel_data$visitPurpose)
hotel_data$eliteStatus <- factor(hotel_data$eliteStatus)
summary(hotel_data)
# =========================================
# 3. Correlation Analysis
# =========================================
library(corrplot)
corrplot.mixed(cor(hotel_data[ , c(1:17)]), upper="ellipse")
corrplot.mixed(cor(hotel_data[ , c(1:17,19,21:23)]), upper="ellipse")
# =========================================
# 4. Predictive Modelling – Baseline Model (M1)
# =========================================
m1 <- lm(satOverall ~ satFrontStaff, data=hotel_data)
summary(m1)

plot(satOverall ~ satFrontStaff, data=hotel_data,
     xlab="Satisfaction with Front Staff", ylab="Overall Satisfaction")
abline(m1, col='blue')

predict(m1, hotel_data[1:10, ])
# =========================================
# 5. Predictive Modelling – Expanded Models (M2, M3)
# =========================================
m2 <- lm(satOverall ~ satFrontStaff+satPerks+satPoints, data=hotel_data)
summary(m2)

library(coefplot)
coefplot(m2, intercept=FALSE, outerCI=1.96)

anova(m1, m2)

m3 <- lm(satOverall ~ satFrontStaff+satPerks+satPoints+
           satCleanRoom+satCleanBath+satDiningStaff+
           satDiningPrice+satWifiPrice+satParkingPrice+
           satRecognition, data=hotel_data)
summary(m3)

coefplot(m3, intercept=FALSE, outerCI=1.96)
anova(m1, m2, m3)
predict(m3, hotel_data[1:10, ])
# =========================================
# 6. Standardisation & Final Model (M5)
# =========================================
hotel.std <- hotel_data[ , -18]
selected_columns <- c(1,2,4,5,8,10,11,12,15,16,18)
hotel.std[ , selected_columns] <- scale(hotel.std[ , selected_columns])

hotel.std$logdist <- log(hotel_data$distanceTraveled)
hotel.std$visitPurpose.factor <- factor(hotel.std$visitPurpose)
hotel.std$eliteStatus.factor <- factor(hotel.std$eliteStatus)

m5 <- lm(satOverall ~ satFrontStaff+satPerks+satPoints+
           satCleanRoom+satCleanBath+satDiningStaff+
           satDiningPrice+satWifiPrice+satParkingPrice+
           satRecognition+logdist+
           visitPurpose.factor+eliteStatus.factor,
         data=hotel.std)

summary(m5)
anova(m1, m2, m3, m5)
predict(m5, hotel.std[1:10, ])
