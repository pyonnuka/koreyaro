class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.text :content
      t.string :kind

      t.timestamps null: false
    end
  end
end
