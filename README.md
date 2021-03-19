# README

# Qmentor Rails App

## About

This app is for my LGBTQ mentorship program, qmentor. The app allows users to sign up, see other mentors and mentees, request to match with them (and accept matches), message other users, donate to the program, learn more about the program, etc.

## How to view

The website has been deployed at:
qmentor.herokuapp.com

The github repository is:
https://github.com/gjoyner09/mentorship/

Please clone the repo to your local environment to view the source code and test it out.

In the command line, run `bundle install`, then `rails db:create`, then `rails db:migrate` and then `rails db:seed`. 

## Context

I created qmentor because there was no LGBTQ life mentorship program on the market. The covid crisis was making life difficult for many people, and LGBTQ people already suffer from greater rates of depression, anxiety, suicide and more. I created the program to support queer people through any issues that they are facing.

The program has been a success so far, with over 200 people invovled in the program as of March 2021. Feedback has been strong, as many mentees have commented that the program has helped them sort out various important issues in their life and build their self confidence.

However, one issue with the program was that it has been a rather manual process for me. I developed a website using Webnode, but it has no functionality - just information about the program and links to sign up as a mentor or mentee. All the matching has been done manually by me; mentors and mentees have been able to indicate their preferences but have not directly had a choice in the process. Messaging has all been done externally - through email or other messaging platforms. 

As such, I created this website to add functionality to the program. Being able to see other mentors and mentees and match with them will give users more control in the process. Messaging will allow users to stay more anonymous rather than provide personal detail such as their email address or phone number. Overall, the greater functionality will hopefully get users more engaged in the program.

## Functionality/features

The app provides the following functionality and features:
* Homepage - landing page so people get a high-level overview of the program
* About - more detail on the program and how to contact qmentor with any questions or comments
* Donate - integration with Stripe so that users can donate to the program
* Mentors - a list of mentors in the program, details about them and links to their profiles. If the user is signed up as a mentee, they will see all mentors, otherwise they will see only the mentors with public profiles.
* Mentees - as above, a list of mentees in the program and their details. This list will not be viewable unless the user is signed in as a mentor. Even in that case, they can only see Mentees that have enabled their profiles to be viewable by Mentors.
* Show - detail on each mentee and mentor, including photos (if the user has uploaded one). If the user is signed up as a mentee/mentor and the profile they are viewing is available, they can request to match with the profile. The user can also message the profile.
* Matches - this page contains requests to match and existing matches. Users can accept or decline requests to match as well as delete existing matches.
* Messages - users will see any message they have sent or received. They will also see who they sent or received the message to/from, when the message was sent, and links to the other user's profile so they can respond to the message.
* Your profile - detail on the user's profile and links to edit your profile
* Devise functionality - the app uses Devise for authentication and comes with all the built in Devise functionality. This includes sign in/sign out, sign up, edit login details, password reset and more.

## Sitemap

![Sitemap](docs/qmentor-sitemap-img.jpg)

## Screenshots

![Screenshot1](docs/screenshot1.jpg)
![Screenshot2](docs/screenshot2.jpg)
![Screenshot3](docs/screenshot3.jpg)
![Screenshot4](docs/screenshot4.jpg)
![Screenshot5](docs/screenshot5.jpg)
![Screenshot6](docs/screenshot6.jpg)
![Screenshot7](docs/screenshot7.jpg)
![Screenshot8](docs/screenshot8.jpg)

## Target audience

* Mentors: 18+ year old LGBTQ people who have a decent amount of life experience and are interested in investing time to give back to the LGBTQ community
* Mentees: 18+ year old people who are LGBTQ or questioning and are interested in being paired with an LGBTQ mentor

## Tech stack

* Language: Ruby
* Framework: Ruby on Rails
* Authentication: Devise
* Image hosting: AWS
* Payment: Stripe
* Database management: PostgreSQL
* CSS framework: Bootstrap
* Deployment: Heroku

## User stories

* As an LGBTQ person, I want to learn more about this queer mentorship program
* As an LGBTQ person, I want to be able to donate to qmentor
* As an LGBTQ person, I want to be able to sign up to qmentor and create a profile as a mentor or mentee
* As a mentee, I want to be able to see available mentors
* As a mentor, I want to be able to see available mentees (if they have public profiles)
* As a mentor or mentee, I want to be able to message other users
* As a mentor or mentee, I want to be able to request to match with other users
* As a mentor or mentee, I want to be able to accept requests to match with other users
* As a mentor or mentee, I want to be able to see and edit my profile

## Wireframes

