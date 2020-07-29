require_relative 'lib/pokemon_cards/version'

Gem::Specification.new do |spec|
  spec.name          = "pokemon_cards"
  spec.version       = PokemonCards::VERSION
  spec.authors       = ["Teodoro"]
  spec.email         = ["tedtke514@gmail.com"]

  spec.summary       = %q{affasdfasdf.}
  spec.description   = %q{asdfasdfa.}
  spec.homepage      = "http://www.bob.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.bob.com"
  spec.metadata["changelog_uri"] = "http://www.bob.com."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "pry"
end
