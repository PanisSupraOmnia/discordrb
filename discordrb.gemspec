# frozen_string_literal: true

require_relative 'lib/discordrb/version'

Gem::Specification.new do |spec|
  spec.name          = 'discordrb'
  spec.version       = Discordrb::VERSION
  spec.authors       = %w[meew0 swarley]
  spec.email         = ['']

  spec.summary       = 'Discord API for Ruby'
  spec.description   = 'A Ruby implementation of the Discord (https://discord.com) API.'
  spec.homepage      = 'https://github.com/shardlab/discordrb'
  spec.license       = 'MIT'

  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/shardlab/discordrb/issues',
    'changelog_uri' => 'https://github.com/shardlab/discordrb/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://drb.shardlab.dev/v#{spec.version}",
    'homepage_uri' => spec.homepage,
    'mailing_list_uri' => 'https://discord.gg/cyK3Hjm',
    'source_code_uri' => 'https://github.com/shardlab/discordrb',
    'wiki_uri' => 'https://github.com/shardlab/discordrb/wiki'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features|examples|bin|lib/discordrb/webhooks)/|\.(?:git|circleci|rspec|rubocop|overcommit))})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'ffi', '>= 1.9.24'
  spec.add_dependency 'opus-ruby'
  spec.add_dependency 'rest-client', '>= 2.0.0'
  spec.add_dependency 'websocket-client-simple', '>= 0.3.0'

  spec.add_dependency 'discordrb-webhooks', '~> 3.4.2'

  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'bundler', '>= 1.10', '< 3'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'redcarpet', '~> 3.5.0' # YARD markdown formatting
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'rspec-prof', '~> 0.0.7'
  spec.add_development_dependency 'rubocop', '~> 1.21.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'simplecov', '~> 0.21.0'
  spec.add_development_dependency 'yard', '~> 0.9.9'
end
