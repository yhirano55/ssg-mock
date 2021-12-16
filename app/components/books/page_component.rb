# frozen_string_literal: true

class Books::PageComponent < ViewComponent::Base
  def initialize(page:)
    @page = page
  end

end
