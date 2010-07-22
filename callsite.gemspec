# -*- encoding: utf-8 -*-

require File.join(File.dirname(__FILE__), 'lib', 'callsite', 'version')

Gem::Specification.new do |s|
  s.name = %q{callsite}
  s.version = Callsite::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Hull"]
  s.date = %q{2010-07-22}
  s.description = %q{Caller/backtrace parser with some useful utilities for manipulating the load path, and doing other relative things.}
  s.email = %q{joshbuddy@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://github.com/joshbuddy/callsite}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Caller/backtrace parser with some useful utilities for manipulating the load path, and doing other relative things.}
  s.test_files = `git ls-files`.split("\n").select{|s| s[/^spec/]}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

