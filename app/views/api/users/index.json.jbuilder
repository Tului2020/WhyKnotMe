json.array! @users.each do |user|
  json.id user.id
  json.username user.username
  json.email user.email
  json.first_name user.first_name
  json.last_name user.last_name
end
