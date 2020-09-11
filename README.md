# Spike: Fun with Faker and FactoryBot

*Turing School of Software and Design*

## Introduction

This repo contains seeds and test data that can be easily enhanced with [Faker](https://github.com/faker-ruby/faker) and [FactoryBot](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md). The objective is to clean up the data, while also having a splendid time customizing the attributes using these tools!

Please analyze the schema below to understand the relationships between the different resources in the database.

If you have worked in Rails before, you may recall when testing past projects with similar relationships you needed to create a bunch of objects in order to create a single object that depends on the others. Not only is this time consuming, but it also looks messy and could be confusing to others who come along and read your code later.

In this lesson we will explore several different ways to use FactoryBot factories to automate the creation of dependent data. We will also learn how to implement Faker in our factories in order to make testing and database queries MORE FUN!

## Schema

![Schema](/public/schema.png)

## Instructions

### Setup

After you have forked and cloned this respository, install the necessary gems:

`$ bundle install`

Then, set up the database:

`$ rails db:create`

`$ rails db:migrate`

`$ rails db:seed`

Checkout some passing tests, because who doesn't like to see passing tests?

`bundle exec rspec`

### Create Factories for Every Class

1. Add gems for Faker and FactoryBot:

`gem 'factory_bot_rails'`

`gem 'faker'`

2. Add necessary line `'/spec/rails_helper.rb'`

3. Use Faker to generate attributes for your classes

4. Create associations (i.e. setup relationships)

5. Create dependencies using 'after :create' block

### Clean Up Test Data

One by one, replace test objects with factories.

*Challenge*: Setup your dependencies so that you can add as few factories to each individual test file, but still create all the necessary objects.

This may make it challenging to test for specific data, but you can work around this using `within` blocks, as well as html classes. An example of this is found in `/spec/features/artists/show_spec.rb`

### Seed the Database

In `db/seeds.rb`, create seed objects for all of your classes. You can use a `.times` block to make a bunch a once!

Fire up your 'lil app on local host with the command `rails s` and then visit `localhost:3000/` plus whatever route you want to explore (ex. `localhost:3000/artists/1`)

### Explore the Database Using Rails Console

The rails console is a friendly place in the terminal where you can access your database and test out active record queries. You can get there by running `rails c`.

Try `pp Artist.all` to see all artists that you seeded. (`pp` stands for "pretty print" which makes it look all nice and pretty!)

## References

* [Faker Docs](https://github.com/faker-ruby/faker)

* [FactoryBot Docs](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md)

* [FactoryBot Cheatsheet](https://devhints.io/factory_bot)

* [Easily rename your Git default branch from master to main](https://www.hanselman.com/blog/EasilyRenameYourGitDefaultBranchFromMasterToMain.aspx)

* [Common FactoryBot Gotchas](https://makandracards.com/rails_cheat_sheets/48119-common-factorybot-gotchas)
