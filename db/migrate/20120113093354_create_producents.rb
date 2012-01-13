class CreateProducents < ActiveRecord::Migration
  def change
    create_table :producents do |t|
      t.string :nazwa

      t.timestamps
    end
  end
end
