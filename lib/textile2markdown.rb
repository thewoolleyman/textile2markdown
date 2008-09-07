class Textile2Markdown
  def convert_file(textile_filename, markdown_filename = nil)
    markdown_filename ||= "#{textile_filename}.markdown"
    textile_lines = IO.readlines(textile_filename)
    File.open(markdown_filename, 'w') do |markdown_file|
      textile_lines.each do |textile_line|
        markdown_file.write(convert(textile_line))
      end
    end
    0
  end
  
  def convert(input)
    tmp = convert_links(input)
    tmp = convert_ul(tmp)
    tmp = convert_ol(tmp)
    tmp
  end
  
  protected

  def convert_links(input)
    input.gsub(/"(.*)":(.+?)(?=,| |$)/, '[\1](\2)') 
  end

  def convert_ul(input)
    input.gsub(/^\*\*\*\*/, '      *').gsub(/^\*\*\*/, '    *').gsub(/^\*\*/, '  *')
  end

  def convert_ol(input)
    input.gsub(/^####/, '         1.').gsub(/^###/, '      1.').gsub(/^##/, '   1.').gsub(/^#/, '1.')
  end
end