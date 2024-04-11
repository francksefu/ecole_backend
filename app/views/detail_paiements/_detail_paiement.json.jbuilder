json.extract! detail_paiement, :id, :frais_name, :montant, :end_date, :description, :created_at, :updated_at
json.url detail_paiement_url(detail_paiement, format: :json)
