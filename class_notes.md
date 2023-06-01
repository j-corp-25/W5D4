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
