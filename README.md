# Spike: Fun with Faker and FactoryBot

*Turing School of Software and Design
September 11th, 2020

## Introduction

This repo contains seeds and test data that can be easily enhanced with [Faker](https://github.com/faker-ruby/faker) and [FactoryBot](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md). The objective is to clean up the data, while also having a splendid time customizing the attributes using these tools!

Please analyze the sch ma below to understand the relationships between the different resources in the database.

If you have worked in Rails before, you may recall when testing past projects with similar relationships you needed to create a bunch of objects in order to create a single object that depends on the others. Not only is this time consuming, but it also looks messy and could be confusing to others who come along and read your code later.

In this lesson we will explore several different ways to use FactoryBot factories to automate the creation of dependent data. We will also learn how to implement Faker in our factories in order to make testing and database queries MORE FUN!

## Schema

Painting belongs to Artist
Artist has many Paintings

Museums have many Paintings, through MuseumPaintings
Paintings have many Museums, through MuseumPaintings

Artist attributes:
  first_name
  last_name
  year
  location

Painting attributes:
  name
  description
  medium
  palette



## Instructions

## Setup

bundle
database commands

### Setting up your first Factory

### Cleaning up test data

### Seeding the database

### Exploring the database in Rails console

rails c

Artist.all



## References

[Faker Docs](https://github.com/faker-ruby/faker)
[FactoryBot Docs](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md)
[FactoryBot Cheatsheet](https://devhints.io/factory_bot)
