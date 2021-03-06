Incident.destroy_all
LostAnimal.destroy_all
FoundAnimal.destroy_all
User.destroy_all

admin = User.create(name: 'Bob', email: 'bob@gmail.com', password: 'bob')
loser = User.create(name: 'Sally', email: 'sally@gmail.com', password: 'sally')
founder = User.create(name: 'Ben', email: 'ben@gmail.com', password: 'ben')
surfer = User.create(name: 'Taylor', email: 'taylor@gmail.com', password: 'taylor', admin_privilege: true)

bushfire = Incident.create(name: 'Bush Fire', category: 'fire')
campfire = Incident.create(name: 'Camp Fire', category: 'fire')
desertfire = Incident.create(name: 'Desert Fire', category: 'fire')
forestfire = Incident.create(name: 'Forest Fire', category: 'fire')
nightonfire = Incident.create(name: 'Night on Fire', category: 'fire')

found = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_found: '11/11/2017', location_found: 'Geelong', location_current: 'St Kilda', lat: Geocoder.coordinates('St Kilda').first, long: Geocoder.coordinates('St Kilda').last, health_status: 'healthy', tags: ['siamese', 'black'], reunited: false)
found2 = FoundAnimal.create(species: 'dog', user_id: 2, incident_id: 3, date_found: '11/11/2017', location_found: 'Kensington', location_current: 'Brighton', lat: Geocoder.coordinates('Brighton').first, long: Geocoder.coordinates('Brighton').last, health_status: 'healthy', tags: ['dog', 'small'], reunited: false)
found3 = FoundAnimal.create(species: 'chicken', user_id: 3, incident_id: 4, date_found: '11/11/2017', location_found: 'Sunshine', location_current: 'Frankston', lat: Geocoder.coordinates('Frankston').first, long: Geocoder.coordinates('Frankston').last, health_status: 'injured', tags: ['chicken'], reunited: false)
found4 = FoundAnimal.create(species: 'turtle', user_id: 4, incident_id: 5, date_found: '11/11/2017', location_found: 'Melbourne', location_current: 'Werribee', lat: Geocoder.coordinates('Werribee').first, long: Geocoder.coordinates('Werribee').last, health_status: 'severe', tags: ['small', 'turtle'], reunited: false)
found5 = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 1, date_found: '11/11/2017', location_found: 'Lara', location_current: 'Surrey Hills', lat: Geocoder.coordinates('Surrey Hills').first, long: Geocoder.coordinates('Surrey Hills').last, health_status: 'injured', tags: ["white", "cat"], reunited: false)

lost = LostAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Geelong', lat: Geocoder.coordinates('Geelong').first, long: Geocoder.coordinates('Geelong').last, tags: ['cat', 'small'], reunited: false)
lost3 = LostAnimal.create(species: 'chicken', user_id: 2, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Sunshine', lat: Geocoder.coordinates('Sunshine').first, long: Geocoder.coordinates('Sunshine').last, tags: ['chicken'], reunited: true)
lost4 = LostAnimal.create(species: 'horse', user_id: 3, incident_id: 4, date_lost: '11/11/2017', location_lost: 'Bentleigh', lat: Geocoder.coordinates('Bentleigh').first, long: Geocoder.coordinates('Bentleigh').last, tags: ['horse', 'brown'], reunited: false)
lost5 = LostAnimal.create(species: 'bird', user_id: 4, incident_id: 5, date_lost: '11/11/2017', location_lost: 'Surry Hills', lat: Geocoder.coordinates('Surrey Hills').first, long: Geocoder.coordinates('Surrey Hills').last, tags: ['multicolour', 'bird'], reunited: false)

