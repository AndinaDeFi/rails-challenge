# defiant-challenge

<br />
<p align="center">
<img src="https://defiantapp.tech/wp-content/uploads/2020/07/logo.png" alt="Logo">

  <h3 align="center">Defiant Challenge</h3>

  <p align="center">
    This project consists of building an app that renders a list of cryptocurrencies, each user can add these cryptos as favorite.
    <br />
    <br />
    <a href="https://github.com/SantiLl/rails-challenge/issues">Report Bug</a>
    ·
    <a href="https://github.com/SantiLl/rails-challenge/issues">Request Feature</a>
  </p>
</p>

## Built With

- Ruby 2.6.3
- Rails 6.1.4
- Postgresql 13.2

## Live Demo

<img src="app/assets/images/demo.gif" alt="demo-gif">


<!-- INSTALLATION -->
## Usage

To have this app on your pc, you need to:
* have Ruby & Ruby on Rails installed in your computer [setup](https://github.com/lewagon/setup)
* clone this repo:
  - Clone with SSH:
  ```
    git@github.com:SantiLl/rails-challenge.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/SantiLl/rails-challenge.git
  ```
* and open the terminal inside the repo and run the bundler
  - ```$ bundler install```
* run yarn in order to install all the javascript packages
  - ```$ yarn install```
* then, run rails db:migrate. This creates the database with the corresponding tables, columns and associations
  - ```$ rails db:migrate```
* then, run rails s. This will start the server at localhost `http://127.0.0.1:3000/`
  - ```$ rails s```
* and finally, you can test it in the console by running
  - ```$ rails console```

## App Interaction

Once the app structure is done run:
* `rails db:seed` in order to get all the data structure.
* `rake cryptocurrencies:update_prices` can be runned whenever prices need to be updated. If you want to automate this process, thanks to [whenever gem](https://github.com/javan/whenever), by running `crontab -r && whenever --update-crontab --set environment='development'` on the project folder. Prices now should update every 5 minutes.

### User Credentials:

Once runned the seed, you can log in with
`email: defiant@mail.com`
`password: 123456`

<!-- AUTOMATED TEST -->
### Automated Test

To run all the test enviroment run in the same folder of the app:
```bash
rspec
```

## Authors

👤 **Santiago Llapur**

- Github: [SantiLl](https://github.com/SantilL)
- Blog: [https://santiagollapur.com/](https://santiagollapur.com/)
- LinkedIn: [santillapur](https://www.linkedin.com/in/santillapur/)

## 🤝 Contributing

### Commit convention
#### `<type>[optional scope]: <description>`

##### `<type>`
```
feat    - A new feature
fix     - A bug fix
refact  - A code change that neither fixes a bug nor adds a feature
style   - Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
docs    - Documentation only changes
perf    - A code change that improves performance
```

##### `<description>`
- Capitalize the subject line
- Do not end the subject line with a period
- Use the imperative mood in the subject line

##### Examples
```
feat[footer]: Add new links
fix[user]: Get profile image from cloudinary
refact: Abstract methods for dry
```

[Must read](https://chris.beams.io/posts/git-commit/#seven-rules)

&nbsp;
### Branch naming convention
#### `<type>/<name>`

##### `<type>`
```
bug    - Code changes linked to a known issue
feat   - A new feature
refact - Refactor code
hotfix - Quick fixes to the codebase
junk   - Experiments (will never be merged)
```

##### `<name>`
Always use dashes to seperate words, and keep it short.

##### Examples
```
feat/general-styles
bug/login-ie
```

## Resources:
Here are some of the resources that helped me to develop the app:

https://github.com/heartcombo/devise#getting-started

https://stackoverflow.com/questions/23094654/user-favorites-system-in-rails/23095574

https://github.com/jnunemaker/httparty

https://stackoverflow.com/questions/2080188/recurring-tasks-in-a-ruby-on-rails-application-cron-or-other

https://stackoverflow.com/questions/39773890/how-to-remove-disable-sign-up-from-devise

https://stackoverflow.com/questions/41972575/generating-devise-controllers-rails-devise/41972901

https://www.codewithjason.com/rails-integration-tests-rspec-capybara/

https://stackoverflow.com/questions/11514968/rails-using-whenever-gem-in-development/11519175
