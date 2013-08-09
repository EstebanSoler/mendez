class CreateGraduates < ActiveRecord::Migration
  def change
    create_table :graduates do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :email
      t.date :graduation_date
      t.string :gender

      t.timestamps
    end
  end
end
