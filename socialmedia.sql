-- Create user profile table
CREATE TABLE user_profile( 
id INT NOT NULL AUTO_INCREMENT, 
user_name VARCHAR(50),
users_email VARCHAR(100),
first_name VARCHAR(30),
last_name VARCHAR(30),
date_of_birth VARCHAR(30),

PRIMARY KEY(id)
);

-- Create user post table
CREATE TABLE user_post(
profile_id INT NOT NULL AUTO_INCREMENT,
id INT,
post_content VARCHAR(100),
date_posted DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

PRIMARY KEY(profile_id),
FOREIGN KEY(id) REFERENCES user_profile(id) 
);

-- Create user post_comment table
CREATE TABLE post_comment(
post_id INT NOT NULL AUTO_INCREMENT,
id INT,
profile_id INT,
comment_text VARCHAR(100),
comment_created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

PRIMARY KEY(post_id), 
FOREIGN KEY(id) REFERENCES user_profile(id),
FOREIGN KEY(profile_id) REFERENCES user_post(profile_id)
);