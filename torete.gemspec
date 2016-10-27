lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'torete/version'

Gem::Specification.new do |spec|
  spec.name          = 'torete'
  spec.version       = Torete::VERSION
  spec.authors       = ['SHIOYA, Hiromu']
  spec.email         = ['kwappa.856@gmail.com']

  spec.summary       = %q{I want resavations!}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kwappa/torete'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake',    '~> 10.0'
end
