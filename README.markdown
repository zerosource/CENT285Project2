# Honolulu Community College 
### Project 2 
This is a documentation for project 2 for CENT 285 at Honolulu
Community College 
__First Ruby on Rails Application__ by _Alan H_

Database: `cent285p2`
username: `alan`
password: `alan`

    - `CREATE ROLE alan LOGIN;`
    - `CREATE DATABASE cent285p2 OWNER alan;`

Install postgresql-contrib-8.4
    - `sudo apt-get install postgresql-contrib-8.4`

Inside sqlfile folder...
Load SQL files into database: “createTables.sql”
`psql -U alan -W cent285p2 < createTables.sql`
Insert pgcrypto.sql into database.
`\i /usr/share/postgresql/8.4/contrib/pgcrypto.sql`
Load SQL files into database: “addAuthenticationFuncs.sql”, then “loadInitData.sql”
`psql -U alan -W cent285p2 < addAuthenticationFuncs.sql`
`psql -U alan -W cent285p2 < loadInitData.sql`

createTables.sql - handles creation of all tables and the user_suggestion_view
addAuthenticationFuncs.sql - adds functions to aid in authentication.
loadInitData.sql - adds user records

Important files...
`app/controllers/
	-application_controller.rb
	-pages_controller.rb
	-users_controller.rb
	-user_suggestions_controller.rb
app/models/
	-suggestion.rb
	-user.rb
	-user_suggestion.rb
app/views/layouts
	-application.html.erb
app/views/pages/
	-continue.html.erb
	-login.html.erb
	-logout.html.erb
app/views/users/
	-chooseUser.html.erb
	-edit.html.erb
	-index.html.erb
	-new.html.erb
app/views/user_suggestions/
	-chooseSuggestion.html.erb
	-edit.html.erb
	-index.html.erb
	-new.html.erb
config/
	-database.yml
	-routes.rb`

Start rails server:
`rails server`

Go to http://localhost:3000/

Admin account:
username=`admin1`
password=`apassword`

User account:
username=`user1`
password=`upassword`

Guest account:
username=`guest`
password=`guest`

Everything worked correctly.
