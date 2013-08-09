class WelcomePhotoBelongToWelcome < ActiveRecord::Migration
  def change
    change_table :welcome_photos do |t|
      t.belongs_to :welcome
    end
  end
end
