class Book < ApplicationRecord
  belongs_to :author
  has_many :pages, dependent: :destroy
end
