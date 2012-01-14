class CreateTelefons < ActiveRecord::Migration
  def change
    create_table :telefons do |t|
      t.integer :producent_id
      t.string :model
      t.string :siec
      t.string :ekran
      t.string :foto
      t.string :bateria
      t.string :urzadzenie
      t.string :system
      t.string :wymiary
      t.string :waga
      t.string :cena

      t.timestamps
    end
  end
end
