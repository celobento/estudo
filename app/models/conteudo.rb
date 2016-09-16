class Conteudo < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :status_conteudo
end
