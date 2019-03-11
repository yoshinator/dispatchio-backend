# README

## Dispatchio 
Dispatchio is an application that allows businesses with a mobile workforce to dispatch their team members and get updates of the jobs they're doing. Built using React and Redux on the front end and Ruby on Rails on the backend. It uses JSON Web Tokens for authorization. The app has two views, one for managers and owners that presents a dashboard and a view for employees that only shows the jobs they are assigned to.



JSON API BACKEND TO [DISPATCHIO.io](http://dispatchio.io) built using Ruby 2.3.3 FRONT END LOCATED at [https://github.com/yoshinator/dispatchio-front-end](https://github.com/yoshinator/dispatchio-front-end)

* run Rails db:create && rails db:migrate && rails db:seed to get started with some test data. 

* run rails db:routes to see available routes. 

* run rails s to start the server. 

* endpoint document_root/api/v1/endpoint

## CURRENT USE CASES 

### Owner
* A user will be able to create an account
* A user will be able to create a company
* A user will be able to add employees
* A user will be able to change employee type
* A user will be able to create jobs
* A user will be able to assign a team to a job
* A user will be able to edit a job
* A user will be able to see the status of a job
* A user will be able to see the location of the team of any job that has started
* A user will be able to assign employees to a team 
* A user will be able to add a location to a company upon first login
* A user will be able to search for customer
* A user will be able to add a new customer
* A user will be able to edit a customer
* A user will be able to delete a customer

### Manager
* A user will be able to create an account
* A user will be able to add employees
* A user will be able to change employee type
* A user will be able to create jobs
* A user will be able to assign a team to a job
* A user will be able to edit a job
* A user will be able to see the status of a job
* A user will be able to see the location of the team of any job that has started
* A user will be able to assign employees to a team 
* A user will be able to search for customer
* A user will be able to add a new customer
* A user will be able to edit a customer

### Employee
* A user will be able to create an account
* A user will be able to see the jobs they are assigned to
* A user will be able to see the teams they are assigned to
* A user will be able to update the status of jobs they are assigned to

### Features needing implementation on front that are implemented in this api
* A user will be able to assign employees to a location
* A user will be able to edit employees
* A user will be able to more locations to a company
* A user will be able to reset his password 
* A user will be able to update his phone number 
* A user will be able update his email 

### Featurre request
* A user will be able add photos of the job
* A user will be able to see photos of the job


# dispatchio-backend
