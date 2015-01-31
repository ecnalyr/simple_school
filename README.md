Simple School
================

This application is created as a demonstration of development ability after given this description:

> We like you to model the student - assignment - submission relationship. There is a student who is "registered" for a class, and that class has assignments. A student needs to be able to see what assignments they have open, and submit results. You do not need to worry about authentication or authorization, Ui or how a user "registers". We are really just looking for an understanding of what your day to day working knowledge is. You should be able to add multiple students, classes and assignments.
once you finish please send github / heroku links

Some of what I would have done differently if this was an actual application:

- In addition to high-level feature tests, I would have created unit tests for controllers and models.  The logic was so minor here I just skipped over it.
- I would have created 'sad-path' tests.  I only created happy path tests for now.
- I would have given more attention to standard styling guidelines (e.g. some lines are longer than 80 characters).
- I didn't bother with GitHub pull requests as I kenw I was by myself, I prefer to merge through pull requests (with summaries of the features-to-be-merged) rather than merging directly into master.
- I would have created model validations (e.g. to avoid having classrooms with no names)
- As approrpiate, I would not have have scaffolded all available actions (e.g. I didn't need the destroy Homework action for this demonstration).

Problems? Issues?
-----------

This app isn't intended be used outside of demonstration purposes. . .

However, if the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.1.5
- Rails 4.1.8