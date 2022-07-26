require_relative 'lib/kaomoji_list/version'

Gem::Specification.new do |spec|
  spec.name          = "kaomojis_list"
  spec.version       = KaomojiList::VERSION
  spec.authors       = ["brnnkt", "kopylovvlad"]
  spec.email         = ["kopylov.vlad@gmail.com"]

  spec.summary       = "Collection of Kaomoji (=^･ω･^=)"
  spec.description   = "Collection of Kaomoji (=^･ω･^=)"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["source_code_uri"] = "https://github.com/kopylovvlad/kaomoji_list"
  spec.metadata["changelog_uri"]   = "https://github.com/kopylovvlad/kaomoji_list/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.files         <<  Dir['lib/**/*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
