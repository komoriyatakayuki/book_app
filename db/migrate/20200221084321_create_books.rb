class CreateBooks < ActiveRecord::Migration[5.0]
  
  def change
    create_table :authors do |t|
      t.string  :name
      t.timestamps
    end
  end
    
  def change
    create_table :books do |t|
      t.belongs_to :author
      t.datetime :published_at

      t.timestamps
    end
  end
end
