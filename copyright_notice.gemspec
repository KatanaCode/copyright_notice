
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copyright_notice/version"

Gem::Specification.new do |spec|
  spec.name          = "copyright_notice"
  spec.version       = Copyright::Notice::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["gavin@katanacode.com"]

  spec.summary       = %q{Add a smart copyright notice to the footer of your webpage}
  spec.description   = %q{A standardised, customisable copyright notice for your website }
  spec.homepage      = "https://github.com/katanacode/copyright_notice"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
