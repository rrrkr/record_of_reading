class AddSrcToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :src, :string
  end
end
