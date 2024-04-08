CREATE DATABASE byteme_db;

USE byteme_db;

create table person
(
person_id  INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
gender ENUM ("male", "female") NOT NULL,
age INT NOT NULL,
email VARCHAR(50) NOT NULL
);

create table skills
(
skills_id  INT AUTO_INCREMENT PRIMARY KEY,
life_support_training BOOLEAN DEFAULT FALSE,
homework_help BOOLEAN DEFAULT FALSE,
mindfulness_sessions BOOLEAN DEFAULT FALSE,
journalling BOOLEAN DEFAULT FALSE,
DIY_decorating BOOLEAN DEFAULT FALSE,
cleaning_tidying BOOLEAN DEFAULT FALSE,
playtime_supervision BOOLEAN DEFAULT FALSE,
online_safety_training BOOLEAN DEFAULT FALSE,
language_support BOOLEAN DEFAULT FALSE,
computer_skills BOOLEAN DEFAULT FALSE,
meal_planning BOOLEAN DEFAULT FALSE,
health_advice BOOLEAN DEFAULT FALSE,
personal_training BOOLEAN DEFAULT FALSE
);


create table volunteer_run_events
(
event_id INT AUTO_INCREMENT PRIMARY KEY,
nature_education BOOLEAN DEFAULT FALSE,
caring_for_cats BOOLEAN DEFAULT FALSE,
upcycling_workshop BOOLEAN DEFAULT FALSE,
art_club BOOLEAN DEFAULT FALSE,
garden_yoga BOOLEAN DEFAULT FALSE,
adventure_day BOOLEAN DEFAULT FALSE,
clean_green_space BOOLEAN DEFAULT FALSE,
healthy_eating BOOLEAN DEFAULT FALSE,
love_science BOOLEAN DEFAULT FALSE,
group_video_exercise BOOLEAN DEFAULT FALSE,
child_health BOOLEAN DEFAULT FALSE,
team_toothbrush BOOLEAN DEFAULT FALSE,
life_support_training BOOLEAN DEFAULT FALSE,
online_safety BOOLEAN DEFAULT FALSE
);


create table volunteer
(
volunteer_id INT AUTO_INCREMENT PRIMARY KEY,
person_id INT, FOREIGN KEY (person_id) REFERENCES person(person_id),
skills_id INT, FOREIGN KEY (skills_id) REFERENCES skills(skills_id),
availability_status ENUM ("Available for bookings", "Not currently available") NOT NULL
);


create table parent
(
parent_id INT AUTO_INCREMENT PRIMARY KEY,
person_id INT, FOREIGN KEY (person_id) REFERENCES person(person_id)
);


create table child
(
child_id INT AUTO_INCREMENT PRIMARY KEY,
person_id INT, FOREIGN KEY (person_id) REFERENCES person(person_id),
parent_id INT, FOREIGN KEY (parent_id) REFERENCES parent(parent_id)
);


create table sessions
(
session_id INT AUTO_INCREMENT PRIMARY KEY,
volunteer_id INT, FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id),
parent_id INT, FOREIGN KEY (parent_id) REFERENCES parent(parent_id),
child_id INT, FOREIGN KEY (child_id) REFERENCES child(child_id),
skills_id INT, FOREIGN KEY (skills_id) REFERENCES skills(skills_id),
start_time DATETIME,
end_time DATETIME,
session_status ENUM("Available", "Booked")
);


create table event_booking
(
event_id INT AUTO_INCREMENT PRIMARY KEY,
volunteer_id INT, FOREIGN KEY (volunteer_id) REFERENCES volunteer(volunteer_id),
parent_id INT, FOREIGN KEY (parent_id) REFERENCES parent(parent_id),
child_id INT, FOREIGN KEY (child_id) REFERENCES child(child_id),
theme_id INT, FOREIGN KEY (theme_id) REFERENCES theme(theme_id),
start_time DATETIME,
end_time DATETIME,
is_webinar BOOLEAN DEFAULT FALSE NOT NULL,
event_status_objective ENUM("Places available", "Fully booked"),
event_status_subjective ENUM("Booked", "Cancelled booking", "Attended", "Did not attend")
);


create table theme
(
theme_id INT AUTO_INCREMENT PRIMARY KEY,
education BOOLEAN DEFAULT FALSE,
health_wellness BOOLEAN DEFAULT FALSE,
community BOOLEAN DEFAULT FALSE,
mentorship BOOLEAN DEFAULT FALSE
);



create table mood
(
mood_id INT AUTO_INCREMENT PRIMARY KEY,
happy BOOLEAN DEFAULT FALSE,
sad BOOLEAN DEFAULT FALSE,
angry BOOLEAN DEFAULT FALSE,
worried BOOLEAN DEFAULT FALSE
);