# README for STORY

This is a mini adventure story generator that uses the Ruby Faker gem from https://github.com/stympy/faker as part of a 'deliberate practice' coding exercise. You can do this exercise on your own, or as part of a pair programming experience. Only look at the code here when you're done with your first attempt at the exercise. 

This exercise is based on David Malki's 'The Electro-Plasmic Hydrocephalic Genre-Fiction Generator 2000' which appeared at http://wondermark.com/554/ That was turned into a version written in Javascript and python.  Look at it later. It won't help you with this exercise in Ruby and Rails.

The goal of 'deliberate practice' is to think about how you'd solve this challenge, and to work at developing code to make this work. There is no single 'correct' version of this code. The purpose of the exercise it become familiar with different ways of making the application work. You should explore how this simple application is done in Rails so that you understand how variables in controllers are show up in the views you see in the browser.

Under 'deliberate practice' we offer up the challenge, then think about options for developing a solution, and code for 12 minutes. After that we pause to discuss how people are approaching the problem, and what they're trying to do. This should be repeated three times and then wrapped up with time for people to express what they found most useful during the session. This should take an hour.

### Work with a Good Text Editor
Rails applications are lightweight and only need a good text editor for managing their development. You need one of these good examples that students and developers use. They are available on for Windows, Mac OS and Linux too. In order of preference go for either Visual Code https://code.visualstudio.com or Sublime Text https://www.sublimetext.com. I prefer Visual Code as it lets you easily run a terminal in the same space as where you're editing files too.  

## Start the Work by Creating a Rails Application 

To begin this session open a terminal and create a new Rails application with the command:

    rails new story

This will create a new rails application for you to use in this exercise.

To use Faker you need install the Faker gem with:
    
    gem install faker

Now add this line to your Gemfile after one of the commented out gems that are there such as bcrypt or puma:
    
    gem 'faker' 

You now need to run bundler again so that Faker is included in your application. Use this command:

    bundle install

If you are using Rails 6, then you also need to run this command: 'Yarn install - - check-files' in order to pull together other components that are required by Rails.

Now, create a new controller with this command:

    rails generate controller story index

This will create a new controller called 'story' with the method 'index'. It will generate app/views/story/index.html.erb, and also add 'story/index' to your route.rb file so that the page is available at localhost:3000/story/index

We need to add this 'require faker' line to the top of your new controller so that you can use Faker in the controller:
    
    class StoryController < ApplicationController
    require 'faker'
    def index 

Now we're ready for the main fun of this exercise.

## A word about Rails views and controllers

Rails applications always have the same structure. You newly created files are under app/controllers/story_controller.rb and app/views/story/index.html.erb These are the only two files that you need to work with for the exercise.

Your goal is to generate a story in the format shown below. Each of the captilised words should come from Faker as #{Faker::Pokemon.name} (or whatever) where you see the capitalised words. You could also use these:
    @name = Faker::Pokemon.name
    @quote = Faker::HarryPotter.quote

Look at the Faker <a href="https://github.com/faker-ruby/faker#generators" target="_blank">documentation</a> for the types of words you can generate.

            "In a(n) ADJECTIVE +  NOUN" +
            " a young PERSON " +
            " stumbles across a(n) OBJECT " +
            " which spurs him into conflict with NAME ANIMAL " +
            " with the help of a(n) ASSISTANT " +
            " and her OBJECT/TOOL " +
            " culminating in ACTION  where someone shouts 'QUOTE'."

If you want to use a ruby expression in the 'index.html.erb' view, then you can put something like this in the view:
 
<p>In a(n) <%=Faker::Hipster.word %>  <%= Faker::Job.field %> a young <%= Faker::Movies::Hobbit.character %> and so on for the rest of the words.</p>

If you wanted to put the same output in the story_controller.rb file then, you could put the values in a string and then send the string to the view. You could do the two parts as follows:
Put this in the controller 'index' method (along with the rest of the parts further below):
            @story =  "In a(n) #{Faker::Hipster.word}  #{Faker::Job.field }" +
            " a young #{Faker::Movies::Hobbit.character } "
Put this in the view using the @story instance value:
<blockquote><%= @story %></blockquote>

#### Your job is to work out which approach is the right one for you. That's part of the exercise.

First round:
Start by thinking about how you'd generate a ministory with Rails based upon what you know from above:  what code goes in the controller and what goes in the view. Then start coding your solution until the time is up.

Second round:
If you have this running, then consider how you could generate, and then display multiple stories at the same time, which could be voted on by the viewer. You don't need to make the voting work. Just show multiple stories on the page.

Third round:
How might you either

    (a) 'make it random' so that the variables that go into the story are more random. For example, instead of always being Pokemon character names, how would you make it select one from a range of names from Lord or the Rings, Dr Who, or Game of Thrones?

    (b) let the user select to use only variables from their choosen theme of Lord of the Rings, Lovecraft, Harry Potter, Simpsons, or How I Met Your Mother. (For this you might still need to also use some of the other themes for objects, adjectives and nouns.)


