task :default => "man:all"

begin
  require "ronn"

  namespace :man do
    basename = "README"
    ronn     = "doc/ronn/#{basename}.ronn"
    roff     = "doc/roff/#{basename}"
    man      = "doc/man/#{basename}.txt"
    html     = "doc/html/index.html"

    directory "doc/roff"
    directory "doc/man"
    directory "doc/html"

    file roff => [ronn, "doc/roff"] do
      sh "ronn --roff --pipe #{ronn} > #{roff}"
    end

    file man => [roff, "doc/man"] do
      sh "groff -Wall -mandoc -Tascii #{roff} > #{man}"
    end

    task :all => [man]
  end
rescue LoadError
  $stderr.puts "Install ronn to build man page"
end

