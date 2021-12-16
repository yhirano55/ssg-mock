class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors, comment: '著者' do |t|
      t.string :name, null: false, comment: '名前'

      t.timestamps
    end
  end
end
