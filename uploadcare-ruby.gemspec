# -*- encoding: utf-8 -*-
require File.expand_path('../lib/uploadcare/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'uploadcare-ruby'
  gem.authors       = ['@rastyagaev (Vadim Rastyagaev)',
                       '@dimituri (Dimitry Solovyov)',
                       '@romanonthego (Roman Dubinin)',
                       '@vizvamitra (Dmitrii Krasnov)']
  gem.email         = ['hello@uploadcare.com']
  gem.summary       = 'Ruby gem for Uploadcare'
  gem.description   = <<-EOF
                        Ruby wrapper for Uploadcare service API.
                        Full documentations on APIs can be found
                        at https://uploadcare.com/documentation/rest/
                        and https://uploadcare.com/documentation/upload/
                      EOF
  gem.metadata      = { 'github' => 'https://github.com/uploadcare/uploadcare-ruby',
                        'issue_tracker' => 'https://github.com/uploadcare/uploadcare-ruby/issues',
                      }
  gem.homepage      = 'https://uploadcare.com/documentation/libs/'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.version       = Uploadcare::VERSION
  gem.add_runtime_dependency 'faraday'
  gem.add_runtime_dependency 'faraday_middleware'
  gem.add_runtime_dependency 'multipart-post'
  gem.add_runtime_dependency 'mime-types'

  gem.add_development_dependency 'rspec', '~> 3.6'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'coveralls'
end
