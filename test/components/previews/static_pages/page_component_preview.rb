class StaticPages::PageComponentPreview < ViewComponent::Preview
  def default
    render(StaticPages::PageComponent.new)
  end
end
