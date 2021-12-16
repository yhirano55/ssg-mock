class Books::PageComponentPreview < ViewComponent::Preview
  def default
    render(Books::PageComponent.new)
  end
end
