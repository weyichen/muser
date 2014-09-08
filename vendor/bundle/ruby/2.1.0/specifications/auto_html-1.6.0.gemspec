# -*- encoding: utf-8 -*-
# stub: auto_html 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "auto_html"
  s.version = "1.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dejan Simic"]
  s.date = "2012-07-29"
  s.description = "Automatically transforms URIs (via domain) and includes the destination resource (Vimeo, YouTube movie, image, ...) in your document"
  s.email = "desimic@gmail.com"
  s.homepage = "http://github.com/dejan/auto_html"
  s.rubygems_version = "2.2.2"
  s.summary = "Transform URIs to appropriate markup"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rinku>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<redcarpet>, ["~> 2.0"])
    else
      s.add_dependency(%q<rinku>, ["~> 1.5.0"])
      s.add_dependency(%q<redcarpet>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rinku>, ["~> 1.5.0"])
    s.add_dependency(%q<redcarpet>, ["~> 2.0"])
  end
end
