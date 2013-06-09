# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git/keys/version'

Gem::Specification.new do |spec|
  spec.name          = "git-keys"
  spec.version       = Git::Keys::VERSION
  spec.authors       = ["ZPH"]
  spec.email         = ["Zander@civet.ws"]
  spec.description   = %q{Git-keys gathers a user's public key from Github}
  spec.summary       = %q{Git-keys is a convenience gem for gathering a user's public key from Github.}
  spec.homepage      = "https://github.com/zph/git-keys"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
