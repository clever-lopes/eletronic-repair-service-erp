json.extract! service_order, :id, :reported_issue, :identified_issue, :obs, :created_at, :updated_at
json.url service_order_url(service_order, format: :json)
