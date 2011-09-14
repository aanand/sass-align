html = "index.html"
ronn = "tmp/README.ronn"

directory "tmp"

task :default do
  sh "git show master:doc/ronn/README.ronn > #{ronn}"
  sh "ronn --html --pipe #{ronn} > #{html}"
end
