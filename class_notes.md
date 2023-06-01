Rails is MVC

Model view controller

This is able to do fullstack framework


All our ruby code is living in model.


The M in MVC is ACTIVE_RECORD

it helps use represent moderls and their data

represent associaitions between ata
validate models before they get prresisted to the database

it performes databse perations (CRUD) in oop fashion

We use migrations to create tables

We create a migration to change how our schema looks like.


commmon migration methods

add_column

remove_column

you can change the current migration, we can do a roll

we run into problems when we run the migration and it goes to the server.

Then we try to edit the migration and that causes issues.


We can rollback on the test since we are not deploying into a server. No bad outcome basically for now.


Down status means the migration has not been updated to the table
UP status means that it has been update in the schema file


MIGRATION DEMO

rails new [name_of_project] --database=postgresql -G

Folders inside the project

The main focus is inside the APP folder

and inside the folder we focus on
VIEWS,MODELS AND CONTROLLER

We create migrations in DB folder

we also have a seeds folder
which is what we use to feed into database

The gem file is already created for us

![Snips](/classsnips/Screenshot%202023-06-01%20at%2010.34.32%20AM.png)



![Snips](/classsnips/Screenshot%202023-06-01%20at%2011.11.15%20AM.png)





## Models

Its the central component of the MVC patterns
Its a class that represent and idrecrtly mabages the data logic and rules afor a table

it normally contains : valifdations association and cistom  methoddss

it inherot form applicoationreconrd which in utrn inherits from acitve record

Common Calidations

validates :some_columns, presence: true
    similar to null:false

commands
rails g model Like








## Association

start with `belongs to`

write the corresponding `has_many`

#Starter commands
#rails new BlueBird --database=postgresql#--minimal
#rm -rf .git #removes that it is a git repository, could also put -G it command above
#rails db:create #must be in main file
#psql BlueBird_development #opens pry
#=pry \d #shows reations
#rails generate migration CreateUsers #makes a migrate folder with a table
#rails db:migrate
#rails db:migrate:status #if status is up, that migration has been to applied to table
#rails g migration AddAgeAndPAToUsers
#rails g model Chirp
#rails c
#rails g model Like #generator command to make a model and a migrate file
#rails db:seed #will do whatever is in seed
#bundle exec rails dbconsole #this will open a postgresql lobby where you can write sql
