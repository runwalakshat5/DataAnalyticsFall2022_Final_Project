library(labelled)
library(dplyr)
library(lubridate)

#load the expss library that will be used for variable labeling
library(expss)

#find your working directory for R
getwd()

#change your working directory to the location where your files are
#  (make sure you put the folder path for your new directory between the 
#   quotation marks)
#load data
a<-readRDS(file.choose())

#label initial_call_type
val_lab(a$initial_call_type)=num_lab("
1 Abdominal Pain-Fever & Cough
2 Abdominal Pain-Fever & Cough
3 Abdominal Pain Fever-Travel
4 Abdominal Pain
5 ACC
6 Active Shooter
7 ADM
8 Altered Mental Status
9 Alt Mental Status-Fever&Cough
10 Amputation, Arm, Hand,Leg,Foot
11 Amputation, Fingers Or Toes
12 Anaphylactic Shock-Fever&Cough
13 Anaphylaxis
14 Card Or Resp Arrest-Fevercough
15 Cardiac Arrest
16 Asthma Attack - Fever&Cough
17 Asthma Patient Fever-Travel
18 Asthma Attack
19 BBP
20 Major Burns 18% Adlt 10% Child
21 Minor Burns <18% Adlt Or <10%
22 Cardiac Condition
23 CARDBR
24 Cardiac Condition-Fever&Cough
25 CDBRFC
26 Child Abuse
27 Choking
28 Choking Fever&Cough
29 Hypothermia
30 COVINF
31 Stroke
32 CVA (Stroke)
33 Stroke Critical - Fever&Cough
34 Stroke - Fever & Cough
35 Death Confirm By Medical Auth
36 Difficult Breather
37 Diff Breathing - Fever&Cough
38 Difficult Breathing Fever-Travel
39 Difficult Breather Rf
40 Death Confirm By Medical Auth
41 DRILL
42 Drowning
43 Hx Drug Or Alcohol Abuse
44 Hx Drug Or Alchl Abuse-Fev&Cou
45 Psychiatric Patient
46 EDPC
47 EDPW
48 Electrocution
49 Evac 
50 Fire75 Working Fire
51 Fire76 High Rise Commercial
52 Fire77 High Rise Residential
53 Gyn Bleeding-Pt Not Pregnant
54 Gyn-Severe Pain-Bleeding
55 Heat Exhaustion
56 Hypertension
57 Internal Bleeding
58 Internal Bleeding-Fever&Cough
59 Inhalation Of Smoke
60 Injury Lower Ext In Elderly
61 Major Injury
62 Minor Injury
63 Non-Critical Injury
64 Jumper Down
65 Jumper Up
66 One Alarm Fire
67 One Alarm Fire
68 Two Alarm Fire
69 Two Alarm Fire
70 Three Alarm Fire
71 Four Alarm Fire
72 MCI25
73 Five Alarm Fire Or Greater
74 Occupied High-Rise Building
75 Occupied High-Rise Building
76 Criminal Detection Facil Incid
77 Report Of Explosives
78 Report Of Explosives
79 Explosion
80 Rapid Transit-Rail Incident
81 Ground Transport Incident
82 Ground Transport Incident
83 Structural Collaspe [Specify]
84 Construction-Demolition Incid
85 Construction-Demolition Incid
86 Confined Space Incident
87 MCI37
88 MCI40
89 Aircraft Incident - Crash
90 Civil Distrubance
91 Hostage Situation - Barricaded
92 Hostage Situation - Barricaded
93 Power Failure - Blackout
94 Active Shooter
95 Active Shooter
96 All Other MCIs
97 All Other MCIs
98 MCI76
99 MCI77
100 Hazardous Materials Incident
101 Hazardous Materials Incident
102 MECHE
103 MECHV
104 Reaction To Med - Fever&Cough
105 Reaction To Medication
106 Medevac, T-C Authority Only
107 MOSILL
108 MOSINJ
109 Auto Accident, No Confirmd Inj
110 Auto Acc W-Injuries
111 MVAINM
112 NOVEH
113 Obstetric Complications
114 Female In Labor
115 Major Obstetrical Complaint
116 Miscarriage
117 Baby Out Or Imminent Birth
118 Unknown Condition
119 Police 10-13, Unconfirmed
120 Police 10-13, Confirmed
121 Sick Ped<5 Yrs-Fever & Cough
122 Sick Ped<5 Yrs-Rash & Fever
123 Pedestrian Struck
124 PEDSTS
125 RADIO
126 Rape
127 Resp Distress - Fever&Cough
128 Respiratory Distress Fever-Travel
129 Respiratory Distress
130 RESPRF
131 SAFE
132 Seizures - Fever & Cough
133 Seizures
134 Gun Shot Wound
135 Sick
136 Sick - Cough & Fever
137 Sick Patient Fever-Travel
138 Sick - Rash And Fever
139 Sick - Minor - Fever & Cough
140 Minor Illness
141 Sick Pediatric, <5 Year Old
142 Special Event
143 Stabbing
144 Status Epilepticus
145 Mult Or Prolong Seizur-Fev&Cou
146 Status Epilepticus Fever-Travel
147 STNDBM
148 Request For Stand-By
149 Stat Transfer Request
150 STUCK
151 T-ARST
152 T-DFBR
153 T-EDP
154 T-INJ
155 T-SICK
156 T-TEXT
157 T-TRMA
158 T-UNC
159 T-UNKN
160 Test Kdt-Modat
161 Multiple Trauma Patient
162 TRAUMS
163 Unconscious Patient
164 Unc Patient - Fever & Cough
165 Unconscious Fever-Travel Patient
166 Unconscious Patient-Rash&Fever
167 Caller Has No Pt Medical Info
168 Venom (Snake Bites)
")

#check that initial call type labels loaded correctly
data.frame(table(a$initial_call_type))

#label final_call_type
val_lab(a$final_call_type)=num_lab("
1 Abdominal Pain-Fever & Cough
2 Abdominal Pain-Fever & Cough
3 Abdominal Pain Fever-Travel
4 Abdominal Pain
5 Active Shooter
6 ALMNFC
7 Altered Mental Status
8 Alt Mental Status-Fever&Cough
9 Amputation, Arm, Hand,Leg,Foot
10 Amputation, Fingers Or Toes
11 Anaphylactic Shock-Fever&Cough
12 Anaphylaxis
13 Card Or Resp Arrest-Fevercough
14 Cardiac Arrest
15 ARSTFC
16 Asthma Attack - Fever&Cough
17 Asthma Attack
18 Major Burns 18% Adlt 10% Child
19 Minor Burns <18% Adlt Or <10%
20 Cardiac Condition
21 CARDBR
22 Cardiac Condition-Fever&Cough
23 CDBRFC
24 Child Abuse
25 Choking
26 Choking Fever&Cough
27 Hypothermia
28 COVINF
29 Stroke
30 CVA (Stroke)
31 Stroke Critical - Fever&Cough
32 Stroke - Fever & Cough
33 Difficult Breather
34 Diff Breathing - Fever&Cough
35 Difficult Breathing Fever-Travel
36 Difficult Breather Rf
37 Death Confirm By Medical Auth
38 Drowning
39 Hx Drug Or Alcohol Abuse
40 Hx Drug Or Alchl Abuse-Fev&Cou
41 Psychiatric Patient
42 EDPC
43 EDPW
44 Electrocution
45 Evac 
46 Fire75 Working Fire
47 Fire77 High Rise Residential
48 Gyn Bleeding-Pt Not Pregnant
49 Gyn-Severe Pain-Bleeding
50 Heat Exhaustion
51 Hypertension
52 Internal Bleeding
53 Internal Bleeding-Fever&Cough
54 Inhalation Of Smoke
55 Injury Lower Ext In Elderly
56 Major Injury
57 Minor Injury
58 Non-Critical Injury
59 Jumper Down
60 Jumper Up
61 One Alarm Fire
62 One Alarm Fire
63 Two Alarm Fire
64 Two Alarm Fire
65 Three Alarm Fire
66 Three Alarm Fire
67 Four Alarm Fire
68 Four Alarm Fire
69 MCI25
70 Five Alarm Fire Or Greater
71 Occupied High-Rise Building
72 Occupied High-Rise Building
73 MCI27
74 Medical Facility Evacuation
75 Criminal Detection Facil Incid
76 Criminal Detection Facil Incid
77 Report Of Explosives
78 Report Of Explosives
79 Explosion
80 Rapid Transit-Rail Incident
81 Rapid Transit-Rail Incident
82 Ground Transport Incident
83 Ground Transport Incident
84 Structural Collaspe [Specify]
85 Structural Collaspe [Specify]
86 Construction-Demolition Incid
87 Construction-Demolition Incid
88 MCI35
89 Confined Space Incident
90 MCI37
91 Marine - Harbor Incident
92 Marine - Harbor Incident
93 MCI40
94 Aircraft Incident - Crash
95 MCI42
96 Civil Distrubance
97 Hostage Situation - Barricaded
98 Hostage Situation - Barricaded
99 Power Failure - Blackout
100 Power Failure - Blackout
101 Active Shooter
102 Active Shooter
103 All Other MCIs
104 All Other MCIs
105 MCI76
106 MCI77
107 Hazardous Materials Incident
108 Hazardous Materials Incident
109 Reaction To Med - Fever&Cough
110 Reaction To Medication
111 Medevac, T-C Authority Only
112 Auto Accident, No Confirmd Inj
113 Auto Acc W-Injuries
114 MVAINM
115 Obstetric Complications
116 Female In Labor
117 Major Obstetrical Complaint
118 Miscarriage
119 Baby Out Or Imminent Birth
120 Unknown Condition
121 Police 10-13, Unconfirmed
122 Police 10-13, Confirmed
123 Sick Ped<5 Yrs-Fever & Cough
124 Sick Ped<5 Yrs-Rash & Fever
125 Pedestrian Struck
126 Rape
127 Resp Distress - Fever&Cough
128 Respiratory Distress Fever-Travel
129 Respiratory Distress
130 RESPRF
131 SAFE
132 Seizures - Fever & Cough
133 Seizures
134 Gun Shot Wound
135 Sick
136 Sick - Cough & Fever
137 Sick Patient Fever-Travel
138 Sick - Rash And Fever
139 SICMFC
140 Minor Illness
141 Sick Pediatric, <5 Year Old
142 Special Event
143 Stabbing
144 Status Epilepticus
145 Mult Or Prolong Seizur-Fev&Cou
146 Status Epilepticus Fever-Travel
147 STNDBM
148 Request For Stand-By
149 Stat Transfer Request
150 T-ABDP
151 T-ARST
152 T-CARD
153 T-CDBR
154 T-DFBR
155 T-EDP
156 T-INBL
157 T-INJ
158 T-OBST
159 T-OTHR
160 T-SICK
161 T-TEXT
162 T-TRMA
163 T-UNC
164 T-UNKN
165 Multiple Trauma Patient
166 Unconscious Patient
167 Unc Patient - Fever & Cough
168 Unconscious Fever-Travel Patient
169 Unconscious Patient-Rash&Fever
170 Caller Has No Pt Medical Info
171 Venom (Snake Bites)
")

#check that final call type labels loaded correctly
data.frame(table(a$final_call_type))

#create month variable
a$month <- format(as.Date(a$incident_dt), "%m")

#create day of week variable
a$dow <- weekdays(as.Date(a$incident_dt))

#label incident disposition code
val_lab(a$incident_disposition_code)=num_lab("
82	transporting patient
83	patient pronounced dead
87	cancelled
90	unfounded
91	condition corrected
92	treated not transported
93	refused medical aid
94	treated and transported
95	triaged at scene no transport
96	patient gone on arrival
")

#check that final call type labels loaded correctly
data.frame(table(a$incident_disposition_code))

#run table of incident disposition code by year
table(a$incident_disposition_code, a$incident_year)

#bar chart of incidents by year
counts_total <- table(a$incident_year) #creates a count of incidents by year and stores it in a new value frame
barplot(counts_total, xlab="Year", ylab="# of Incidents", col=c("red"), main = "EMS Incidents by Year")

#line chart of incidents by year
plot(counts_total, type="o", xlab="Year", ylab="# of Incidents", col=c("red"), main = "EMS Incidents by Year")

#multiple line chart of incidents by month and year
counts_month <- as.data.frame.matrix(table(a$month,a$incident_year)) #creates a count of incidents by year and stores it in a new value frame

library(data.table)
setDT(counts_month, keep.rownames = TRUE)[] #to create the first row as the row names, i.e years
colnames(counts_month)[1]<-"month" #rename the first column heading as Month

library(ggplot2) #powerful graphics generator for R

library(reshape) #to transform a table of rows and columns into individual entries for each row-column combo - think 2008-March and 2009-Feb
Molten <- melt(counts_month, id.vars = "month")
colnames(Molten)[2]<-"year" #rename the second column heading as year
str(Molten) #checks to see whether we have a variable stored as a factor rather than numeric
Molten$year<-as.numeric(as.character(Molten$year)) #change year from factor to numeric
Molten$month<-as.numeric(as.character(Molten$month)) #change month from character to numeric
ggplot(Molten, aes(x = month, y=value, group=year)) + geom_line(aes(color=year)) + xlim(1,12) #generate multiple line plots by year
ggplot(Molten, aes(x = year, y=value)) + geom_line() + xlim(2008,2016)

#multiple charts with incidents by month for a single year
countsmo<-ggplot(Molten, aes(year,value)) +       # we are creating a single year chart
  geom_line() +
  ggtitle("EMS Incident Calls by Month and Year") +
  xlab("year") + ylab("# of Calls") +
  xlim(2008,2016) +
  theme(plot.title = element_text(lineheight=.8, face="bold",
                                  size = 20)) +
  theme(text = element_text(size=18))
countsmo + facet_wrap(~ month, ncol=3) #the use of facet_wrap helps to repeat the single year chart across years

#stacked bar chart  of incident dispositions by year
counts <- table(a$incident_disposition_code, a$incident_year) #creates a count of incidents by year and stores it in a new value frame
#plot one - the bar chart with no legend
opar = par(oma = c(0,0,0,14)) # creates large right margin for plot
barplot(counts, xlab="Year", col=rainbow(10))
par(opar) # Reset par
#plot two - the legend on top of the bar chart
opar = par(oma = c(0,0,0,0), mar = c(0,0,0,0), new = TRUE) #creates a new margin set up for the legend
legend(x = "right", legend = rownames(counts), fill = rainbow(10), bty = "n", y.intersp = 2) #creates a legend
par(opar) # Reset par
View(a)
head(a)


#find your working directory for R
b<-read.csv(file.choose(),header=TRUE)
head(b)
#labelling different variables
var_label(b$AWND) <- "Average Daily Wind Speed (mi/h)"
var_label(b$FMTM) <- "Time of Fastest 1-minute wind (HHMM)"
var_label(b$PGTM) <- "Peak Gust Time (HHMM)"
var_label(b$PRCP) <- "Precipitation (in)"
var_label(b$SNOW) <- "Snowfall (in)"
var_label(b$SNWD) <- "Snow depth (in)"
var_label(b$TMAX) <- "Max Temp (F)"
var_label(b$TMIN) <- "Min Temp (F)"
var_label(b$WDF2) <- "Direction of fastest 2-minute wind (degrees)"
var_label(b$WDF5) <- "Direction of fastest 5-second wind (degrees)"
var_label(b$WSF2) <- "Fastest 2-minute wind speed (mph)"
var_label(b$WSF5) <- "Fastest 5-second wind speed (mph)"
var_label(b$WT01) <- "Fog"
var_label(b$WT02) <- "Heavy Fog"
var_label(b$WT03) <- "Thunder"
var_label(b$WT04) <- "Ice pellets"
var_label(b$WT05) <- "Hail"
var_label(b$WT06) <- "Glaze or rime"
var_label(b$WT07) <- "Dust or sand"
var_label(b$WT08) <- "Smoke or haze"
var_label(b$WT09) <- "Blowing or drifting snow"
var_label(b$WT11) <- "High or damaging winds"
var_label(b$WT13) <- "Mist"
var_label(b$WT14) <- "Drizzle"
var_label(b$WT16) <- "Rain"
var_label(b$WT17) <- "Freezing Rain"
var_label(b$WT18) <- "Snow"
var_label(b$WT19) <- "Unknown Source of Precipitation"
var_label(b$WT22) <- "Freezing Fog"

#replace blanks with zeros for binary variables
wts <- grep('^WT', names(b), value = TRUE) #creates a new vector of all the binary variables related to weather type
b[wts][is.na(b[wts])] <- 0 #replaces all of the "NA" values in those binary variables with 0s
View(b)
#create date variable for merging
a$date_m <- as.Date(a$incident_dt, "%m/%d/%Y")

#reformat date variable in weather data from character to date
b$date_m <- as.Date(b$DATE, "%m/%d/%Y")

#create month category
b$month <- floor_date(b$date_m, "month") #uses the floor_date command within dplyr

#create new dataframe that stores total precipitation by month
g <- b %>% #specifies the b data frame as the reference data frame
  group_by(month) %>%
  summarise(precip_total = sum(PRCP))

#plot that new dataframe by month and year
ggplot(g, aes(month, precip_total)) +
  geom_line() +
  xlab("Year") + ylab("Total Rainfall (inches)")

#merge data at the incident level
merged_data <- left_join(a,b,by="date_m")
merged_data
# remove na in r - remove rows - na.omit function / option
a<-na.omit(a)

#Filtered the merged_data according to borough
merged_data_manhattan <- merged_data[merged_data$borough=="MANHATTAN", ] 

View(merged_data_manhattan)

#Removing columns with most NA values
merged_data_manhattan <- subset(merged_data_manhattan, select= -c(TAVG, TSUN))
View(merged_data_manhattan)


hist(merged_data_manhattan$incident_response_seconds_qy,seq(0, 40000, 1000.0), main='Incident Response Time')
boxplot(merged_data_manhattan$incident_response_seconds_qy, main='Incident Response Time')

#Removing Outliers
# Finding outliers with interquartile range
iqr <- IQR(merged_data_manhattan$incident_response_seconds_qy, na.rm=TRUE)
iqr
lowerInnerFence <- quantile(merged_data_manhattan$incident_response_seconds_qy, 0.25,na.rm=TRUE) - 1.5 * iqr
lowerInnerFence
upperInnerFence <- quantile(merged_data_manhattan$incident_response_seconds_qy, 0.75, na.rm=TRUE) + 1.5 * iqr
upperInnerFence

merged_data_manhattanNoOutliers <- merged_data_manhattan[merged_data_manhattan$incident_response_seconds_qy <= upperInnerFence,]
View(merged_data_manhattanNoOutliers)

merged_data_manhattanNoOutliers <- merged_data_manhattanNoOutliers[merged_data_manhattanNoOutliers$zipcode=="10019" | merged_data_manhattanNoOutliers$zipcode=="10023" | merged_data_manhattanNoOutliers$zipcode=="10024" | merged_data_manhattanNoOutliers$zipcode=="10025", ] #Zip code for central park

#Plotting the data to check for outliers
hist(merged_data_manhattanNoOutliers$incident_response_seconds_qy, prob=T, main='Incident Response Time')
boxplot(merged_data_manhattanNoOutliers$incident_response_seconds_qy, main='Incident Response Time')

#Modelling
#remove from EMS dataset
merged_data_manhattanNoOutliers <- subset(merged_data_manhattanNoOutliers, select= -c(cad_incident_id,borough, incident_dispatch_area, incident_dt, first_assign_dt, first_act_dt, first_on_scene_dt, first_to_hosp_dt, first_hosp_arrival_dt, incident_close_dt, incident_year ))
#remove from weather dataset
merged_data_manhattanNoOutliers <- subset(merged_data_manhattanNoOutliers, select= -c(dow, date_m, STATION, NAME, DATE))

#Remove null values
merged_data_manhattanNoOutliers <- na.omit(merged_data_manhattanNoOutliers)

#Removing more irrelevant features
merged_data_manhattanNoOutliers <- subset(merged_data_manhattanNoOutliers, select= -c(valid_dispatch_rspns_time_indc, valid_incident_rspns_time_indc, special_event_indicator, transfer_indicator, WT03, WT04, WT14, dispatch_response_seconds_qy, incident_travel_tm_seconds_qy,month.y))



merged_data_manhattanNoOutliers$held_indicator[merged_data_manhattanNoOutliers$held_indicator == 'Y'] <- 1
merged_data_manhattanNoOutliers$held_indicator[merged_data_manhattanNoOutliers$held_indicator == 'N'] <- 0

merged_data_manhattanNoOutliers$reopen_indicator[merged_data_manhattanNoOutliers$reopen_indicator == 'Y'] <- 1
merged_data_manhattanNoOutliers$reopen_indicator[merged_data_manhattanNoOutliers$reopen_indicator == 'N'] <- 0


merged_data_manhattanNoOutliers$standby_indicator[merged_data_manhattanNoOutliers$standby_indicator == 'Y'] <- 1
merged_data_manhattanNoOutliers$standby_indicator[merged_data_manhattanNoOutliers$standby_indicator == 'N'] <- 0

View(merged_data_manhattanNoOutliers)

sapply(merged_data_manhattanNoOutliers, class)

i <-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)

merged_data_manhattanNoOutliers[,i] <- apply(merged_data_manhattanNoOutliers[ , i], 2,            # Specify own function within apply
                                        function(x) as.numeric(as.character(x)))

sapply(merged_data_manhattanNoOutliers, class)



#Linear Regression
set.seed(2)
plot(merged_data_manhattanNoOutliers$SNOW,merged_data_manhattanNoOutliers$incident_response_seconds_qy, pch = 16, cex = 1.3, col = "red",  xlab = "SNOW", ylab = "INCIDENT RESPONSE TIME (IN SEC)")
plot(merged_data_manhattanNoOutliers$SNWD,merged_data_manhattanNoOutliers$incident_response_seconds_qy, pch = 16, cex = 1.3, col = "red", xlab = "Snow Depth", ylab = "INCIDENT RESPONSE TIME (IN SEC)")

train = sample(nrow(merged_data_manhattanNoOutliers), nrow(merged_data_manhattanNoOutliers)*0.7) # Sample 70% of the data points
lm.fit <- lm(merged_data_manhattanNoOutliers$incident_response_seconds_qy~., data = merged_data_manhattanNoOutliers, subset = train)
summary(lm.fit)
coef(lm.fit)
sqrt(mean((merged_data_manhattanNoOutliers$incident_response_seconds_qy-predict(lm.fit, merged_data_manhattanNoOutliers))[-train]^2))


#KNN
library(FNN)

set.seed(1)

train = sample(nrow(merged_data_manhattanNoOutliers), nrow(merged_data_manhattanNoOutliers)*0.7) # Sample 70% of the data points

train_x <- as.data.frame(merged_data_manhattanNoOutliers[train,])
test_x <- as.data.frame(merged_data_manhattanNoOutliers[-train,])

train_y <- as.data.frame(merged_data_manhattanNoOutliers[train,4])
test_y <- as.data.frame(merged_data_manhattanNoOutliers[-train,4])

sqrt(nrow(merged_data_manhattanNoOutliers))


k_rmse =c(1)
for (i in 1:50) {
  if (i%%2==0) next
  knn.fit <- knn.reg(train=train_x, test=test_x, y=train_y, k=i)
  k_rmse[i] = sqrt(mean((test_y - knn.fit$pred)^2))
}
sapply(merged_data_manhattanNoOutliers, class)
k_rmse
plot(k_rmse, main='RMSE of KNN for merged_data_manhattanNoOutliers', xlab='K value', ylab='RMSE')

# XGBOost
install.packages("xgboost")
require(xgboost)
library(xgboost)
library(caret)
set.seed(1)
indexes = createDataPartition(merged_data_manhattanNoOutliers$incident_response_seconds_qy, p = .85, list = F)

train = merged_data_manhattanNoOutliers[indexes, ]
test = merged_data_manhattanNoOutliers[-indexes, ]

train_x = data.matrix(train[, -4])
train_y = data.matrix(train[,4])

train_x
test_x = data.matrix(test[, -4])
test_y = data.matrix(test[, 4])

xgb_train = xgb.DMatrix(data = train_x, label = train_y)
xgb_test = xgb.DMatrix(data = test_x, label = test_y)

xgb_test = xgb.DMatrix(data = test_x, label = test_y)

xgbc = xgboost(data = xgb_train, max.depth = 2, nrounds = 50)
print(xgbc)

pred_y = predict(xgbc, xgb_test)

mse = mean((test_y - pred_y)^2)
mae = caret::MAE(test_y, pred_y)
rmse = caret::RMSE(test_y, pred_y)

cat("MSE: ", mse, "MAE: ", mae, " RMSE: ", rmse)

x = 1:length(test_y)
plot(x, test_y, col = "red", type = "l")
lines(x, pred_y, col = "blue", type = "l")
legend(x = 1, y = 50,  legend = c("original test_y", "predicted test_y"), 
       col = c("red", "blue"), box.lty = 1, cex = 0.5, lty = c(2, 1))





# Random Forest

library(randomForest)

set.seed(1)
train_indexes <- sample(nrow(merged_data_manhattanNoOutliers), 0.7 * nrow(merged_data_manhattanNoOutliers), replace = F)
train <- merged_data_manhattanNoOutliers[train_indexes,]
test_x <- merged_data_manhattanNoOutliers[-train_indexes,-4]
test_y <- merged_data_manhattanNoOutliers[-train_indexes,4]


rfmodel <- randomForest(incident_response_seconds_qy~ SNOW+ PRCP+ AWND, data=train, na.action = na.exclude)
rfmodel
importance(rfmodel)
plot(sqrt(rfmodel$mse), type = "l", main = "RMSE for Random Forest on merged_data_manhattanNoOutliers", xlab = "# of Trees", ylab = "RMSE")

pred <- predict(rfmodel, test_x)
pred
rmse_rf = sqrt(mean((test_y - pred)^2))
rmse_rf
x = 1:22574
plot(x, data.matrix(test_y), col = "red", type = "l")
lines(x, pred, col = "blue", type = "l")
legend(x = 1, y = 50,  legend = c("original test_y", "predicted test_y"), 
       col = c("red", "blue"), box.lty = 1, cex = 0.5, lty = c(2, 1))

#Analysis 
ggplot(aes(x=PRCP,y=incident_response_seconds_qy),data=merged_data_manhattanNoOutliers)+
  geom_point()
  


