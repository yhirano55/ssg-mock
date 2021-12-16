# frozen_string_literal: true

class StaticPages::PageComponent < ViewComponent::Base
  def initialize(page:)
    @page = page
  end

  private

  attr_reader :page
end
