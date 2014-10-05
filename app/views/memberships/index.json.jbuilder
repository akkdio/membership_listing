json.array!(@memberships) do |membership|
  json.extract! membership, :company_name, :website
  json.url membership_url(membership, format: :json)
end
