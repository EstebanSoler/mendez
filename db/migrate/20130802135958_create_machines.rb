class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end
