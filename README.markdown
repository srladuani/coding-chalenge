# Challenge for Software Engineer - Web Developer 
This is a programming challenge designed to assess a candidate's development skills. You have as much time as you'd like (though we ask that you not spend more than a few hours).

There are three jobs that both use this challenge:

You must use Ruby on Rails, ASP.NET MVC or Struts MVC with Hibernate for this programming exercise. 

## Submission Instructions
1. First, fork this project on bitbucket.  You will need to create an account if you don't already have one.
1. Next, complete the project as described below within your fork.
1. Finally, push all of your changes to your fork on bitbucket and submit a pull request.  You should also email the appropriate address listed in the first section and your recruiter to let them know you have submitted a solution.  Make sure to include your bitbucket username in your email (so we can match people with pull requests).

## Project Description
Imagine that your organization has just acquired a new company that does not store their data in a database and instead uses a plain text file.  You need to create a way for the new subsidiary to import their data into a database.  Your task is to create a web interface that accepts file uploads, normalizes the data, and then stores it in a relational database.

Here's what your web-based application must do:

1. Your app must accept (via a form) a tab delimited file with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name.  You can assume the columns will always be in that order, that there will always be data in each column, and that there will always be a header line.  An example input file named example_input.tab is included in this repo.
1. Your app must parse the given file, normalize the data, and store the information in a relational database.
1. After upload, your application should display the total amount gross revenue represented by the uploaded file.

Your application does not need to:

1. handle authentication or authorization (bonus points if it does, extra bonus points if authentication is via OpenID)
1. be written with any particular language or framework
1. be aesthetically pleasing

Your application should be easy to set up and should run on either Linux or Mac OS X.  It should not require any for-pay software.

## Evaluation
Evaluation of your submission will be based on the following criteria. Additionally, reviewers will attempt to assess your familiarity with standard libraries. If your code submission is in Ruby, reviewers will attempt to assess your experience with object-oriented programming based on how you've structured your submission.

1. Did your application fulfill the basic requirements?
1. Did you document the method for setting up and running your application?
1. Did you follow the instructions for submission?
