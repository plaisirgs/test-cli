# frozen_string_literal: true

#application environment
require 'bundler/setup'
Bundler.require(:default)

require 'dotenv/load'

require_relative './recipe_cli/cli.rb'
require_relative './recipe_cli/api.rb'
require_relative './recipe_cli/recipe.rb'