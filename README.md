# README

This project is about my CRUD(Create, Read, Update and Delete) application. This application is created to store information about people.

## Things you require to use this application: 

* Ruby version ==> ruby "3.2.2"

* Rails version ==> "~> 7.0.6"

* System dependencies
   
    To use this application make sure you have installed Ruby and Rails of proper version. After pulling/cloning this project you should install gemfiles such as devise and other according to requirement. Example
    ```
    bundle add devise
    ```
    After adding gemfile, run
    ```
    bundle install
    ```
    to properly integrate gemfile to your project.
    Then, run the generator using code below
    ```
    rails generate devise:install
    ```

* How to run the project locally

    After preparing all the setups for this project to run type
    ```
    rails s or rails server
    ```
    in terminal which opens a port localhost:3000. The project should run at port ```localhost:3000``` (Make sure rails server is still running in your terminal).
