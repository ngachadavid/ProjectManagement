# Phase 3 Project Guidelines

# Learning Goals
Build a web basic API with Sinatra and Active Record to support a React frontend

# Introduction
The focus of this project is building a Sinatra API backend that uses Active Record to access and persist data in a database, which will be used by a separate React frontend that interacts with the database via the API.

# Requirements
For this project, you must:

Use Active Record to interact with a database.
Have at least two models with a one-to-many relationship.
At a minimum, set up the following API routes in Sinatra:
create and read actions for both models
full CRUD capability for one of the models
Build a separate React frontend application that interacts with the API to perform CRUD actions.
Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.
For example, build a project management application with a React frontend interface and a Sinatra backend API, where a user can:

Create a new project
Read a list of all projects
Update an individual project
Delete a project

# Getting Started
# Backend Setup

Install it and run:

bundle install

if you would like to use seed data
rake db:seed

create migrations with activerecord
$rake db:migrate

start server
$ bundle exec rake server

This will run your server on port http://localhost:9292.

# Front-end Project Management Interface
You can use this API in conjunction with my front-end project management app https://github.com/ngachadavid/Project-Client
Fetch Example
Your React app should make fetch requests to your Sinatra backend! Here's an example:

fetch("http://localhost:9292/projects")
  .then((r) => r.json())
  .then((data) => console.log(data));

# Project Tips
This project is intended to focus more on the backend than the frontend, so try and keep the React side of things relatively simple. Focus on working with Active Record and performing CRUD actions.

Resources
  create-react-app
  dbdiagram.io
  Postman

Technologies Used in API
  Ruby
  ActiveRecord
  SQLite3
  Rack