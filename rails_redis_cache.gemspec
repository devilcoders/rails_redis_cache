spec = Gem::Specification.new do |s|
  s.name = 'rails_redis_cache'
  s.version = '0.0.4'

  s.author = 'Peter Schroder'
  s.description = 'Rails 3 cache store implementation using Redis.'
  s.email = 'phoetmail@googlemail.com'
  s.homepage = 'http://github.com/phoet/rails_redis_cache'
  s.rubyforge_project = 'http://github.com/phoet/rails_redis_cache'
  s.summary = 'Rails 3 cache store implementation using Redis. See http://github.com/phoet/rails_redis_cache for more information.'

  s.has_rdoc = true
  s.rdoc_options = ['-a', '--inline-source', '--charset=UTF-8']
  
  s.files = Dir.glob('lib/*.rb') + %w(README.rdoc CHANGELOG)
  s.test_files = Dir.glob('test/test_*.rb')
  
  s.add_dependency('activesupport', '~> 3.0.0')
  s.add_dependency('redis', '>= 2.2.2')
end