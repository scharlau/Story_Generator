class StoryController < ApplicationController
  require 'faker'
  def index
    @story =  "In a(n) #{Faker::Hipster.word}  #{Faker::Job.field }" +
            " a young #{Faker::Movies::Hobbit.character } " +
            " stumbles across a(n) #{Faker::Books::Lovecraft.tome } " +
            " which spurs him into conflict with #{Faker::TvShows::StarTrek.villain }" +
            " and her #{Faker::Hacker.noun }" +
            " culminating in #{Faker::Games::Pokemon.move} where someone shouts '#{Faker::TvShows::Simpsons.quote }' ."
  end
end
