class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :title
      t.text :description
      t.text :body

      t.timestamps
    end
  end
end
