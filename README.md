# What's new in Rails 4.1?

## Spring

* Makes running your console, rake tasks and mostly everything else super-fast.
* Sort of like spork and zeus!
* Except better!
* Spork: Lots of awkward setup.
* Zeus: You need to run it.
* With Spring, all you have to do is use Rails' binstubs. Add `./bin` to your `$PATH`. Beautiful.
* Bonus! No more `bundle exec`!

## Secrets

* New file `config/secrets.yml` for your sensitive data.
* By default it just contains Rails' own secret key, but you should put all your secret things in here.
* Presumably supposed to be secret... yet version controlled.
* As [@espenhogbakk](http://github.com/espenhogbakk) will tell you, version controlling your passwords is a bad thing.

```
- "Hey guys, we made this new file where you can put all your passwords instead of in config/application.rb!"
- "Awesome! Now we don't have to version control our passwords anymore!"
- "About that..."
```

* ... wat?

## Action Pack Variants

* Render different views or even behave differently for phones, tablets and desktop browsers!
* Awesome. No more hacks where you make a format called "iPhone". "iPhone" is not a format.
* Define variants in before actions (example in `app/controllers/application_controller.rb`).
* Use them in `respond_to` in controller actions (example in `app/controllers/home_controller.rb`).

## ActionMailer Previews

* ActionMailer. Previews.
* Previews. For ActionMailer.
* Awesome.
* Sort of like LetterOpener and MailPreview.
* In fact, exactly like LetterOpener and MailPreview.
* Create previews in `test/mailers/previews` (example in `test/mailers/previews/user_mailer_preview.rb`).
* If you use rspec, you can customize where they live so you can put them in `spec` or whatever.
* Navigate to `http://localhost:3000/rails/mailers/user_mailer` to preview.

## ActiveRecord enums

* Sort of like enumerize!
* In fact, exactly like enumerize!
* Except different.
* The good: Faster! Probably. It stores integers instead of strings. You won't notice.
* The bad: It's going to get ugly if you remove options.
