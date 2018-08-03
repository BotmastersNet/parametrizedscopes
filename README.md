# ParametrizedScopes
Provides a simple way how to pass parameters to model scopes.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'parametrized_scopes'
```

Run `$ bundle install`

Simply include `ParametrizedScopes` to `ApplicationRecord`:

```ruby
# app/models/application_record.rb
class ApplicationRecord < ActiveRecord::Base
  include ParametrizedScopes
  self.abstract_class = true
end
```

## Usage
Use the method `filter_scope` in the model to create scope with parameter:

```ruby
class MyModel < ApplicationRecord
  filter_scope :active, -> (q) { where(is_active: q) }
end
```

Use the scope:

```ruby
value = true
MyModel.active(value).where(name: "test")
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
