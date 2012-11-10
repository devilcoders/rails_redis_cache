require 'rake/testtask'
require "rake/rdoctask"
require "rake/gempackagetask"

spec = eval(File.new("rails_redis_cache.gemspec").readlines.join("\n"))

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

Rake::RDocTask.new(:rdoc_dev) do |rd|
  rd.rdoc_files.include("lib/**/*.rb", "README.rdoc")
  rd.options + ['-a', '--inline-source', '--charset=UTF-8']
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.ruby_opts << "-rubygems"
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end

