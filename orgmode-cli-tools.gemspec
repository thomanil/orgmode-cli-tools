# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "orgmode_cli_tools"

Gem::Specification.new do |s|
  s.name        = "orgmode-cli-tools"
  s.version     = OrgmodeCliTools::VERSION
  s.authors     = ["Thomas Kjeldahl Nilsson"]
  s.email       = ["thomas@kjeldahlnilsson.net"]
  s.homepage    = "https://kjeldahlnilsson.net"
  s.summary     = %q{CLI convenience tools for Org Mode files}
  s.description = %q{CLI convenience tools for Org Mode files}

  s.rubyforge_project = "orgmode-cli-tools"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "nokogiri"

  s.add_development_dependency "minitest"
  s.add_development_dependency "shoulda"
  s.add_development_dependency "shoulda-context"
end
