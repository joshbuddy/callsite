require 'spec'
require 'spec/rake/spectask'
task :spec => ['spec:dirge', 'spec:load_path_find', 'spec:callsite']
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

  Spec::Rake::SpecTask.new(:callsite) do |t|
    t.spec_opts ||= []
    t.spec_opts << "-rubygems"
    t.spec_opts << '-rlib/load_path_find'
    t.spec_opts << "--options" << "spec/spec.opts"
    t.spec_files = FileList['spec/**/callsite_spec.rb']
  end

end

require 'ext/gem_rake'
Bundler::GemHelper.install_tasks