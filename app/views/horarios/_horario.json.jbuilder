json.extract! horario, :id, :inicio, :termino, :dia_semana, :created_at, :updated_at
json.url horario_url(horario, format: :json)