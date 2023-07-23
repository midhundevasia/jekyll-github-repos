require_relative "lib/version"

Gem::Specification.new do |spec|
    spec.name          = 'jekyll-github-repos'
    spec.version       = Jekyll::GitHubReposVersion::VERSION
    spec.summary       = 'Jekyll plugin to fetch and list GitHub repositories'
    spec.description   = 'A Jekyll plugin to fetch and list GitHub repositories in Liquid templates'
    spec.authors       = ['Midhun Devasia']
    spec.email         = 'hello@midhundev.asia'
    spec.homepage      = 'https://github.com/midhundevasia/jekyll-github-repos'
    spec.license       = 'MIT'
  
    spec.files         = Dir['lib/**/*', 'jekyll-github-repos.gemspec', 'README.md', 'License']
    spec.require_paths = ['lib']

    if spec.respond_to?(:metadata)
      spec.metadata["allowed_push_host"] = "https://rubygems.org"
    else
      raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
    end

    spec.add_dependency "jekyll", ">= 3.7", "< 5.0"
    spec.add_dependency "octokit", ">= 5.6"
    spec.add_development_dependency "bundler", "~> 1.15"

  end
  