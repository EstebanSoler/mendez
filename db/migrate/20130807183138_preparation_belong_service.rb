class PreparationBelongService < ActiveRecord::Migration
  def change
    change_table :preparations do |t|
      t.belongs_to :service
    end
  end
end
