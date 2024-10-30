Gem::Specification.new do |s|
  s.name = 'json_value_tester'
  s.version = '1.1.2'
  s.summary = 'json_value_tester'
  s.description = 'Testing Special JsonValue feature'
  s.authors = ['testing']
  s.email = ['test@gmail.com']
  s.homepage = 'https://apimatic.io'
  s.licenses = ['MIT']
  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.add_development_dependency('minitest', '~> 5.24.0')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
