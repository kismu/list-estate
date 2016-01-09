This Application is split into two part. The Api part which has been built using Phalcon PHP Framework. Phalcon interacts with the databases and passes the information to the front end in json. The api acts as a REST web service sending data in json format.

Inorder to install the api part, please install phalcon in the server. Please follow the steps provided in the Phalcon official website.
https://docs.phalconphp.com/en/latest/reference/install.html.

Once phalcon is installed, apache must be configured to point to the following folder.

./api/public

If the domain name for the api and the front end are going to be different, it is also necessary to enable cors in apache.

In order to load the  mysql database used by phalcon, import the sql script from ./api/dbScripts/schema.sql,
Configure the DB details for angular in the file ./api/config/config.ini

The front end of the application is developed using angular 2. 
In order to run the application, have apache point to ./front-end/public folder.

In order to be able to compile the angular 2 code, please install npm/node.
Then 

cd front-end 
npm install

to install the dependecies.

You can start the front-end application by runningt he command 

npm start

