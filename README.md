# Funky Starter

Funky Starter is an empty project with basic configuration. It has been developed to create quickly new Rails applications on top of it.

## What's in it?

This is a sample Rails application. Here's what is installed:

* [Mongoid](http://mongoid.org/en/mongoid/index.html) configuration to manipulate data with MongoDB
* [Devise](https://github.com/plataformatec/devise) for authentication
* [RSpec](https://github.com/rspec/rspec-rails) for TDD
* [simplecov](https://github.com/colszowka/simplecov) for test coverage
* [Capybara](https://github.com/jnicklas/capybara) for BDD
* [factory_girl](https://github.com/thoughtbot/factory_girl) for factories
* [Figaro](https://github.com/laserlemon/figaro) for git-ignored configuration file
* [Sass](http://sass-lang.com/guide) for CSS
* [CoffeeScript](http://coffeescript.org/) for JavaScript
* [Turbolinks](https://github.com/rails/turbolinks) for faster frontend

## Requirements

* Git
* Ruby 2
* MongoDB
* Bundler

## Usage

```sh
$ git clone https://github.com/rhannequin/funky-starter
$ cd funky-starter
$ bundle install
$ bundle exec rake fork[/home/xxx/my-new-project]
```

Where `/home/xxx/my-new-project` is where you want to create your project.

Names like `my-new-project` will create a module like `MyNewProject`.

**Warning:** if you are using [ZSH](https://github.com/robbyrussell/oh-my-zsh), you have to use another syntax:

`$ bundle exec rake fork\[/home/xxx/my-new-project\]` or

`$ noglob bundle exec rake fork[/home/xxx/my-new-project]`.
