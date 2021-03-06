# -*- encoding: utf-8 -*-
# stub: rails_feather 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_feather".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/abeidahmed/rails_feather/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/abeidahmed/rails_feather", "source_code_uri" => "https://github.com/abeidahmed/rails_feather" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["abeidahmed".freeze]
  s.date = "2021-03-15"
  s.email = ["abeidahmed92@gmail.com".freeze]
  s.homepage = "https://github.com/abeidahmed/rails_feather".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.6".freeze)
  s.rubygems_version = "3.3.3".freeze
  s.summary = "Ruby on Rails view helper method for rendering beautiful feather icons.".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 0"])
  end
end
