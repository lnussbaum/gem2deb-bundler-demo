# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "gem2deb-bundler-demo"
  spec.version       = "0.1"
  spec.authors       = ["Lucas Nussbaum"]
  spec.email         = ["lucas@debian.org"]

  spec.summary       = "Very basic demo of using gem2deb with bundler"
  spec.description   = "Very basic demo of using gem2deb with bundler"
  spec.homepage      = "https://github.com/lnussbaum/gem2deb-bundler-demo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "colorize", ">= 0.7.3"
  spec.add_dependency "ffi", ">= 1.9.6"
end
