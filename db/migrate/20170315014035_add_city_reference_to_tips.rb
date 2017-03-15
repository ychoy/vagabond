class AddCityReferenceToTips < ActiveRecord::Migration[5.0]
  def change
    add_reference :tips, :city, foreign_key: true
  end
end
