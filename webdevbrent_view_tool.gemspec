
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webdevbrent_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "webdevbrent_view_tool"
  spec.version       = WebdevbrentViewTool::VERSION
  spec.authors       = ["webdevbrent"]
  spec.email         = ["webdeveloperbrent@gmail.com"]

  spec.summary       = %q{View Specific Methods for Personal consumption}
  spec.description   = %q{Provides generated HTML data for Rails Applications.}
  spec.homepage      = "http://brent.codes"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
