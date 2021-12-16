class LayoutComponentPreview < ViewComponent::Preview
  def default
    render(LayoutComponent.new)
  end
end
