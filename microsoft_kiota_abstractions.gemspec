# frozen_string_literal: true

require_relative 'lib/microsoft_kiota_abstractions/version'

Gem::Specification.new do |spec|
  spec.name          = 'microsoft_kiota_abstractions'
  spec.version       = MicrosoftKiotaAbstractions::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'graphsdkpub+ruby@microsoft.com'
  spec.description   = 'Microsoft Kiota Abstractions - Ruby abstractions for building library agnostic http client'
  spec.summary       = 'The Kiota abstractions are language specific libraries defining the basic constructs Kiota projects need once an SDK has been generated from an OpenAPI definition.'
  spec.homepage      = 'https://microsoft.github.io/kiota/'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/microsoft/kiota-abstractions-ruby/issues',
    'changelog_uri'   => 'https://github.com/microsoft/kiota-abstractions-ruby/blob/main/CHANGELOG.md',
    'homepage_uri'    => spec.homepage,
    'source_code_uri' => 'https://github.com/microsoft/kiota-abstractions-ruby',
    'github_repo'     => 'ssh://github.com/microsoft/kiota-abstractions-ruby'
  }
  spec.required_ruby_version = '>= 2.4'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'stduritemplate', '>= 0.0.39', '< 1.1.0'
  spec.add_runtime_dependency 'iso8601', '~> 0.13.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
