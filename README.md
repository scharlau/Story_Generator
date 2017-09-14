# README

This  is the README for Story, which is a mini adventure generator that uses the Ruby Faker gem from
https://github.com/stympy/faker as part of a deliberate coding exercise. You can do this on your own
or as part of a pair programming experience. Only look at the code here when you're done. The goal is
to think about how you'd do this, and to work at developing code to make this work. There is no 'correct'
version of this code. The purpose is deliberate practice. 

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

Your story should have this format, with each of the captilised words should come from Faker.

            "In a(n) ADJECTIVE +  NOUN" +
            " a young PERSON " +
            " stumbles across a(n) OBJECT " +
            " which spurs him into conflict with NAME ANIMAL " +
            " with the help of a(n) ASSISTANT " +
            " and her OBJECT/TOOL " +
            " culminating in ACTION  where someone shouts 'QUOTE'."

First round:
Start by thinking about how you'd generate a ministory with Rails: what rests in the controller and what
goes in the view. Then start coding this up until the time is up.

Second round:
If you have this running, then consider how you could generate, and then display multiple stories at the same time,
which could be voted on by the viewer.

Third round:
How might you make the variables that go into the story more random. For example, instead of always being
Pokemon character names, how would you make it select one from Lord or the Rings, Dr Who, or Game of Thrones?


