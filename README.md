# README

This  is the README for Story, which is a mini adventure generator that uses the Ruby Faker gem from
https://github.com/stympy/faker as part of a deliberate coding exercise. You can do this on your own
or as part of a pair programming experience.

The original version of this is based on David Malki's 'The Electro-Plasmic Hydrocephalic Genre-Fiction
Generator 2000' work. The prototype diagram is at http://wondermark.com/554/ and you can follow a link
there to a version written in Javascript and python.  Look at it later. It won't help you with this
exercise.


To use Faker you do the following:
gem install faker

Add this line to your Gemfile:
gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'

then add the line:
require 'faker' at the top of your file as needed. From there you can do things like this:
@name = Faker::Pokemon.name
@quote = Faker::HarryPotter.quote

The format is offer the challenge, then think and code for 12 minutes, then discuss how people are
approaching the problem, and what they're trying to do next. This should be repeated three times and
then wrapped up with time for people to express what they found most useful during the session.

Start by thinking about how you'd generate a ministory with Rails: what rests in the controller and what
goes in the view.

Your story should have this format:

@story =  "In a(n) ADJECTIVE +  NOUN" +
            " a young PERSON " +
            " stumbles across a(n) OBJECT " +
            " which spurs him into conflict with NAME ANIMAL " +
            " with the help of a(n) ASSISTANT " +
            " and her OBJECT/TOOL " +
            " culminating in ACTION ."

