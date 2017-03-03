# Reflections

The heroku app is deployed [here](https://amazing-movie-theater.herokuapp.com).

If you decide to pull down the code from this repo, before you can run it locally you'll need to create a mailgun account and add the appropriate domain, username and password in `config/environments/development.rb`


## Schema design thoughts
I used a simple schema design tool to visualize my schema, and I've stored a screenshot of the visualization [here](/public/images/schema.png).

When I first started thinking about the models needed for this challenge, I considered having a movie's showtime and auditorium be attributes of a Movie model. After more thought, however, I decided to make separate models for Showtime and Auditoria, since this would allow for the flexibility needed by an admin to change seating capacity, create new auditoria, update things easily, etc.

Movie and Auditorium are connected by many_to_many relationships via a join table (thus allowing for the flexibiltiy of changing movies and their auditoria), but also through the Showtime model, in the sense that the Showtime has has_many/belongs_to relationships with both Movie and Auditorium.

And having Showtime connected to Movie and Auditoria in this way makes sense for implementing the Order model, in the sense that I can just have a showtime_id foreign key on Order, and through that get access to the particular movie and auditorium that the Order purchases.

As a side note, when the app seeds its data, movies are not directly assigned to an auditorium, and this is intentional - the admin can choose to assign a movie to an auditorium, but it seems more logical to create new Showtimes, which the admin can also do.

I think a more refined version of this app could come up with a more elegant way to handle the relationships between movies, auditoria, showtimes, and orders, but I'm satisfied with it for now. I'm sure you've seen other implementations, and I'd love to talk with you about what's good about my interpretation, and what could be improved.


## Administrate gem
I used [Thoughtbot's administrate gem](https://github.com/thoughtbot/administrate) for giving admin access to movies, showtimes, and auditoria data. I could have gone the traditional route of creating CRUD actions on the appropriate controllers and view templates, but I like Administrate's UI, and using it saved me some time.

Using Administrate enabled me to use the same styles for the ticket purchasing parts of the app.


## Authentication
If I had a little more time to work on this, I'd definitely add a login functionality for the admin movie and showtime management pages. I'm not sure if I'm interpreting the requirements correctly, but the part that says "We don't need any authentication on the app for now" made me think that perhaps login wasn't required - or is login considered different than authentication? Obviously it wouldn't work in a real application to have users be able to access that admin area, so it felt a little odd leaving it without authentication. Like I said, that would probably be a high priority if I were to keep working on this.


## Email receipt 
This requirement took some time, as I went down some paths that didn't end up working out - I wasn't able to get ActionMailer working, then I tried using Mailgun with ActionMailer, and ran into  config issues. Pretty much the whole time I could see the receipt email being 'sent' in the console, but it wasn't showing up in my inbox. Eventually, after reading enough blog posts and docs, and fooling around with various config settings in Mailgun, my config/dev environment, and the mailer/controller files, I got it working. 


## Other things I'd keep working on in the future
I also used some gems for validations, and didn't really have time to dig deep/test for edge cases and make sure my validations were really rigorous. And I realize the credit card expiration date format doesn't accurately reflect a payment system. Its validation won't let you put in a bad date, but I realize I kinda cut a corner on this field's format.

Also, I didn't get a chance to write tests. Ideally I would have done this app with TDD, or at least written some tests after getting things running in dev, but unfortunately I didn't have time to get to that. But testing is a part of the engineering process that I really care about, and I'm really hoping to get experience writing good tests at my next position.

Lastly, I realize there's not a lot of pseudocode or comments written in my code. Normally I'm a big proponent of well-documented and well-commented code. I didn't leave comments or explanations in the controllers or models, where things generally seemed pretty self-explanatory (I realize this could be interpreted as a bad practice, and if I had more time, or it was deemed necessary, I'd gladly add comments there).

In sum, thank you very much for the opportunity to work on this challenge! I really enjoyed it, and I'd love to know your thoughts on how I chose to interpret its requirements. I really love working with Ruby and Rails, and I'd love to talk more with you about the role you're looking to fill!

