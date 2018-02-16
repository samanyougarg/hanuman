# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "hanuman"
  spec.version       = "0.4.0"
  spec.authors       = ["Samanyou Garg"]
  spec.email         = ["samanyugarg@gmail.com"]

  spec.summary       = %q{A responsive, lightning-fast Jekyll theme built using AMP (Accelerated Mobile Pages) to speed up your blogs and websites.}
  spec.homepage      = "https://github.com/samanyougarg/hanuman"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.6"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-compose", "~> 0.6.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.3"
end
