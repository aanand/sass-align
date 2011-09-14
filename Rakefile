html = "index.html"
ronn = "README.ronn"

file ronn do
  sh "git show master:doc/ronn/README.ronn > #{ronn}"
end

file html => ronn do
  sh "ronn --html --pipe #{ronn} > #{html}"
end

task :default => html
