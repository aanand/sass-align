Gem::Specification.new do |s|
  s.name        = "sass-format"
  s.version     = "0.1.0"
  s.authors     = ["Aanand Prasad"]
  s.email       = "aanand.prasad@gmail.com"
  s.homepage    = "https://github.com/aanand/sass-format"
  s.summary     = "Command-line tool to align property values nicely in .sass files"

  man_files = Dir.glob("doc/man/*")

  s.files       = `git ls-files`.split("\n") + man_files
  s.executables = ["sass-format"]
end

