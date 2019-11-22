# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: model => backend; view => frontend; controller => connects the model and view

  Researched answer: 
  model => holds the data and business logic; maintains the data/database of an app
  view => user interface; displays the data from the model and enables a user to modify the data
  controller => request handler; the typical mode of action is a user interacts with a view, a URL request in then raised, the controller handles this request by sending the view the appropiate data from the model


2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the about route in the file config/routes.rb
  ```
  GET '/about' => 'statics#about'
  ```

  Step 2: Create the StaticsController in the file app/controllers
  ```
  class StaticsController < ApplicationController
    def about
      render about.html.erb
    end
  end
  ```

  Step 3: Create the View in the file about.html.erb
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.

/users/       method="GET"     # :controller => 'users', :action => 'index'
--called when the /users/ page loads 
--goes to the UsersController and runs the def index...end method
--uses GET method which is analogous to READ

/users/1      method="GET"     # :controller => 'users', :action => 'show'
--called when the /users/1 page loads where the 1 most likely referring to user1 
--goes to the UsersController and runs the def show...end method
--uses GET method which is analogous to READ

/users/new    method="GET"     # :controller => 'users', :action => 'new'
--called when the /users/new page loads and is the page where a new user can be created 
--goes to the UsersController and runs the def new...end method
--uses GET method which is analogous to READ

/users/       method="POST"    # :controller => 'users', :action => 'create'
--called after a user is created and loads the /users/ page
--goes to the UsersController and runs the def create...end method
--uses POST method which is analogous to CREATE

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
--called when the /users/1/edit page loads and is the page where a user's data can be edited 
--goes to the UsersController and runs the def edit...end method
--uses GET method which is analogous to READ

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
--called after a user is updated from the /users/1/edit page
--goes to the UsersController and runs the def update...end method
--uses PUT method which is analogous to PATCH/UPDATE

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
--called after a user is deleted from the /users/1 page
--goes to the UsersController and runs the def destroy...end method
--uses DELETE method


3b. Which of the above routes must always be passed params and why?

/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

Each of the methods need to know which user is being either (1) shown, (2) edited, (3) updated, (4) destroyed; the /1 in the route might be replaced with a id param like this /users/:id

4. What is the public folder used for in Rails?

  Your answer: holds files that can be accessed in other places

  Researched answer: anything put in the public folder is accessible by other parts of the application; it is where we can store our error code html files



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

GET '/game/:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: 
  action => where your form should go
  designate the HTTP verb in the method attribute

  Researched answer:
  generic example
  action => the url that designates where the output of the form should take the user
  method => POST/GET/PUT/PATCH/DELETE
  <form action="/some_url" method="get">
    ...
  </form> 


7. Name two rails generator commands and what files they create:

  Your answer: 
  rails generate migration => will generate a migration file which appears is /db/migrate
  rails generate model => will generate a migration file along with the corressponding model file which appears in app/models

  Researched answer: in addition to the aformentioned methods we got
  rails generate resources untitled => creates the model file, a migration file, a controllers file, a folder in views with the same name as whatever was generated along with all the myriad of routes that allow you to CREATE a new untitled, GET a specific untitled, UPDATE a specific untitled and DELETE a specific untitled


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Not necessarily a new thing but just a reiteration of rails being a convention over configuration framework.  It is designed to make life easier for the developer by making assumptions about what the developer needs to do when developing an app. It works best for those who work under the constraints that rails has placed.

2. layouts define the surroundings of a HTML page can be used to create a common look and feel of your app (such as when designing)
A layout defines the surroundings of an HTML page. It's the place to define a common look and feel of your final output. Layout files reside in app/views/layouts.

3. rails generate scaffold is another rails generation technique.  it creates a model file; a migration file; a controller file with all the methods pertaining to the routes created; all the view files corresponding to the routes create 

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer: cookies are data that is sent from a website to be stored on a user's computer; good for remembering stateful information (info to be remembered later) such as a user's shopping 
  cookies and sessions both store data; however, cookies store data only on the client side where sessions store it on both the client and server side 
