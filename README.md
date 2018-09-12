# README for STORY

This is a mini adventure story generator that uses the Ruby Faker gem from https://github.com/stympy/faker as part of a 'deliberate practice' coding exercise. You can do this on your own or as part of a pair programming experience. Only look at the code here when you're done. The goal is
to think about how you'd solve this challene, and to work at developing code to make this work. There is no 'correct' version of this code. The purpose is deliberate practice. 

The original version of this is based on David Malki's 'The Electro-Plasmic Hydrocephalic Genre-Fiction Generator 2000' work. The prototype diagram is at http://wondermark.com/554/ and you can follow a link there to a version written in Javascript and python.  Look at it later. It won't help you with this exercise.

To begin this session create a new Rails application with the command:

    rails new story

This will create a new rails application for you to use in this exercise.

To use Faker you do the following:
    
    gem install faker

Add this line to your Gemfile:
    
    gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'

You now need to run bundler again with:

    bundle install

Now, create a new controller with this command:

    rails generate controller story index

This will create a new controller called 'story' with the method 'index'. It will generate app/views/story/index.html.erb, and also add 'story/index' to yournroute.rb file so that the page is available at localhost:3000/story/index

Now add this 'require faker' line to the top of your new controller:
    
    class StoryController < ApplicationController
    require 'faker'
    def index 
    
From there you can do things like this (which are not needed):
    
    @name = Faker::Pokemon.name
    @quote = Faker::HarryPotter.quote

Now we're ready for the main fun of this exercise.

We offer up the challenge, then think about options for developing a solution, and code for 12 minutes, then discuss how people are approaching the problem, and what they're trying to do next. This should be repeated three times and then wrapped up with time for people to express what they found most useful during the session. This should take an hour.

Your story should have this format, with each of the captilised words should come from Faker as #{Faker::Pokemon.name} (or whatever) where you see the capitalised words. Look at the Faker documentation for the types of words you can use.

            "In a(n) ADJECTIVE +  NOUN" +
            " a young PERSON " +
            " stumbles across a(n) OBJECT " +
            " which spurs him into conflict with NAME ANIMAL " +
            " with the help of a(n) ASSISTANT " +
            " and her OBJECT/TOOL " +
            " culminating in ACTION  where someone shouts 'QUOTE'."

First round:
Start by thinking about how you'd generate a ministory with Rails: what rests in the controller and what goes in the view. Then start coding your solution until the time is up.

Second round:
If you have this running, then consider how you could generate, and then display multiple stories at the same time, which could be voted on by the viewer.

Third round:
How might you either

    (a) 'make it random' so that the variables that go into the story are more random. For example, instead of always being Pokemon character names, how would you make it select one from a range of names from Lord or the Rings, Dr Who, or Game of Thrones?

    (b) let the user select to use only variables from their choosen theme of Lord of the Rings, Lovecraft, Harry Potter, Simpsons, or How I Met Your Mother. (For this you might still need to also use some of the other themes for objects, adjectives and nouns.)


