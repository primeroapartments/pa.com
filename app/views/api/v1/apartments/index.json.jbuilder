json.array! @apartments do |apartment|
  json.extract! apartment, :id, :city
end

