# Regressions
If you want to track regressions across your ActiveRecord models, then you can leverage `paper_trail` in conjunction with this `Rails::Engine` to view and inspect regressions. 

## Usage
Follow instructions to [install and setup](https://github.com/paper-trail-gem/paper_trail#1b-installation) the `paper_trail` gem. Make sure you add the `versions` table to your application's database. 

Once `paper_trail` has been setup, add the `has_paper_trail` method to your model.
Then on the following line, add the `opsbox_track_regressions` method to the model.
Order is important, since validations are run to ensure `has_paper_trail` has been correctly setup.

```ruby
class User < ApplicationRecord
  has_paper_trail
  opsbox_track_regressions
end
```

### Track regressions on specific columns

You are able to specify specific columns you wish to track. This will add a `tracked_columns` attribute to your model when you pass in the the `only` option as follows:

```ruby
class User < ApplicationRecord
  has_paper_trail
  opsbox_track_regressions only: [:name, :address]
end
```

### Alert if your model has a regression

A `notify_changes` method can be added to the model. Here you can define a specific action/alert that needs to happen if any of the model's `tracked_columns` change as follows:

```ruby

class User < ApplicationRecord
  has_paper_trail
  opsbox_track_regressions only: [:name, :address]

  def notify_changes
    # Rails.logger.info('Regression detected')
    # Sentry.capture_message('Regression detected')
    # send an email
    # notify another application
  end
end
```


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'regressions'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install regressions
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
