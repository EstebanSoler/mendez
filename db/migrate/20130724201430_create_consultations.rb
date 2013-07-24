class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :name
      t.string :email
      t.text :consultation
      t.string :phone_number

      t.timestamps
    end
  end
end
