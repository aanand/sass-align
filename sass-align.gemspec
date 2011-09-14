Gem::Specification.new do |s|
  s.name        = "sass-align"
  s.version     = "0.1.1"
  s.authors     = ["Aanand Prasad"]
  s.email       = "aanand.prasad@gmail.com"
  s.homepage    = "https://github.com/aanand/sass-align"
  s.summary     = "Command-line tool to align property values nicely in .sass files"

  man_files = Dir.glob("doc/man/*")

  s.files       = `git ls-files`.split("\n") + man_files
  s.executables = ["sass-align"]
end

