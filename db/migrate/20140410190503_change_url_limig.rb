class ChangeUrlLimig < ActiveRecord::Migration
  def change
    change_column(:images,:url,:text, limit:5000)
  end
end
