class CreateWelcomePhotos < ActiveRecord::Migration
  def change
    create_table :welcome_photos do |t|
      t.string :title

      t.timestamps
    end
  end
end
