class AddTitleToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :title, :string
  end
end
