# Outline

## Why was this topic selected? 
In addition to general interest from all group members on the topic of travel, we chose this topic because it allowed for multiple clear, binary questions to explore with our data analysis. As a group, we believe we will be able to create an accurate model to predict airline delays given the datasets we have found. 

## Data sources
We chose to narrow our data set to help focus the information our model would "learn" in the hopes it would increase accuracy of the model. Our data was narrowed to: 
- One specific airport: Hartsfield-Jackson Atlanta International Airport (ATL)
- Seven airlines:
    - "Full Service" airlines: American Airlines, Delta Airlines, and United Airlines
    - "Low Cost" airlines: JetBlue and Southwest
    - "Ultra-Low Cost" airlines: Frontier and Spirit
- The year 2022 only 

Our data was all pulled from the Bureau of Transportation Statistics website: https://www.transtats.bts.gov/ONTIME/Departures.aspx

## The question we hope to answer
Given user-provided variables, will the flight be delayed?
- Airport from
- Day of week
- Time of day [morning/afternoon/evening]
- Airline

## Additional analysis questions we hope to answer
1. Is there one day of the week that is most likely to have delays? 
2. Are flights more likely to be delayed in the afternoon/evening? 
3. Does the size of the airline affect delays?
    * Fleet size
    * Passenger volume
    * Number of destinations
    * Number of daily departures
4. Do “low cost” airlines have more delays than the “full service” airlines?
5. Rate of holiday delay vs. normal day delays

## Machine learning model
### Description of preliminary data pre-processing
First, we applied the .describe() method to the DataFrame to see a description and the distribution of the data. Then we checked to see if there were any null values by applying the .isnull().sum() method. By concatenating the .isnull() and .sum() methods we can see a total number of null values in the different columns. Through this we concluded that there were 246 tail number values that were null; therefore, we dropped those values. There are over 131,000 rows of data so there was not a concern of not having enough data if we drop less than 300 rows. We then checked the different types of data within the dataset by applying .dtypes.

### Description of preliminary feature engineering and selection, including decision-making process
To select our features, we first made a copy of the DataFrame so everything we did afterwards would not affect the original dataset. We then dropped the following columns: actual_departure_time, departure_delay, wheels_off, taxi_out_time, delay_carrier, delay_weather, delay_national_aviation_system, delay_security, delay_late_aircraft_arrival, and is_delayed. We decided to drop actual_departure_time, wheels_off, and taxi_out_time because these columns are unneeded. We dropped the departure_delay column because that gives the total amount of delay time. We dropped the delay_carrier, delay_weather, delay_national_aviation_system, delay_security, and delay_late_aircraft_arrival columns because they are all reasons for the delay. Finally, we dropped is_delayed because that is our binary, target column. We then used pd.get_dummies() since there were object types of data which we saw in our data pre-processing stage.

We created our target column through sql. If delay_carrier, delay_weather, delay_national_aviation_system, delay_security, and delay_late_aircraft_arrival had a value of 0 then that row was given a 0 for not delayed. If the value was greater than 0 then that row was given a 1 for delayed.

### Description of how data was split into training and testing sets
The data was then split into training and testing sets through the sklearn.model_selection’s train_test_split method. The X variable represents our features, and the y variable represents our target. We chose to set the random_state parameter to 1 so every time the code is ran, we get the same outcome. Setting the stratify parameter to y ensures that there is a same proportion of 0’s and 1’s as the sample produced to provided.

### Explanation of model choice, including limitations and benefits

We chose to do a logistic regression model since our dataset has a clear binary category, whether a flight is delayed or not delayed. Additionally, the logistic regression model is easy to implement and interpret so this model works best for project purposes. However, this model is sensitive to outliers so if there are many outliers then the results could be incorrect.

### Explanation of changes in model choice from Segment 2, if applicable

There are no changes in model choice from Segment 2.

### Description of how we have trained the model so far

So far, we have trained our model through the default Logistical Regression solver, ‘lbfgs’. While trying to increase our accuracy score, we tried training out model with the solver ‘saga’. There was a slight decrease of 0.01 in our accuracy score when using the ‘saga’ solver, so we decided to stick to the ‘lbfgs’ solver. 

### Description of what training still needs to take place

Due to the class imbalance, some experimental training that could take place would be oversampling, under sampling, or combination sampling the data. 

### Description of current accuracy score

The current accuracy score is 81.43%, meaning that we had 81.43% correct predictions that a flight is or is not delayed.

## Communication process
Our team utilized a private Slack channel and Zoom conferences to communicate about the project. We created shared google docs to track all of the components of the project and track deliverables. 

Team roles were delegated based on team members' most and least desired role with the understanding that all team members would be available to collaborate and assist as needed in each role. To streamline GitHub, each part of the project has an assigned "point person" responsible for confirming all code in the branches is production ready, then merging the code into the main branch. 

## Links
### Presentation outline
https://docs.google.com/presentation/d/17kjivXwMFXJQgs7dRzl26Tbh7RtcLRTaWaJacL4DfT4/
### Dashboard outline
https://docs.google.com/presentation/d/1tDWOYBtqa2k2M_G1YcHxqGQKm7RalJ8VYYliaLc1iPg/
