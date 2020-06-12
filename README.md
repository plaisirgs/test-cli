## TheMealDB

Welcome to TheMealDB! 

## Overview 

This CLI works with TheMealDB API and provides three levels of data. First, the CLI displays 11 meal categories including beef, chicken, dessert, lamb, pasta, pork, seafood, vegan, vegetarian, breakfast, and goat. The user is able to select a meal category and then the categories corresponding to the meal category are displayed. The user can then select a recipe and recieve the ingredients necessary to prepare the recipe, the origin of the recipe (ex. "This recipe is part of Japanese cuisine."), and the detailed instructions on how to prepare the recipe. 

The code is split into four files:
api.rb:interacts with cli.rb and makes calls to the API
category.rb: displays the 11 meal categories
cli.rb: handles CLI display logic and user input
recipe.rb: displays the recipes' ingredients, origins, and instructions 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'test-cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install test-cli

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plaisirgs/test-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors. 

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Test::Cli project’s codebases, issue trackers, chat rooms and mailing lists are expected to adhere to the Contributor Covenant Code of Conduct: https://www.contributor-covenant.org/version/2/0/code_of_conduct/code_of_conduct.md 


