# Setup

```
asdf local ruby 3.1.1

bundle install
```

If you are one of that rich kids with a new fancy MacBook Pro M1 and have a problem with installing nodeJS, please try to type 
```
arch -x86_64 zsh
asdf local ruby 3.1.1

bundle install
```
# DB Setup
This app is using postgresql please make sure that your `config/database.yml` is set up correctly.
```
rails db:create
rails db:migrate
rails db:seed
```

# Starting app

```
rails server
```
or
```
bin/dev
```
if everything went ok you should be able to navigate to
```
localhost:3000
```
and see the sign in page
