# Professor Review Analysis (Work in Progress)

This repository contains a project aimed at analyzing professor reviews. The project is currently in progress, and the data for professors has been successfully collected and stored. We are now in the process of gathering individual student review data, which will be linked to the professors for further analysis.

## **Current Status**
- **Professors Data**: The table of professors is complete, and it includes their names, departments, total number of reviews, average rating, difficulty rating, and the percentage of students who would take the professor again.
- **Reviews Data**: We are in the process of collecting student reviews for each professor. These reviews will include ratings, difficulty ratings, feedback text, and thumbs-up/thumbs-down counts.

## **Project Structure**
The project is organized around two primary tables:

### **Professors Table**
Contains the following data for each professor:
- `professor_id`: Unique identifier for each professor.
- `name`: The name of the professor.
- `department`: The department the professor belongs to.
- `total_reviews`: Total number of reviews the professor has received.
- `avg_rating`: The average rating given to the professor.
- `would_take_again`: The percentage of students who would take the professor again.
- `difficulty`: The average difficulty rating of the professor’s courses.

### **Reviews Table**
This table will store individual reviews, linked to each professor by `professor_id`:
- `review_id`: Unique identifier for each review.
- `professor_id`: Foreign key linking to the `Professors` table.
- `date`: Date the review was submitted.
- `rating`: The rating given by the student (1-5).
- `difficulty`: The difficulty rating given by the student (1-5).
- `review_text`: The student's written feedback.
- `thumbs_up`: The number of thumbs-up votes the review received.
- `thumbs_down`: The number of thumbs-down votes the review received.
