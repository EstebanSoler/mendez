class AddBodyToServices < ActiveRecord::Migration
  def change
    add_column :services, :body, :text
  end
end
