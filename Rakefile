html = "index.html"
ronn = "tmp/README.ronn"

directory "tmp"

file ronn => "tmp" do
  sh "git show master:doc/ronn/README.ronn > #{ronn}"
end

file html => ronn do
  sh "ronn --html --pipe #{ronn} > #{html}"
end

task :default => html
