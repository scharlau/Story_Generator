# README for STORY

This is a mini adventure story generator that uses the Ruby Faker gem from https://github.com/stympy/faker as part of a 'deliberate practice' coding exercise. 

Faker lets you do things like this to generate different values for variables:
    
    @name = Faker::Pokemon.name
    @quote = Faker::HarryPotter.quote

You can do this on your own or as part of a pair programming experience. Only look at the code here when you're done with your first attempt at the exercise. 
The goal of 'deliberate practice' is to think about how you'd solve this challenge, and to work at developing code to make this work. There is no 'correct' version of this code. The purpose is deliberate practice. The goal is to look at this very simple application done in Rails so that you understand how variables in controllers are shown up in the views you see in the browser.

The original version of this is based on David Malki's 'The Electro-Plasmic Hydrocephalic Genre-Fiction Generator 2000' work. The prototype diagram is at http://wondermark.com/554/ and you can follow a link there to a version written in Javascript and python.  Look at it later. It won't help you with this exercise in Ruby and Rails.

To begin this session create a new Rails application with the command:

    rails new story

This will create a new rails application for you to use in this exercise.

To use Faker you do the following:
    
    gem install faker

Add this line to your Gemfile after one of the commented out gems that are there such as bcrypt or puma:
    
    gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'

You now need to run bundler again so that Faker is included in your application. Use this command:

    bundle install

Now, create a new controller with this command:

    rails generate controller story index

This will create a new controller called 'story' with the method 'index'. It will generate app/views/story/index.html.erb, and also add 'story/index' to your route.rb file so that the page is available at localhost:3000/story/index

We need to add this 'require faker' line to the top of your new controller so that you can use Faker in the controller:
    
    class StoryController < ApplicationController
    require 'faker'
    def index 

Now we're ready for the main fun of this exercise.

Under 'deliberate practice' we offer up the challenge, then think about options for developing a solution, and code for 12 minutes. After that we pause to discuss how people are approaching the problem, and what they're trying to do. This should be repeated three times and then wrapped up with time for people to express what they found most useful during the session. This should take an hour.

## A word about Rails views and controllers

If you want to use a ruby expression in a view, then you can put something like this in the view:
''''<p>In a(n) <%=Faker::Hipster.word %>  <%= Faker::Job.field %> a young <%= Faker::Movies::Hobbit.character %></p>
If you wanted to put the same part in a controller, you could put the values in a string and then send the string to the view. You could do the two parts like this.
Put this in the controller 'index' method (along with the rest of the parts further below):
            @story =  "In a(n) #{Faker::Hipster.word}  #{Faker::Job.field }" +
            " a young #{Faker::Movies::Hobbit.character } "
Put this in the view using the @story instance value:
            <blockquote><%= @story %></blockquote>

Your job is to work out which approach is the right one for you. That's part of the exercise.

Your story should have this format shown below. Each of the captilised words should come from Faker as #{Faker::Pokemon.name} (or whatever) where you see the capitalised words. Look at the Faker <a href="https://github.com/faker-ruby/faker#generators" target="_blank">documentation</a> for the types of words you can generate.

            "In a(n) ADJECTIVE +  NOUN" +
            " a young PERSON " +
            " stumbles across a(n) OBJECT " +
            " which spurs him into conflict with NAME ANIMAL " +
            " with the help of a(n) ASSISTANT " +
            " and her OBJECT/TOOL " +
            " culminating in ACTION  where someone shouts 'QUOTE'."

First round:
Start by thinking about how you'd generate a ministory with Rails based upon what you know from above:  what code goes in the controller and what goes in the view. Then start coding your solution until the time is up.

Second round:
If you have this running, then consider how you could generate, and then display multiple stories at the same time, which could be voted on by the viewer. You don't need to make the voting work. Just show multiple stories on the page.

Third round:
How might you either

    (a) 'make it random' so that the variables that go into the story are more random. For example, instead of always being Pokemon character names, how would you make it select one from a range of names from Lord or the Rings, Dr Who, or Game of Thrones?

    (b) let the user select to use only variables from their choosen theme of Lord of the Rings, Lovecraft, Harry Potter, Simpsons, or How I Met Your Mother. (For this you might still need to also use some of the other themes for objects, adjectives and nouns.)


