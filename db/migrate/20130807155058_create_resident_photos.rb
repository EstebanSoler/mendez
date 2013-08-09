class CreateResidentPhotos < ActiveRecord::Migration
  def change
    create_table :resident_photos do |t|
      t.string :title

      t.timestamps
    end
  end
end
