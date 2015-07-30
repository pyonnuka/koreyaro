class AddStatusToTheme < ActiveRecord::Migration
  def change
    add_column :themes, :status, :string
  end
end
