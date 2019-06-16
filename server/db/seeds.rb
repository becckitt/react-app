User.destroy_all

members = [
  'Gladys West',
  'Annie Easley',
  'Ada Lovelace',
  'Adele Mildred Koss',
  'Margaret Hamilton',
  'Grace Hopper',
  'Anna Winlock',
  'Annie Jump Cannon',
  'Mary Clem',
  'Clara Froelich',
  'Mary K. Hawes',
  'Kathryn Peddrew',
  'Katherine Johnson',
  'Thelma Estrin',
  'Joyce Aylard',
  'Joan Clarke',
  'Margaret Rock',
  'Louise Pearsall',
  'Hedy Lamarr',
  'Marlyn Meltzer',
  'Kathleen Antonelli',
  'Ruth Teitelbaum',
  'Jean Bartik',
  'Frances Spence',
  'Barbara Paulson',
  'Beatrice Worsley',
  'Betty Holbertson',
  'Edith Clarke'
]

members.each do |member_name|
  names = member_name.split(" ")
  email = "#{names[0]}.#{names[1]}@gmail.com"
  User.create(first_name: names[0], last_name: names[1], email: email)
end
