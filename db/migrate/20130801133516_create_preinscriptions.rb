class CreatePreinscriptions < ActiveRecord::Migration
  def change
    create_table :preinscriptions do |t|
      t.text :body

      t.timestamps
    end
  end
end
