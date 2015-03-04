json.array!(@groups) do |group|
  json.extract! group, :id, :name, :description, :amount, :currency, :period, :period_type, :start_date
  json.url group_url(group, format: :json)
end
