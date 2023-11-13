# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

DROP TABLE IF EXISTS skills;
CREATE TABLE skills (
    skills_id int not null,
    skills_name varchar(255) not null,
    skills_description varchar(255)not null,
    skills_tag varchar(255) not null,
    skills_url varchar(255), 
    skills_time_committment int,
    primary key (skills_id )
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_committment) VALUES
    (1, 'kick boxing', 'visualize this!', 'Skill 1', 'kickboxing.com', 10),
    (2, 'python coding', 'writing python programs', 'Skill 2', 'pythoncoding.com', 20),
    (3, 'poker cheater', 'dont get caught!', 'Skill 3', 'pokercheater.com', 15),
    (4, 'soccer player', 'passing and shooting!', 'Skill 4', 'soccerplayer.com', 30),
    (5, 'cooking', 'allow him to cook!', 'Skill 5', 'cooking.com', 25),
    (6, 'gaming', 'esports player!', 'Skill 6', 'gaming.com', 40),
    (7, 'scamming', 'scammer get scammed', 'Skill 7', 'scamming.com', 5),
    (8, 'running', 'marathon runner', 'Skill 8', 'running.com', 35);


SELECT * FROM skills

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

DROP TABLE IF EXISTS people
CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(255),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(256),
    people_linkedin_url varchar(256),
    people_headshot_url varchar(256),
    people_discord_handle varchar(256),
    people_brief_bio varchar(255),
    people_date_joined date default(current_date) NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) values 
 ('Nguyen', 'Person 1', 'nguyen@example.com', 'https://www.linkedin.com/in/nguyen', 'https://example.com/nguyen.jpg', 'nguyen#1234', 'I am Person 1. Nice to meet you!', '2023-01-01'),
  ('John', 'Person 2', 'john@example.com', 'https://www.linkedin.com/in/john', 'https://example.com/john.jpg', 'john#5678', 'I am Person 2. Hello!', '2023-02-15'),
  ('Smith', 'Person 3', 'smith@example.com', 'https://www.linkedin.com/in/smith', 'https://example.com/smith.jpg', 'smith#9876', 'I am Person 3. Greetings!', '2023-03-20'),
  ('Brady', 'Person 4', 'brady@example.com', 'https://www.linkedin.com/in/brady', 'https://example.com/brady.jpg', 'brady#6543', 'I am Person 4. Welcome!', '2023-04-10'),
  ('Agholor', 'Person 5', 'agholor@example.com', 'https://www.linkedin.com/in/agholor', 'https://example.com/agholor.jpg', 'agholor#3210', 'I am Person 5. How are you?', '2023-05-05'),
  ('Badguy', 'Person 6', 'badguy@example.com', 'https://www.linkedin.com/in/badguy', 'https://example.com/badguy.jpg', 'badguy#1122', 'I am Person 6. Good day!', '2023-06-18'),
  ('Mahomes', 'Person 7', 'mahomes@example.com', 'https://www.linkedin.com/in/mahomes', 'https://example.com/mahomes.jpg', 'mahomes#3344', 'I am Person 7. Nice to see you!', '2023-07-02'),
  ('Purdy', 'Person 8', 'purdy@example.com', 'https://www.linkedin.com/in/purdy', 'https://example.com/purdy.jpg', 'purdy#5566', 'I am Person 8. Hows it going?', '2023-08-23'),
  ('Karin', 'Person 9', 'karin@example.com', 'https://www.linkedin.com/in/karin', 'https://example.com/karin.jpg', 'karin#7788', 'I am Person 9. Greetings!', '2023-09-15'),
  ('Beckham', 'Person 10', 'beckham@example.com', 'https://www.linkedin.com/in/beckham', 'https://example.com/beckham.jpg', 'beckham#9900', 'I am Person 10. Welcome!', '2023-10-05');

SELECT * FROM people

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

DROP TABLE IF EXISTS peopleskills;
CREATE TABLE peopleskills (
    id int not null auto_increment,
    skills_id int not null,
    people_id int not null,
    date_acquired date default (current_date),
    primary key (id),
    foreign key (skills_id) references skills (skills_id),
    foreign key (people_id) references people (people_id),
    unique (skills_id, people_id)

);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
INSERT into peopleskills (skills_id, people_id, date_acquired ) values
  (1, 1, '2023-01-15'), (3, 1, '2023-01-15'), (6, 1, '2023-01-15'),
  (3, 2, '2023-02-28'), (4, 2, '2023-02-28'), (5, 2, '2023-02-28'),
  (1, 3, '2023-03-10'), (5, 3, '2023-03-10'),
  (3, 5, '2023-05-20'), (6, 5, '2023-05-20'),
  (2, 6, '2023-06-30'), (3, 6, '2023-06-30'), (4, 6, '2023-06-30'),
  (3, 7, '2023-07-15'), (5, 7, '2023-07-15'), (6, 7, '2023-07-15'),
  (1, 8, '2023-08-05'), (3, 8, '2023-08-05'), (5, 8, '2023-08-05'), (6, 8, '2023-08-05'),
  (2, 9, '2023-09-18'), (5, 9, '2023-09-18'), (6, 9, '2023-09-18'),
  (1, 10, '2023-10-10'), (4, 10, '2023-10-10'), (5, 10, '2023-10-10');
   



SELECT * FROM peopleskills

SELECT 
    people_first_name,
    people_last_name,
    skills_name,
    skills_tag
FROM
    peopleskills a
    inner join people b on (a.people_id=b.people_id)
    inner join skills c on (a.skills_id=c.skills_id)
ORDER BY
    skills_name,
    people_last_name
;

SELECT 
    people_last_name
FROM
    people a
        LEFT JOIN peopleskills b on(a.people_id=b.people_id)
WHERE
b.people_id is NULL
;

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    roles_id int,
    roles_name varchar(255),
    roles_sort_priority int,
    PRIMARY KEY (roles_id)
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles ( roles_id, roles_name, roles_sort_priority) values
(1, 'Designer', 10), (2, 'Developer', 20), (3, 'Recruit', 30), (4, 'Team Lead', 40), (5, 'Boss', 50), (6, 'Mentor', 60);

SELECT * FROM roles

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment


CREATE TABLE peopleroles(
    id int auto_increment NOT NULL,
    people_id int NOT NULL,
    roles_id int NOT NULL,
    date_assigned date default(current_date) NOT NULL,
    PRIMARY KEY (id)
)

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles(people_id, roles_id) values 
(1, 2), (2, 5), (2, 6), (3, 2), 
(3,4), (4,3), (5,3), (6, 2), 
(6,1), (7, 1), (8, 1), (8,4), 
(9,2), (10, 2), (10,1);

SELECT * FROM peopleroles

