begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "callsite"
    s.description = s.summary = "Caller/backtrace parser with some useful utilities for manipulating the load path, and doing other relative things."
    s.email = "joshbuddy@gmail.com"
    s.homepage = "http://github.com/joshbuddy/callsite"
    s.authors = ["Joshua Hull"]
    s.files = FileList["[A-Z]*", "{lib}/**/*"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'spec'
require 'spec/rake/spectask'
task :spec => ['spec:dirge', 'spec:load_path_find']
namespace(:spec) do
  Spec::Rake::SpecTask.new(:dirge) do |t|
    t.spec_opts ||= []
    t.spec_opts << "-rubygems"
    t.spec_opts << '-rlib/dirge'
    t.spec_opts << "--options" << "spec/spec.opts"
    t.spec_files = FileList['spec/**/dirge_spec.rb']
  end

  Spec::Rake::SpecTask.new(:load_path_find) do |t|
    t.spec_opts ||= []
    t.spec_opts << "-rubygems"
    t.spec_opts << '-rlib/load_path_find'
    t.spec_opts << "--options" << "spec/spec.opts"
    t.spec_files = FileList['spec/**/load_path_find_spec.rb']
  end

end

