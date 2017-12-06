# HANUMAN Jekyll Theme

Hanuman is a minimal yet powerful Jekyll theme for your blogs and websites.

It is built using the open source AMP Start framework and can be customized as per your requirements.


![Hanuman](/Screenshots/hanuman.jpg "Hanuman Preview")


## Features

- Minimal
- Responsive
- Syntax Highlighting for code
- Cover Images for homepage and blog posts
- Social Sharing
- Simple Navigation Menu
- Pagination
- Google Analytics
- Can be easily installed via "theme gem"
- Github Pages support
- Easily Customisable


## Installation

There are different ways to install the theme - 

### 1. Cloning the repository and updating settings
1. Fork this repository and clone the forked repository.
2. Update the _config.yml file as per your requirements.
3. Add your posts to the _posts directory.
4. Deploy to Github Pages or your own server.

### 2. Ruby Gem Method
Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "hanuman"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: hanuman
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hanuman

### 3. Jekyll Remote Theme
1. Create or update your Gemfile with the following - 

```ruby
source "https://rubygems.org"
gem "github-pages", group: :jekyll_plugins
gem "jekyll-remote-theme"
```

2. Update the bundled gems using `bundle` command.

3. Add `remote_theme: "hanuman"` to your `_config.yml`.

4. Add `jekyll-remote-theme` to the plugins array of your `_config.yml` - 

```yaml
plugins:
  - jekyll-remote-theme
```    
  
## Deploying to Github Pages

There are 2 methods you can use to deploy the site to Github Pages - 

1. Run `bundle exec jekyll serve` inside your cloned repository. Push the contents of the resulting _site to your Github Pages repository.

2. Using Travis CI
- Set up travis-ci for your fork. 
- Generate your secure token with the travis gem:
  Run `gem install travis` on your terminal.
- Grab the GH_TOKEN from https://github.com/settings/tokens
- Then run `travis encrypt 'GIT_NAME="YOUR_USERNAME" GIT_EMAIL="YOUR_EMAIL" GH_TOKEN=YOUR_TOKEN'`
- Add the token to your .travis.yml file.

  Now you just need to push the files. Travis will generate the HTML files and automatically push them to your gh-pages branch. 
This is the setup I am using.

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/samanyougarg/hanuman. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

To submit a pull request - 

1. Fork/clone the repository.
2. Develop.
3. Create a new branch from the master branch.
4. Open a pull request on Github describing what was fixed or added.


## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

