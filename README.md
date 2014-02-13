lurch
========

Lurch is tool to help bootstrap your javascript application in a rails project.  The included set of generators will set up a simple js app file structure as well as put the hooks in place for using require.js in both development and production.

Lurch is meant to be extended by javascript frameworks and comes with a plugin for bootstrapping a backbone.js app.

This is a new project still in early development.  Updates coming soon...

## Installation

Add the gem to your Gemfile:
```ruby
gem 'lurch', git: 'git://github.com/wooswiff/lurch.git'
```

Download and install:
```
bundle install
```


## Usage

Create your initial directory structure of your app:
```
rails generate lurch:install <my_js_app>
```

## Tests

```
rake spec
```
