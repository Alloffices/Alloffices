class CreateBscenes < ActiveRecord::Migration
  def change
    create_table :bscenes do |t|
      t.text :content
      t.references :projx, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
