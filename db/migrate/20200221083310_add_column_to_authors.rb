class AddColumnToAuthors < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :name, :string, null: false, default: ""
  end
end
