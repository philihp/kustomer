
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kustomer/version'

Gem::Specification.new do |spec|
  spec.name          = 'kustomer'
  spec.version       = Kustomer::VERSION
  spec.authors       = ['Philihp Busby']
  spec.email         = ['philihp@gmail.com']

  spec.summary       = 'A convenient gem for accessing the Kustomer API'
  spec.description   = 'A convenient gem for manipulating your Kustomer instance through their standard API'
  spec.homepage      = 'https://github.com/dressanomalie/kustomer'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
