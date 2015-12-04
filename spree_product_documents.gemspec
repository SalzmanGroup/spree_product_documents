# -*- encoding: utf-8 -*-
# stub: spree_product_documents 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_product_documents"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["SalzmanGroup"]
  s.date = "2015-09-09"
  s.description = "Add (optional) gem description here"
  s.email = "example@salzmangroup.com"
  s.homepage = "http://www.wholelattelove.com"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Add gem summary here"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<spree_backend>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<spree_frontend>, ["~> 2.3.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.1"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.2"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14.0"])
      s.add_development_dependency(%q<sass-rails>, ["~> 4.0.2"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_development_dependency(%q<pry-rails>, [">= 0"])
      s.add_development_dependency(%q<xray-rails>, [">= 0"])
      s.add_development_dependency(%q<quiet_assets>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
      s.add_dependency(%q<spree_backend>, ["~> 2.3.0"])
      s.add_dependency(%q<spree_frontend>, ["~> 2.3.0"])
      s.add_dependency(%q<capybara>, ["~> 2.1"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<factory_girl>, ["~> 4.2"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14.0"])
      s.add_dependency(%q<sass-rails>, ["~> 4.0.2"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_dependency(%q<pry-rails>, [">= 0"])
      s.add_dependency(%q<xray-rails>, [">= 0"])
      s.add_dependency(%q<quiet_assets>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.3.0"])
    s.add_dependency(%q<spree_backend>, ["~> 2.3.0"])
    s.add_dependency(%q<spree_frontend>, ["~> 2.3.0"])
    s.add_dependency(%q<capybara>, ["~> 2.1"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<factory_girl>, ["~> 4.2"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14.0"])
    s.add_dependency(%q<sass-rails>, ["~> 4.0.2"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>, [">= 0"])
    s.add_dependency(%q<pry-rails>, [">= 0"])
    s.add_dependency(%q<xray-rails>, [">= 0"])
    s.add_dependency(%q<quiet_assets>, [">= 0"])
  end
end
