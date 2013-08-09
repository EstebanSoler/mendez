class MachineHasManyMachinePhotos < ActiveRecord::Migration
  def change
    change_table :machine_photos do |t|
      t.belongs_to :machine
    end
  end
end
