class ChangeBodyToSildesInfos < ActiveRecord::Migration
  def change
    change_column :slide_infos, :body, :text
  end
end
