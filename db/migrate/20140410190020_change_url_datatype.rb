class ChangeUrlDatatype < ActiveRecord::Migration
  def change

    change_column(:images,:url,:text)

  end
end
