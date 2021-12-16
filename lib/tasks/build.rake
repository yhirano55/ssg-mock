namespace :build do
  desc "Generate all pages"
  task all: :environment do
    start_time = Time.current

    Page.includes(book: :author).all.find_each do |page|
      component = StaticPages::PageComponent.new(page: page)
      html = ApplicationController.renderer.render(component, layout: nil)
      path = Rails.root.join('public', 'build', "pages-#{page.id}.html")
      puts "Generate #{path}"
      File.open(path, "wb+") { |io| io.write html }
    end

    puts "Done: #{Time.current - start_time}"
  end
end
