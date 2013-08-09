class CreateServicePhotos < ActiveRecord::Migration
  def change
    create_table :service_photos do |t|
      t.string :title
      t.belongs_to :service
      t.timestamps
    end
  end
end
