json.extract! paiement, :id, :montant, :created_at, :updated_at
json.url paiement_url(paiement, format: :json)
