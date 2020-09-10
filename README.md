# Spike: Fun with Faker and FactoryBot

*Turing School of Software and Design*
September 11th, 2020

## Introduction

This repo contains seeds and test data that can be easily enhanced with [Faker](https://github.com/faker-ruby/faker) and [FactoryBot](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md). The objective is to clean up the data, while also having a splendid time customizing the attributes using these tools!

Please analyze the schema below to understand the relationships between the different resources in the database.

If you have worked in Rails before, you may recall when testing past projects with similar relationships you needed to create a bunch of objects in order to create a single object that depends on the others. Not only is this time consuming, but it also looks messy and could be confusing to others who come along and read your code later.

In this lesson we will explore several different ways to use FactoryBot factories to automate the creation of dependent data. We will also learn how to implement Faker in our factories in order to make testing and database queries MORE FUN!

## Schema

![Schema](/public/schema.png)

## Instructions

## Setup

After you have forked and cloned this respository, install the necessary gems:

`$ bundle install`

Then, set up the database:

`$ rails db:create`
`$ rails db:migrate`
`$ rails db:seed`

Checkout some passing tests, because who doesn't like to see passing tests?

`bundle exec rspec`

### Setting up your first factory

Add gems for Faker and FactoryBot:

`gem 'factory_bot_rails'`
`gem 'faker'`

### Cleaning up test data

One by one, replace test objects with factories.

### Seeding the database

In `db/seeds.rb`, create seed objects for all of your classes.

### Exploring the database in rails console

Access the rails console with `rails c`.

Try `pp Artist.all` to see all artists that you seeded. (`pp` stands for "pretty print" which makes it look all nice and pretty.)

## References

[Faker Docs](https://github.com/faker-ruby/faker)
[FactoryBot Docs](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md)
[FactoryBot Cheatsheet](https://devhints.io/factory_bot)
[Easily rename your Git default branch from master to main](https://www.hanselman.com/blog/EasilyRenameYourGitDefaultBranchFromMasterToMain.aspx)
