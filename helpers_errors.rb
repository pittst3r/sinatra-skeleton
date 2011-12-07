helpers do
  # Starter helper. Modify path to suit app.
  def markdown_to_html(file)
    RDiscount.new(File.read("views/content/#{file}.markdown"), :smart).to_html
  end
end

# Example error
=begin
error 500 do
  @content = "Page not found"
  haml :index
end
=end