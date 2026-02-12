# Task S2.01. MySQL Data Structure

## 📌 Level 2

**Description**:\

This project implements a simplified relational database model of a
reduced YouTube-like platform. The objective is to design and validate a
relational schema that supports users, channels, videos, tags,
playlists, comments, subscriptions, and reactions while enforcing
referential integrity and core business rules.

### Exercise 1

- For each user, we store a unique identifier:
	- Email.
	- Password.
	- Username.
	- Date of birth.
	- Gender.
	- Country.
	- Postal code.

- A user publishes videos. For each video, we store a unique identifier:
	- A title.
	- A description.
	- A size.
	- The video file name.
	- Video duration.
	- A thumbnail.
	- The number of views.
	- The number of likes.
	- The number of dislikes.

- A video can have three different statuses: public, hidden, and private. A video can have multiple tags. A tag is identified by a unique identifier and a tag name. We need to store who published the video and the date and time of publication.

- A user can create a channel. A channel has a unique identifier:
	- A name.
	- A description.
	- A creation date.

- A user can subscribe to other users' channels. A user can like or dislike a video only once. A record must be kept of which users have liked or disliked a particular video, along with the date and time they did so.

- A user can create playlists with the videos they like. Each playlist has a unique identifier:
	- A name.
	- A creation date.
	- A status indicating whether it is public or private.

-A user can write comments on a particular video. Each comment is identified by a unique identifier:
	- The text of the comment.
	- The date and time it was posted.

- A user can like or dislike a comment. A record must be kept of which users have liked or disliked a comment, along with the date and time they did so.

## ✨ Features

✔ User management\
✔ Channel creation (one per user)\
✔ Video publishing system\
✔ Video tagging (many-to-many)\
✔ Playlists and saved videos\
✔ Comments on videos\
✔ Like/dislike system with uniqueness constraints\
✔ Subscription model\
✔ Referential integrity via foreign keys

## 🛠️ Technologies

- MySQL – Database engine
- MySQL Workbench – Database modeling and SQL execution
- Docker – Containerized MySQL environment for consistent local development
- Git & GitHub 

