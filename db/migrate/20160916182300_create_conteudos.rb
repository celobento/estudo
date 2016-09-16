class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :nome
      t.belongs_to :disciplina, index: true, foreign_key: true
      t.belongs_to :status_conteudo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
