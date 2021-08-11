# Bookmarker

As a user so that I can access a list of bookmarks
I want to see a list of bookmarks 

alias user="User"
alias server="Server"
alias client="Client"

user->client:"navigate to /bookmark page"
client->server:"get request to get list of bookmarks"
server->client:"successful message 200 OK"
client->user:"displays a list of bookmarks"

To view bookmarks, navigate to `localhost:3000/bookmarks`.

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:
Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` database'

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

