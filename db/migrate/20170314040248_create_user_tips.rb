class CreateUserTips < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tips do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :tip, foreign_key: true

      t.timestamps
    end
  end
end
