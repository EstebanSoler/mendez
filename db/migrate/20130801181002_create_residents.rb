class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
