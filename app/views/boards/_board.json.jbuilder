json.extract! board, :id, :model, :serial_number, :quantity, :created_at, :updated_at
json.url board_url(board, format: :json)
