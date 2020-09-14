# mtech-backend


## Instructions

1. Clone the repo.
2. Then, in the repo root folder run `npm install` to install the dependencies.
3. Also, install DBBeaver: `sudo snap install dbeaver-ce`    https://dbeaver.io/download/


You'll have to install the mysql DB seperately and configure it so that it can be accessed by a non root user :(
This was a tremendous pain point for me.

You may have to create a user root with password root.


Once you have installed mysql, execute the dump.sql file in the database folder.

That will create the database for you.


In the `server.js` file, there are entries for hostname, username and password.
These may change depending on which VM your DB is running on and what is the current username/password of the DB.


### To run the server:
1. Ensure that the mysql daemon process is up and running
2. Ensure that the database has been created.
3. Ensure that the DB hostname, username and password match those in the server.js file
4. Then in the app_server folder, execute `node server.js`. This will start the server.