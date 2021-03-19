# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Qmentor Rails App

## About

This app is for my LGBTQ mentorship program, qmentor. The app allows users to sign up, see other mentors and mentees, request to match with them (and accept matches), message other users, donate to the program, learn more about the program, etc.

## How to view

The website has been deployed at:
qmentor.herokuapp.com

The github repository is:
https://github.com/gjoyner09/mentorship/

Please clone the repo to your local environment to view the source code and test it out.

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

