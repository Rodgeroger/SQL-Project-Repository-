# **Professor Review Analysis**

This project is aimed at analyzing Cal Poly Pomona professor reviews from the website [Rate My Professors](https://www.ratemyprofessors.com/school/13914). The project is currently in progress, and the data for reviews has been successfully collected and stored. We are now in the process of gathering individual professor data, which will be linked to the reviews table for further analysis.

## **Project Structure**
The project is organized around two primary tables:

### **Professors Table**
This table will store the following data for each professor:
- `Professor_ID`: Unique identifier for each professor.
- `Professor_Name`: Full name of the Professor.
- `Department`: The department the professor belongs to
- `Total_Reviews`: Total number of reviews the professor has received.
- `Avg_Rating`: The average quality rating given to the professor (1.0-5.0).
- `Would_Take_Again`: The percentage of students who would take the professor again.
- `Avg_Difficulty`: The average difficulty rating of the professor’s courses (1.0-5.0).

### **Reviews Table**
This table stores individual reviews, linked to each professor by the foreign key, `Professor_ID` :
- `Professor_ID`: Unique identifier for each professor.
- `Professor_Name`: Full name of the Professor.
- `Class_Name`: Class name for class student is reviewing
- `Department`: The department the professor belongs to
- `Quality`: The quality rating given by the student (1-5).
- `Difficulty`: The difficulty rating given by the student (1-5).
- `Comment`: The student's written feedback.
- `Thumbs_Up`: The number of thumbs-up votes the review received.
- `Thumbs_Down`: The number of thumbs-down votes the review received.
- `Review_Date`: The date the review was posted on.

### **Tools Used**
- RStudio
  - RSelenium
  - Tidyverse
  - dplyr
- Microsoft SQL Server
- Excel
- Instant Data Scrapper
- Jupyter Notebook 
  - Pandas

### **Data Collection**
Data collection was done using two softwares. the first was [Instant Data Scrapper](https://chromewebstore.google.com/detail/instant-data-scraper/ofaokhiedipichpaobibbnahnkdoiiah?hl=en-US) for the professors table and RStudio for the reviews table. I used RSelenium and Tidyverse to gather and manipulate the data. Microsoft SQL will then be used for further analysis. R code used was originally written by [Samer Hijjazi](https://github.com/ggSamoora) with minor modifications done by me. Original code is avaliable [here](https://github.com/ggSamoora/TutorialsBySamoora/blob/3cacfc7b902e8c81dd628789dc7a1100c6eb16c8/rate_my_professor_script.Rmd). His Youtube [video](https://youtu.be/GnpJujF9dBw?si=khNkvGcjxOh9AwGQ) on how to setup RSelenium and [video](https://youtu.be/mWUOdV2nMOk?si=KhwTLVmnJaj4qtVP) on his Ratemyprofessor project were a big help, along with his entire [Youtube channel](https://www.youtube.com/@SamerHijjazi/featured). For chromedriver troubles, ZeeCoding [video](https://www.youtube.com/watch?v=Bpd04FH9ycs&ab_channel=ZeeCoding) was a huge help

### **Data Cleaning**
Data cleaning done in collaboration with [Ivan Mu](https://github.com/ivanmu-1)
