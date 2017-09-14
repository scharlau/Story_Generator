class StoryController < ApplicationController
  require 'faker'
  def index
    @story =  "In a(n) #{Faker::Hipster.word}  #{Faker::Job.field }" +
            " a young #{Faker::Hobbit.character } " +
            " stumbles across a(n) #{Faker::Lovecraft.tome } " +
            " which spurs him into conflict with #{Faker::StarTrek.villain }" +
            " and her #{Faker::Hacker.noun }" +
            " culminating in #{Faker::Pokemon.move} where someone shouts '#{Faker::Simpsons.quote }' ."
  end
end
