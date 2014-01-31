bootbone
========

Bootbone is tool to help "bootstrap your backbone" app in a rails project.  The included set of generators will set up a simple backbone file structure as well as put the hooks in place for using require.js in both development and production.

This is a new project still in early development.  Updates coming soon...

## Installation

Add the gem to your Gemfile:
```ruby
gem 'bootbone', git: 'git://github.com/wooswiff/bootbone.git'
```

Download and install:
```
bundle install
```


## Usage

Create your initial directory structure of your app:
```
rails generate bootbone:install <my_bb_app>
```

## Tests

```
rake spec
```
