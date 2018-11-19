## About

This is a quick project to answer to the following question in StackOverflow:

https://stackoverflow.com/questions/53289847/rails-filter-by-comparing-between-two-models/53292133#53292133

## Setup

Clone the project and switch to the directory in a console.

```
> bundle install
> rails db:create
> rails db:migrate
> rails db:seed
```

You can then switch into a rails console to query the database:

```
> rails c
> john = User.find_by(name: "John")
> john.any_matching_content.map(&:title)
=> ["London introduces new tax", "New license requirements in Berlin", "Adults only expo opens Wednesday"]
```

## Rebuild the database

```
rails db:environment:set RAILS_ENV=development && rails db:drop && rails db:create && rails db:migrate && rails db:seed
```
