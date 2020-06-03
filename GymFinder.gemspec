require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name          = "GymFinder"
  spec.version       = GymFinder::VERSION
  spec.authors       = ["The-Gentleman"]
  spec.email         = ["zraja4402@gmail.com"]

  spec.summary       = %q{"Allows the user to select a gym and view relevent information."}
  spec.homepage      = "https://github.com/The-Gentleman/GymFinder-CLI"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/The-Gentleman/GymFinder-CLI"
  spec.metadata["changelog_uri"] = "https://github.com/The-Gentleman/GymFinder-CLI"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency 'nokogiri', '~> 1.6', '>= 1.6.8'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'bundler', '~> 2.1', '>= 2.1.4'
  spec.add_development_dependency 'tty-prompt', '~> 0.21.0'
  spec.add_development_dependency 'rubysl-open-uri', '~> 2.0'

end
