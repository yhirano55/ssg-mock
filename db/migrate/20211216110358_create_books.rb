class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books, comment: '本' do |t|
      t.text :title, null: false, comment: 'タイトル'
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
