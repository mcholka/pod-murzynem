class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :source
      t.text :quotation

      t.timestamps
    end
  end
end
