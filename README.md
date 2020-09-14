# mtech-backend


## Instructions

clone the repo

Then, in the repo root folder run `npm install` to install the dependencies


You'll have to install the mysql DB seperately and configure it so that it can be accessed by a non root user :(
This was a tremendous pain point for me.

You may have to create a user root with password root.


Also, install DBBeaver:
`sudo snap install dbeaver-ce`

https://dbeaver.io/download/


Once you have installed mysql, execute the .sql file in the database folder.

That will create the database for you.


In the `server.js` file, there are entries for hostname, username and password.
These may change depending on which VM your DB is running on and what is the current username/password of the DB.

