class Book < ApplicationRecord
  belongs_to :author
  has_many :pages, dependent: :destroy

  delegate :name, to: :author, prefix: true, allow_nil: true
end
