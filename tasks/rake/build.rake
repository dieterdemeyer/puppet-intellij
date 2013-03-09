require File.expand_path('../../env', __FILE__)

desc "Check puppet module syntax & code style and run RSpec tests"
task :build do
  Rake::Task[:clobber].invoke
  Rake::Task[:syntax].invoke
  Rake::Task[:style].invoke
  Rake::Task[:spec].invoke
end
