module JekyllGithubRepos
  class Generator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      client = Octokit::Client.new(access_token: site.config['github_repos']['access_token'])
      repos = client.repos(site.config['github_repos']['username'])

      repo_list = repos.map do |repo|
        {
          'name' => repo.name,
          'full_name' => repo.full_name,
          'url' => repo.html_url,
          'desc' => repo.description,
          'created_at' => repo.created_at,
          'pushed_at' => repo.pushed_at,
          'updated_at' => repo.updated_at,
          'homepage' => repo.homepage,
          'forks_count' => repo.forks_count,
          'stargazers_count' => repo.stargazers_count,
          'watchers_count' => repo.watchers_count,
          'forks' => repo.forks,
          'open_issues' => repo.open_issues,
          'watchers' => repo.watchers,
        }
      end
      site.data['github_repos'] = repo_list
    end
  end
end
