 DROP TABLE IF EXISTS applications;
-- Creates a new table called "applications".
-- Each row in this table is one job you've applied to.
CREATE TABLE applications (
-- Unique ID for each application. SERIAL auto-numbers it (1, 2, 3...),
-- and PRIMARY KEY means no two rows can ever share the same ID.
id SERIAL PRIMARY KEY,
-- The company name. Short text, and NOT NULL makes it required.
company VARCHAR(255) NOT NULL,
-- The role you applied for. Also short text and required.
job_title VARCHAR(255) NOT NULL,
 -- Link to the job posting. TEXT because URLs can get very long.
posting_url TEXT,
-- The day you applied. DATE stores just the date, no time.
date_applied DATE,
-- Where you are in the process. Starts as 'Applied' automatically
-- if you don't set it. Later: Interviewing, Offer, Rejected, Ghosted.
status VARCHAR(20) DEFAULT 'Applied',
-- Stored as text (e.g. '$60k - $75k') since postings format it differently.
salary_range  VARCHAR(100),
-- City, 'Remote', or 'Hybrid'.
location VARCHAR(255),
-- Recruiter or hiring manager's name, if you have one.
contact_name VARCHAR(255),
-- Your own notes. TEXT so there's no length limit.
notes TEXT,
-- The full job posting text.
job_description TEXT,
-- When this row was added. NOW() fills in the current date and time
-- automatically, so you never have to set it yourself.
created_at TIMESTAMP DEFAULT NOW()
);