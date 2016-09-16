class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.timestamp :inicio
      t.timestamp :termino
      t.integer :dia_semana

      t.timestamps null: false
    end
  end
end
