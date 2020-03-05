require_relative 'lib/aga_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "aga_palindrome"
  spec.version       = AgaPalindrome::VERSION
  spec.authors       = ["Aga"]
  spec.email         = ["aga.k396@gmail.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Simple program to detect palindroms from Learn Enough Ruby course}
  spec.homepage      = "https://github.com/agakesik/aga-palindrome"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to
  # any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/agakesik/aga-palindrome"
  spec.metadata["changelog_uri"] = "https://github.com/agakesik/aga-palindrome/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
