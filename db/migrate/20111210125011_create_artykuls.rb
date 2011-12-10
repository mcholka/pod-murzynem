class CreateArtykuls < ActiveRecord::Migration
  def change
    create_table :artykuls do |t|
      t.string :autor
      t.text :tresc

      t.timestamps
    end
  end
end
