class CreatePorownajs < ActiveRecord::Migration
  def change
    create_table :porownajs do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
