# defiant-challenge

<br />
<p align="center">
<img src="https://defiantapp.tech/wp-content/uploads/2020/07/logo.png" alt="Logo">

  <h3 align="center">Defiant Challenge</h3>

  <p align="center">
    This project consists of building an API that processes client files and creates delivery orders asynchronously.
    <br />
    <br />
    <a href="https://github.com/SantiLl/rails-challenge/issues">Report Bug</a>
    ·
    <a href="https://github.com/SantiLl/rails-challenge/issues">Request Feature</a>
  </p>
</p>

## Built With

- Ruby 2.6.3
- Rails 6.0.3.7
- Postgresql 13.2

## Live Demo

> There is no Live Demo for this project yet.


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

