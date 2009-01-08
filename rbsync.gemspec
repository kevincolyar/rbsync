# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rbsync}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kevin Colyar"]
  s.date = %q{2009-01-07}
  s.description = %q{Rsync wrapper to provide easy push and pull from the command line}
  s.email = %q{kevin@colyar.net}
  s.executables = ["pull_from", "push_to"]
  s.extra_rdoc_files = ["bin/pull_from", "bin/push_to", "lib/rbsync.rb", "README.rdoc"]
  s.files = ["bin/pull_from", "bin/push_to", "lib/rbsync.rb", "Manifest", "Rakefile", "README.rdoc", "rbsync.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rbsync", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rbsync}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Rsync wrapper to provide easy push and pull from the command line}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
