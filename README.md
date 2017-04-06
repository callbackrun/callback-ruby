Callback.run Ruby API Wrapper
=============================

[ ![Codeship Status for callbackrun/callback-ruby](https://app.codeship.com/projects/2c3b5c50-fd0e-0134-c7bc-22bf4c6edae4/status?branch=master)](https://app.codeship.com/projects/211937)

Ruby bindings for the Callback.run API (http://developers.callback.run)

## DESCRIPTION

Building scheduling systems takes precious cycles away from concentrating on the building business value. In addition, hosting costs increase to support running background jobs. Callback.run allows you to create recurring jobs that get scheduled and run on Callback's platform. When run, Callback will call a webhook on your servers.

This is a Ruby wrapper around the Callback.run API to easily integrate Callback in your Ruby applications.

## INSTALLATION

```
gem install callback
```

Using [Bunder](http://bundler.io/), add the following to your `Gemfile`:

```
gem "callback"
```

## BASIC USAGE

You can configure Callback to use the API key for your team. If you are using Rails, you will want to create an initializer at `config/initializers/callback.rb`

```ruby
Callback.configure do |config|
  config.access_token = ENV["CALLBACK_ACCESS_TOKEN"]
end
```

## CONTRIBUTING

1. Clone the repository `git clone https://github.com/callbackrun/callback-ruby`
1. Create a feature branch `git checkout -b my-awesome-feature`
1. Codez!
1. Commit your changes (small commits please)
1. Push your new branch `git push origin my-awesome-feature`
1. Create a pull request `hub pull-request -b callbackrun:master -h callbackrun:my-awesome-feature`

Everyone interacting in Callback's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the Callback [code of conduct](CODE_OF_CONDUCT.md).

## LICENSE

This project is licensed under the [MIT License](LICENSE.md).
