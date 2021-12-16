class Page < ApplicationRecord
  belongs_to :book
  has_one :author, through: :book

  delegate :title, :author_name, to: :book, prefix: true, allow_nil: true
end
