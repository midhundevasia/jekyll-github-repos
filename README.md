# `jekyll-github-repos`: Jekyll Plugin for List Github Repositories 

The GitHub Repositories Jekyll Plugin (`jekyll-github-repos`) is a custom Jekyll generator that fetches and lists GitHub repositories for a specified user. It uses the Octokit gem to interact with the GitHub API and retrieve repository data.

## Installation
Add the gem to your Jekyll project's Gemfile:

```ruby
gem 'octokit'
gem 'jekyll-github-repos', '~> 1.0'
```

Then, run `bundle install` to install the required gems.

## Configuration
In your Jekyll project's `_config.yml`, add the following settings:

```yaml
github_repos:
  username: your_github_username
  access_token: your_github_access_token
```

Replace `your_github_username` and `your_github_access_token` with your actual GitHub username and access token. Ensure that the access token has the necessary permissions to access the repositories.

## Usage
After configuring the plugin, the GitHub Repositories data will be available in your Jekyll site's `site.data['github_repos']` variable. You can use it in your Liquid templates to display the repositories.

For example, in your Liquid template:

```liquid
{% for repo in site.data.github_repos %}
  <h2><a href="{{ repo.url }}">{{ repo.name }}</a></h2>
  <p>{{ repo.desc }}</p>
{% endfor %}
```

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing
Bug reports and pull requests are welcome on GitHub at [github.com/midhundevasia/jekyll-github-repos](https://github.com/midhundevasia/jekyll-github-repos). Please read our [Contributing Guide](CONTRIBUTING.md) for more information.

## About the Author
This plugin is developed and maintained by Your Name. You can find more of my projects at [midhundev.asia](https://midhundev.asia/projects).

## Support
For questions, issues, or feature requests, please [open an issue](https://github.com/midhundevasia/jekyll-github-repos/issues).

## Acknowledgements
Special thanks to the [Octokit](https://github.com/octokit/octokit.rb) gem for providing an easy-to-use Ruby interface for the GitHub API.
