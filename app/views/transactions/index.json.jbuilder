json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :name, :address, :phone, :start_at, :end_at, :delivered_at, :returned_at, :cancelled, :hours_charged
  json.url transaction_url(transaction, format: :json)
end
