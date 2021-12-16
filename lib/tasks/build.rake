require "fileutils"

namespace :build do
  desc "Generate all pages"
  task all: :environment do
    start_time = Time.current

    target_dir = Rails.root.join('public', 'build')
    FileUtils.remove_entry_secure(target_dir)
    FileUtils.mkdir(target_dir)

    Page.includes(book: :author).all.find_each do |page|
      component = StaticPages::PageComponent.new(page: page)
      html = ApplicationController.renderer.render(component, layout: nil)
      path = target_dir.join("pages-#{page.id}.html")
      puts "Generate #{path}"
      File.open(path, "wb+") { |io| io.write html }
    end

    puts "Done: #{Time.current - start_time}"
  end
end
