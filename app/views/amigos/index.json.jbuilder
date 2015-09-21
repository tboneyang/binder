json.array!(@amigos) do |amigo|
  json.extract! amigo, :id, :name, :last_talked_about, :description, :last_contacted, :type, :email, :phone_number, :birthday, :address
  json.url amigo_url(amigo, format: :json)
end
