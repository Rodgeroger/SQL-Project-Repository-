# Professor Review Analysis (Work in Progress)

This repository contains a project aimed at analyzing professor reviews. The project is currently in progress, and the data for professors has been successfully collected and stored. We are now in the process of gathering individual student review data, which will be linked to the professors for further analysis.

## **Current Status**
- **Professors Data**: The table of professors is complete, and it includes their names, departments, total number of reviews, average rating, difficulty rating, and the percentage of students who would take the professor again.
- **Reviews Data**: In the process of data cleaning the student reviews for each professor. These reviews include ratings, difficulty ratings, feedback text, date and thumbs-up/thumbs-down counts.

## **Project Structure**
The project is organized around two primary tables:

### **Professors Table**
This table will store the following data for each professor:
- `Professor_ID`: Unique identifier for each professor.
- `Professor_Name`: Full name of the Professor.
- `Department`: The department the professor belongs to
- `Total_Reviews`: Total number of reviews the professor has received (1-5).
- `Avg_Rating`: The average quality rating given to the professor (1-5).
- `Would_Take_Again`: The percentage of students who would take the professor again.
- `Avg_Difficulty`: The average difficulty rating of the professor’s courses (1-5).

### **Reviews Table**
This table stores individual reviews, linked to each professor by the foreign key, `Professor_ID` :
- `Professor_ID`: Unique identifier for each professor.
- `Professor_Name`: Full name of the Professor.
- `Department`: The department the professor belongs to
- `Quality`: The quality rating given by the student (1-5).
- `Difficulty`: The difficulty rating given by the student (1-5).
- `Comment`: The student's written feedback.
- `Thumbs_Up`: The number of thumbs-up votes the review received.
- `Thumbs_Down`: The number of thumbs-down votes the review received.
- `Review_Date`: The date the review was posted on.

### *Data Collection*
Data collection was done using two softwares. the first was [Instant Data Scrapper](https://chromewebstore.google.com/detail/instant-data-scraper/ofaokhiedipichpaobibbnahnkdoiiah?hl=en-US) and RStudio. I used RSelenium to Gather the Data of the Professors URLs to then have the R code gather the reviews from each professor. Code for RSelenium provided. CODE USED WRITTEN BY [Samer Hijjazi](https://github.com/ggSamoora)

