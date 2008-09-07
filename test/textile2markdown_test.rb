require 'test/unit'
require "#{File.dirname(__FILE__)}/../lib/textile2markdown.rb"

class Textile2MarkdownTest < Test::Unit::TestCase
  def test_link_conversion
    textile_filename = "#{File.dirname(__FILE__)}/testfile"
    generated_markdown_filename = "#{File.dirname(__FILE__)}/testfile.markdown"
    system("rm -f #{generated_markdown_filename}") || raise("unable to delete test output file")
    system("#{File.dirname(__FILE__)}/../bin/textile2markdown #{textile_filename}") || raise("unable to convert")
    generated_markdown = IO.readlines(generated_markdown_filename)
    expected_markdown_filename = "#{File.dirname(__FILE__)}/expected.markdown"
    expected_markdown = IO.readlines(expected_markdown_filename)
    assert_equal expected_markdown, generated_markdown
  end
end