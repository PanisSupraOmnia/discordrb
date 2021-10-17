# frozen_string_literal: true

require_relative 'lib/discordrb/webhooks/version'

Gem::Specification.new do |spec|
  spec.name          = 'discordrb-webhooks'
  spec.version       = Discordrb::Webhooks::VERSION
  spec.authors       = %w[meew0 swarley]
  spec.email         = ['']

  spec.summary       = 'Webhook client for discordrb'
  spec.description   = "A client for Discord's webhooks to fit alongside [discordrb](https://rubygems.org/gems/discordrb)."
  spec.homepage      = 'https://github.com/shardlab/discordrb'
  spec.license       = 'MIT'

  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/shardlab/discordrb/issues',
    'changelog_uri' => 'https://github.com/shardlab/discordrb/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://drb.shardlab.dev/v#{spec.version}/Discordrb/Webhooks.html",
    'homepage_uri' => spec.homepage,
    'mailing_list_uri' => 'https://discord.gg/cyK3Hjm',
    'source_code_uri' => 'https://github.com/shardlab/discordrb',
    'wiki_uri' => 'https://github.com/shardlab/discordrb/wiki'
  }

  spec.files         = `git ls-files -z lib/discordrb/webhooks/`.split("\x0") + ['lib/discordrb/webhooks.rb', 'discordrb-webhooks.gemspec']
  spec.bindir        = 'exe'
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client', '>= 2.0.0'

  spec.required_ruby_version = '>= 2.6'
end
