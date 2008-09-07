Gem::Specification.new do |s|
  s.name = %q{textile2markdown}
  s.version = "0.0.1"
 
  s.specification_version = 2 if s.respond_to? :specification_version=
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad Woolley"]
  s.date = %q{2008-09-06}
  s.description = %q{Converts Textile files to Markdown}
  s.email = %q{thewoolleyman@gmail.com}
  s.extra_rdoc_files = [
    "Manifest",
    "README.txt",
    "bin/textile2markdown",
    "lib/textile2markdown.rb",
    "test/expected.markdown",
    "test/testfile",
    "test/textile2markdown_test.rb"]
  s.files = [
    "Manifest",
    "README.txt",
    "bin/textile2markdown",
    "lib/textile2markdown.rb",
    "test/expected.markdown",
    "test/testfile",
    "test/textile2markdown_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://textile2markdown.rubyforge.org}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Textile2Markdown", "--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{textile2markdwn}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Converts Textile files to Markdown.}
  s.executables = ['textile2markdown']
end