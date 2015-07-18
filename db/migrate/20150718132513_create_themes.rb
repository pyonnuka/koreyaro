class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :content
      t.string :kind

      t.timestamps null: false
    end
  end
end
