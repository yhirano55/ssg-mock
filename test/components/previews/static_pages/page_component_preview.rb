class StaticPages::PageComponentPreview < ViewComponent::Preview
  def default
    render(StaticPages::PageComponent.new(page: page))
  end

  private

  def page
    Page.new(id: 12345, content: FFaker::Lorem.paragraph, book: book)
  end

  def book
    Book.new(id: 12345, title: FFaker::Lorem.sentence, author: author)
  end

  def author
    Author.new(id: 12345, name: FFaker::Name.name)
  end
end
