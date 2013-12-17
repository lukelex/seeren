#Seeren
The way we build and structure our Views are fundamentally wrong. Views should be composed of multiple `interdependent pieces`, or `components` if you will, that when assembled together will work as expected.

Seeren was built to support this idea and the process behind it. Where you should develop and test your view's look & feel, behavior and assertiveness, as units and later on put them together as whole.

##Getting started
Seeren sets up the an entry point, `"/components/:component_name"`, to your tests.

```
http://localhost:3000/components/sidebar // sidebar is the component name
```

It also gives you the option to specify the size of the container that the component should reside. In this way you could write various tests for multiple resolutions.

```
http://localhost:3000/components/header?width=1024px&height=75px
http://localhost:3000/components/sidebar?width=320px
http://localhost:3000/components/producs?width=800px
```

Then define all the templates and assets your tests care about in the mapping file (config/seeren_mapping.yml) under the config folder:

```yml
header:
  view: application/header
  javascript: header
  stylesheet: header

sidebar:
  view: application/sidebar
  javascript: sidebar
  stylesheet: sidebar

products_list:
  view: products/index
  javascript: products
  stylesheet: products
```

##Installing

Add this line to your application's Gemfile:

```ruby
gem 'seeren'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install seeren
```

And setup the initializer:

```ruby
require 'seeren'

Seeren.setup do |config|
  config.mapping "#{Rails.root}/config/seeren_mapping.yml"
end
```

##Credits
Many thanks for @leaverou for letting me use her awesome code on my examples:
* http://leaverou.github.com/prefixfree/
