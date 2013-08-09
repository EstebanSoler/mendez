class CreateMachinePhotos < ActiveRecord::Migration
  def change
    create_table :machine_photos do |t|
      t.string :title

      t.timestamps
    end
  end
end
