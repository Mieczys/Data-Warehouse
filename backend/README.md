# Data Warehouse - BACKEND
Contact manager for a Marketing company, through which customer contacts for their campaigns will be managed.

## Local requirements to run the application
1. For the Data Warehouse REST API to work properly you must install the following on your computer:

    - [NodeJS] (https://nodejs.org/es/).

    - [XAMPP] (https://www.apachefriends.org/es/index.html).
        

2. Then, you must create the database `data_warehouse`, for which I recommend using a database manager such as `Admin-MySQL` included in XAMPP, once you are in the manager's web interface you need to import` create.sql`. To avoid errors, upload the file to the database gesture.

3. When having the database ready, we proceed to configure the environment variables (Take into account that within these environment variables we are also going to configure the administrator user, who will have access to the Endpoints that require their role), for which you must modify the file `.env` in the `backend` folder. Inside the `.env` you will detail your environment variables replacing the description with the variables corresponding to your local environment:
    * The data must match in the database and with your user.

```
U = User configured in the database that is usually root
P = Database password
S = Security key for tokens
U_ADMIN = Email of the administrator user (It is important that you write the email correctly and do not forget the @ symbol)
P_ADMIN = Administrator user password
```

4. Install the application dependencies, executing the `npm install` command through the console (Take into account that the console path must be located in the backend folder of the project).

```
> cd backend
... / backend> npm install

```

5. Run the application through the console, using the `npm start` command.

```
... / backend> npm start

```

6. Finally, go to the frontend folder and read the next README.md
