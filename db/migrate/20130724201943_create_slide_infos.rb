class CreateSlideInfos < ActiveRecord::Migration
  def change
    create_table :slide_infos do |t|
      t.string :title
      t.string :body
      t.string :image_url

      t.timestamps
    end
  end
end
