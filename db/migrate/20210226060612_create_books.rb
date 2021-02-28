class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.bigint :user_id
      t.string :title
      t.string :categoly
      t.integer :pages
      t.boolean :favorite

      t.timestamps
    end
  end
end
