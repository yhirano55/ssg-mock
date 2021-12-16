class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages, comment: 'ページ' do |t|
      t.references :book, null: false, foreign_key: true
      t.text :content, null: false, comment: '本文'

      t.timestamps
    end
  end
end
