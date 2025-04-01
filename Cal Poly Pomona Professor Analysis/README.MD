# **Professor Review Analysis** (Work in Progress)

This project is aimed at analyzing Cal Poly Pomona professor reviews from the website [Rate My Professors](https://www.ratemyprofessors.com/school/13914). The project is currently in progress, and the data for reviews has been successfully collected and stored. We are now in the process of gathering individual professor data, which will be linked to the reviews table for further analysis.

## **Current Status**
- **Professors Data**: The table of professors is complete and is fully cleaned. it includes their names, departments, total number of reviews, average rating, difficulty rating, and the percentage of students who would take the professor again.
- **Reviews Data**: The table of Reviews is complete and is in the process of data cleaning. These reviews include ratings, difficulty ratings, feedback text, date and thumbs-up/thumbs-down counts.

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
Data collection was done using two softwares. the first was [Instant Data Scrapper](https://chromewebstore.google.com/detail/instant-data-scraper/ofaokhiedipichpaobibbnahnkdoiiah?hl=en-US) for the professors table and RStudio for the reviews table. I used RSelenium and Tidyverse to gather and manipulate the data. Microsoft SQL will then be used for further analysis. [R code](https://github.com/Rodgeroger/SQL-Project-Repository-/blob/9b32eb1d5568bcf013fffaeacc023236119147b6/Cal%20Poly%20Pomona%20Professor%20Analysis/R%20Code) used was originally written by [Samer Hijjazi](https://github.com/ggSamoora) with minor modifications done by me. Original code is avaliable [here](https://github.com/ggSamoora/TutorialsBySamoora/blob/3cacfc7b902e8c81dd628789dc7a1100c6eb16c8/rate_my_professor_script.Rmd). His Youtube [video](https://youtu.be/GnpJujF9dBw?si=khNkvGcjxOh9AwGQ) on how to setup RSelenium and [video](https://youtu.be/mWUOdV2nMOk?si=KhwTLVmnJaj4qtVP) on his Ratemyprofessor project were a big help, along with his entire [Youtube channel](https://www.youtube.com/@SamerHijjazi/featured). For chromedriver troubles, ZeeCoding [video](https://www.youtube.com/watch?v=Bpd04FH9ycs&ab_channel=ZeeCoding) was a huge help

### **Data Cleaning**
Currently cleaning data from the [Reviews](https://github.com/Rodgeroger/SQL-Project-Repository-/blob/479ac2554bbfe4c3d76bcaa551b05ee1b9a0233b/Cal%20Poly%20Pomona%20Professor%20Analysis/ratemyprofessors_Reviews.csv) table using Pandas in Jupyter Notebook. Finished with data cleaning of [Professors](https://github.com/Rodgeroger/SQL-Project-Repository-/blob/09fd327b7a32aae32cde021803099483e70710af/Cal%20Poly%20Pomona%20Professor%20Analysis/ratemyprofessors_Professors.csv) table via [Pandas](https://github.com/Rodgeroger/SQL-Project-Repository-/blob/bb112bff83e3e0a075c95f5ad3c0fd4a1d109006/Cal%20Poly%20Pomona%20Professor%20Analysis/RatemyProfessor.ipynb).
