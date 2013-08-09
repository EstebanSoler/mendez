class AdddescriptionToSildesInfos < ActiveRecord::Migration
  def change
    add_column :slide_infos, :description, :string
    change_column (:slide_infos, :body, :text)
  end
end