![Wireframe1](docs/wireframe1.jpg)
![Wireframe2](docs/wireframe2.jpg)
![Wireframe3](docs/wireframe3.jpg)
![Wireframe4](docs/wireframe4.jpg)
![Wireframe5](docs/wireframe5.jpg)
![Wireframe6](docs/wireframe6.jpg)
![Wireframe7](docs/wireframe7.jpg)

## ERD

![ERD](docs/qmentor-ERD.jpg)

## High-level components of the app

* Model - the model identifies all the different data that the app will store, the relationship between different pieces of data, how different pieces of data interact, and more. The model talks to the database to get information and passes that back to the controllers and the views.
* View - views render content to the user (e.g. on the user's browser). Views take information from the controllers and models and, using logic from Ruby, render content to the user.
* Partials - partials are repeated pieces of content that get rendered in the Views. Examples of this include the navbar and forms.
* Controller - the controller is the "quarterback" of the app, speaking to the Models to get data and speaking with the Views to tell them what to do. 
* Database - the database stores the data used in the app. It passes that data back to the Model when needed. 
* Routes - routes tell the app where to go based on different requests from the user. For example, the routes tell the app what controller and what method to go to when the user goes to a specific website.
* Migrations - migrations tell the app how to update the database, for example adding or deleting data or creating a new table.
* Schema - the schema file shows the state of the database - what data is stored in what tables, what datatypes they have, etc.
* Stylesheets - Stylesheets contain the CSS or SCSS that provide styling for the Views. This provides all the key formatting and styling that the user sees.
* Assets - assets contain all external documents that are needed for the app. In this case, assets includes images used in the app and a custom font used on the site.
* Seeds - Seeds are pieces of data that can be added into the app with one command (`rails db:seed`). This allows the app to start with some pre-defined information. This is especially important in this app for setting the options for genders, sexualities, identities and countries.
* Gemfile - the Gemfile shows what Gems the app is using and what versions of each. 

## Third party apps

* Stripe - I've used Stripe for payments. The user can input the amount they want to donate to the program. They then get redirected to Stripe to complete the payment. Then they get redirected back to the website where they see a "payment successful" page"
* Devise - I've used Devise for authentication. Users can sign in or sign up via Devise, change their login details, reset their password, sign out and more, all using Devise. Devise was chosen because it is a secure and well-performing authentication service, and security is especially critical when it comes to authentication.
* AWS - I've used AWS for image hosting. Images take up a significant amount of storage space, so finding a cloud solution was important. AWS is tried and true in this space.
* Bootstrap - I wanted a solution for simple styling. There are a variety of CSS frameworks out there, including Tailwind, but I chose Bootstrap because it is the most common CSS framework and generally works well with Rails.
* Heroku - I've deployed my app on Heroku (qmentor.herokuapp.com). Heroku provides a strong, free service that fit my needs for the app.

## Models

The app has the following models: 

* Users - this model comes from Devise and contains user login information such as email and password.
* Countries - this model contains all the countries that Profiles can choose from
* Identities - this model contains all gender identities that Profiles can choose from
* Sexualities - this model contains all sexualities that Profiles can choose from
* Genders - this model contains all genders that Profiles can choose from
* Profiles - this model contains all data about each mentor or mentee, including name, age, reason for interest in the program, and more. It belongs to users, countries, identities, sexualities and genders - i.e. each Profile must have one of all of those. 
* Requests - this model contains all requests to match as mentor/mentee, including the requester and receiver IDs (from Users)
* Matches - this model contains all existing mentor/mentee matches, including the mentee and mentor IDs (from Users)
* Messages - this model contains all messages sent between users. It has the sender and receiver IDs (from Users), the message contents and when the message was sent

## Relations

* Profiles has a many_to_one relationship with Countries, Identities, Sexualities, Genders and Users - i.e. each Profile has one country, identity, sexuality, gender and user, and each of those items can have zero to many profiles.
* Requests, matches and messages all have two Users each. Per Andrew's guidance, this has been done not through the Model relations but through business logic that ensure that each request, match and message has two User IDs

## Database schema design

See comments in the schema file

## Task tracking

I used Trello to track tasks associated with creating this app. See link and screenshot below. For each task I've given a task title, comments about progress or issues, due date and status (completed, in progress, etc.). As I've gone through working on the project, I've updated the Trello board with comments on how tasks are going, updated the status, and more. It has been a helpful process for keeping myself on track for completing the project on time.

https://trello.com/invite/b/kfAzxyGw/f5e0abd54fa9112d109355fb91fe104a/qmentor-rails-marketplace-app

![Trello](docs/trello.jpg)