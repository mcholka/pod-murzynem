class CreateTelefons < ActiveRecord::Migration
  def change
    create_table :telefons do |t|
      t.string :model
      t.integer :producents_id
      t.string :ogolne
      t.string :konstrukcja
      t.string :siec
      t.string :rozmiar
      t.string :transmisja
      t.string :komunikacja
      t.string :wyswietlacz
      t.string :system
      t.string :pamiec
      t.string :aparat
      t.string :multimedia
      t.string :funckje
      t.string :zasilanie
      t.string :cena

      t.timestamps
    end
  end
end
