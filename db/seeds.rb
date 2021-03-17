# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Gender seeds
gender1 = Gender.create(gender_name: "Female")
gender2 = Gender.create(gender_name: "Male")
gender3 = Gender.create(gender_name: "Nonbinary")
gender4 = Gender.create(gender_name: "Intersex")
gender5 = Gender.create(gender_name: "Unsure")
gender6 = Gender.create(gender_name: "Other")

# Gender identity seeds
identity1 = Identity.create(identity_name: "Transgender")
identity2 = Identity.create(identity_name: "Cisgender")
identity3 = Identity.create(identity_name: "Unsure")
identity4 = Identity.create(identity_name: "Other")

# Sexuality seeds
sexuality1 = Sexuality.create(sexuality_name: "Gay/lesbian")
sexuality2 = Sexuality.create(sexuality_name: "Bisexual/pansexual")
sexuality3 = Sexuality.create(sexuality_name: "Asexual")
sexuality4 = Sexuality.create(sexuality_name: "Queer")
sexuality5 = Sexuality.create(sexuality_name: "Heterosexual")
sexuality6 = Sexuality.create(sexuality_name: "Unsure")
sexuality7 = Sexuality.create(sexuality_name: "Other")

# Country seeds
Country.create(country_name: "Afghanistan")
Country.create(country_name: "Albania")
Country.create(country_name: "Algeria")
Country.create(country_name: "Andorra")
Country.create(country_name: "Angola")
Country.create(country_name: "Antigua and Barbuda")
Country.create(country_name: "Argentina")
Country.create(country_name: "Armenia")
Country.create(country_name: "Australia")
Country.create(country_name: "Austria")
Country.create(country_name: "Azerbaijan")
Country.create(country_name: "The Bahamas")
Country.create(country_name: "Bahrain")
Country.create(country_name: "Bangladesh")
Country.create(country_name: "Barbados")
Country.create(country_name: "Belarus")
Country.create(country_name: "Belgium")
Country.create(country_name: "Belize")
Country.create(country_name: "Benin")
Country.create(country_name: "Bhutan")
Country.create(country_name: "Bolivia")
Country.create(country_name: "Bosnia and Herzegovina")
Country.create(country_name: "Botswana")
Country.create(country_name: "Brazil")
Country.create(country_name: "Brunei")
Country.create(country_name: "Bulgaria")
Country.create(country_name: "Burkina Faso")
Country.create(country_name: "Burundi")
Country.create(country_name: "Cabo Verde")
Country.create(country_name: "Cambodia")
Country.create(country_name: "Cameroon")
Country.create(country_name: "Canada")
Country.create(country_name: "Central African Republic")
Country.create(country_name: "Chad")
Country.create(country_name: "Chile")
Country.create(country_name: "China")
Country.create(country_name: "Colombia")
Country.create(country_name: "Comoros")
Country.create(country_name: "Congo, Democratic Republic of the")
Country.create(country_name: "Congo, Republic of the")
Country.create(country_name: "Costa Rica")
Country.create(country_name: "Côte d’Ivoire")
Country.create(country_name: "Croatia")
Country.create(country_name: "Cuba")
Country.create(country_name: "Cyprus")
Country.create(country_name: "Czech Republic")
Country.create(country_name: "Denmark")
Country.create(country_name: "Djibouti")
Country.create(country_name: "Dominica")
Country.create(country_name: "Dominican Republic")
Country.create(country_name: "East Timor (Timor-Leste)")
Country.create(country_name: "Ecuador")
Country.create(country_name: "Egypt")
Country.create(country_name: "El Salvador")
Country.create(country_name: "Equatorial Guinea")
Country.create(country_name: "Eritrea")
Country.create(country_name: "Estonia")
Country.create(country_name: "Eswatini")
Country.create(country_name: "Ethiopia")
Country.create(country_name: "Fiji")
Country.create(country_name: "Finland")
Country.create(country_name: "France")
Country.create(country_name: "Gabon")
Country.create(country_name: "The Gambia")
Country.create(country_name: "Georgia")
Country.create(country_name: "Germany")
Country.create(country_name: "Ghana")
Country.create(country_name: "Greece")
Country.create(country_name: "Grenada")
Country.create(country_name: "Guatemala")
Country.create(country_name: "Guinea")
Country.create(country_name: "Guinea-Bissau")
Country.create(country_name: "Guyana")
Country.create(country_name: "Haiti")
Country.create(country_name: "Honduras")
Country.create(country_name: "Hungary")
Country.create(country_name: "Iceland")
Country.create(country_name: "India")
Country.create(country_name: "Indonesia")
Country.create(country_name: "Iran")
Country.create(country_name: "Iraq")
Country.create(country_name: "Ireland")
Country.create(country_name: "Israel")
Country.create(country_name: "Italy")
Country.create(country_name: "Jamaica")
Country.create(country_name: "Japan")
Country.create(country_name: "Jordan")
Country.create(country_name: "Kazakhstan")
Country.create(country_name: "Kenya")
Country.create(country_name: "Kiribati")
Country.create(country_name: "Korea, North")
Country.create(country_name: "Korea, South")
Country.create(country_name: "Kosovo")
Country.create(country_name: "Kuwait")
Country.create(country_name: "Kyrgyzstan")
Country.create(country_name: "Laos")
Country.create(country_name: "Latvia")
Country.create(country_name: "Lebanon")
Country.create(country_name: "Lesotho")
Country.create(country_name: "Liberia")
Country.create(country_name: "Libya")
Country.create(country_name: "Liechtenstein")
Country.create(country_name: "Lithuania")
Country.create(country_name: "Luxembourg")
Country.create(country_name: "Madagascar")
Country.create(country_name: "Malawi")
Country.create(country_name: "Malaysia")
Country.create(country_name: "Maldives")
Country.create(country_name: "Mali")
Country.create(country_name: "Malta")
Country.create(country_name: "Marshall Islands")
Country.create(country_name: "Mauritania")
Country.create(country_name: "Mauritius")
Country.create(country_name: "Mexico")
Country.create(country_name: "Micronesia, Federated States of")
Country.create(country_name: "Moldova")
Country.create(country_name: "Monaco")
Country.create(country_name: "Mongolia")
Country.create(country_name: "Montenegro")
Country.create(country_name: "Morocco")
Country.create(country_name: "Mozambique")
Country.create(country_name: "Myanmar (Burma)")
Country.create(country_name: "Namibia")
Country.create(country_name: "Nauru")
Country.create(country_name: "Nepal")
Country.create(country_name: "Netherlands")
Country.create(country_name: "New Zealand")
Country.create(country_name: "Nicaragua")
Country.create(country_name: "Niger")
Country.create(country_name: "Nigeria")
Country.create(country_name: "North Macedonia")
Country.create(country_name: "Norway")
Country.create(country_name: "Oman")
Country.create(country_name: "Pakistan")
Country.create(country_name: "Palau")
Country.create(country_name: "Panama")
Country.create(country_name: "Papua New Guinea")
Country.create(country_name: "Paraguay")
Country.create(country_name: "Peru")
Country.create(country_name: "Philippines")
Country.create(country_name: "Poland")
Country.create(country_name: "Portugal")
Country.create(country_name: "Qatar")
Country.create(country_name: "Romania")
Country.create(country_name: "Russia")
Country.create(country_name: "Rwanda")
Country.create(country_name: "Saint Kitts and Nevis")
Country.create(country_name: "Saint Lucia")
Country.create(country_name: "Saint Vincent and the Grenadines")
Country.create(country_name: "Samoa")
Country.create(country_name: "San Marino")
Country.create(country_name: "Sao Tome and Principe")
Country.create(country_name: "Saudi Arabia")
Country.create(country_name: "Senegal")
Country.create(country_name: "Serbia")
Country.create(country_name: "Seychelles")
Country.create(country_name: "Sierra Leone")
Country.create(country_name: "Singapore")
Country.create(country_name: "Slovakia")
Country.create(country_name: "Slovenia")
Country.create(country_name: "Solomon Islands")
Country.create(country_name: "Somalia")
Country.create(country_name: "South Africa")
Country.create(country_name: "Spain")
Country.create(country_name: "Sri Lanka")
Country.create(country_name: "Sudan")
Country.create(country_name: "Sudan, South")
Country.create(country_name: "Suriname")
Country.create(country_name: "Sweden")
Country.create(country_name: "Switzerland")
Country.create(country_name: "Syria")
Country.create(country_name: "Taiwan")
Country.create(country_name: "Tajikistan")
Country.create(country_name: "Tanzania")
Country.create(country_name: "Thailand")
Country.create(country_name: "Togo")
Country.create(country_name: "Tonga")
Country.create(country_name: "Trinidad and Tobago")
Country.create(country_name: "Tunisia")
Country.create(country_name: "Turkey")
Country.create(country_name: "Turkmenistan")
Country.create(country_name: "Tuvalu")
Country.create(country_name: "Uganda")
Country.create(country_name: "Ukraine")
Country.create(country_name: "United Arab Emirates")
Country.create(country_name: "United Kingdom")
Country.create(country_name: "United States")
Country.create(country_name: "Uruguay")
Country.create(country_name: "Uzbekistan")
Country.create(country_name: "Vanuatu")
Country.create(country_name: "Vatican City")
Country.create(country_name: "Venezuela")
Country.create(country_name: "Vietnam")
Country.create(country_name: "Yemen")
Country.create(country_name: "Zambia")
Country.create(country_name: "Zimbabwe")

# Tets user seeds
user1 = User.create(email: "test@test", password: "testpw", password_confirmation: "testpw")
user2 = User.create(email: "test2@test", password: "testpw", password_confirmation: "testpw")
user3 = User.create(email: "test3@test", password: "testpw", password_confirmation: "testpw")
user4 = User.create(email: "test4@test", password: "testpw", password_confirmation: "testpw")
user5 = User.create(email: "test5@test", password: "testpw", password_confirmation: "testpw")
user6 = User.create(email: "test6@test", password: "testpw", password_confirmation: "testpw")
user7 = User.create(email: "test7@test", password: "testpw", password_confirmation: "testpw")
user8 = User.create(email: "test8@test", password: "testpw", password_confirmation: "testpw")
user9 = User.create(email: "test9@test", password: "testpw", password_confirmation: "testpw")
user10 = User.create(email: "test10@test", password: "testpw", password_confirmation: "testpw")

# Test profile seeds
profile = Profile.new(
    name: "David",
    age: 35,
    reason_for_interest: "I would love to help other LGBTQ people and chat with them about whatever they need.",
    interests: "Basketball, traveling, food, tennis, tv",
    discussion_topics: "I'm happy to discuss anything that the mentee wants!",
    country_id: Country.find_by(country_name: "Israel").id,
    gender_id: gender2.id,
    sexuality_id: sexuality1.id,
    identity_id: identity2.id,
    mentor: true,
    mentor_public: true,
    mentor_availability: true,
    user_id: user1.id
)
profile.picture.attach(io: File.open('app/assets/images/grey.jpg'), filename: 'grey.jpg')
profile.save!

profile = Profile.new(
    name: "Jean",
    age: 26,
    reason_for_interest: "I wish I'd had a mentor when I was younger. I'd love to give back!",
    interests: "Baking, history, dogs",
    discussion_topics: "I'm happy to discuss anything, especially relationships and coming out",
    country_id: Country.find_by(country_name: "Mexico").id,
    gender_id: gender1.id,
    sexuality_id: sexuality2.id,
    identity_id: identity2.id,
    mentor: true,
    mentor_public: true,
    mentor_availability: true,
    user_id: user2.id
)
profile.picture.attach(io: File.open('app/assets/images/woman.jpg'), filename: 'woman.jpg')
profile.save!

profile = Profile.new(
    name: "John",
    age: 52,
    reason_for_interest: "I like giving back to the queer community and am hoping to help out here",
    interests: "Volleyball, cooking, reading, chatting with friends",
    discussion_topics: "I've developed a good career so I'm happy to talk about that, or anything else",
    country_id: Country.find_by(country_name: "Australia").id,
    gender_id: gender2.id,
    sexuality_id: sexuality2.id,
    identity_id: identity1.id,
    mentor: true,
    mentor_public: true,
    mentor_availability: true,
    user_id: user3.id
)
profile.picture.attach(io: File.open('app/assets/images/man.jpg'), filename: 'man.jpg')
profile.save!

profile = Profile.new(
    name: "Dean",
    age: 31,
    reason_for_interest: "I came across this program online and thought it would be a good way to help other queer people",
    interests: "Music, concerts, fashion, video games, technology",
    discussion_topics: "I have a homophobic family so I'm happy to talk about that experience",
    country_id: Country.find_by(country_name: "Germany").id,
    gender_id: gender2.id,
    sexuality_id: sexuality1.id,
    identity_id: identity2.id,
    mentor: true,
    mentor_public: true,
    mentor_availability: true,
    user_id: user4.id
)
profile.picture.attach(io: File.open('app/assets/images/grey.jpg'), filename: 'grey.jpg')
profile.save!

profile = Profile.new(
    name: "Netta",
    age: 39,
    reason_for_interest: "I struggled with my sexuality growing up and I don't want others to have to do the same",
    interests: "Creative writing, standup comedy, theatre",
    discussion_topics: "I'm especially good at helping people through the coming out process",
    country_id: Country.find_by(country_name: "Ireland").id,
    gender_id: gender1.id,
    sexuality_id: sexuality4.id,
    identity_id: identity2.id,
    mentor: true,
    mentor_public: true,
    mentor_availability: true,
    user_id: user5.id
)
profile.picture.attach(io: File.open('app/assets/images/woman.jpg'), filename: 'woman.jpg')
profile.save!

profile = Profile.new(
    name: "Joshua",
    age: 22,
    reason_for_interest: "I could use a queer friend and mentor to talk to",
    interests: "Science, exploring the world, trivia",
    discussion_topics: "I recently came out and have never had a relationship, so I'd love someone who could help with that",
    country_id: Country.find_by(country_name: "South Africa").id,
    gender_id: gender2.id,
    sexuality_id: sexuality4.id,
    identity_id: identity2.id,
    mentee: true,
    mentee_public: true,
    mentee_availability: true,
    user_id: user6.id
)
profile.picture.attach(io: File.open('app/assets/images/man.jpg'), filename: 'man.jpg')
profile.save!

profile = Profile.new(
    name: "Charlotte",
    age: 35,
    reason_for_interest: "I recently came out at the age of 34 and I could use some help",
    interests: "Movies and film, tv, music, concerts",
    discussion_topics: "How to be queer while in a heterosexual relationship",
    country_id: Country.find_by(country_name: "China").id,
    gender_id: gender1.id,
    sexuality_id: sexuality2.id,
    identity_id: identity2.id,
    mentee: true,
    mentee_public: true,
    mentee_availability: true,
    user_id: user7.id
)
profile.picture.attach(io: File.open('app/assets/images/woman.jpg'), filename: 'woman.jpg')
profile.save!

profile = Profile.new(
    name: "Hamish",
    age: 19,
    reason_for_interest: "I don't know any other gay people so I'd like to meet some",
    interests: "Making short films, learning foreign languages",
    discussion_topics: "What life is like as an out gay person. I'm still in the closet",
    country_id: Country.find_by(country_name: "Canada").id,
    gender_id: gender2.id,
    sexuality_id: sexuality1.id,
    identity_id: identity2.id,
    mentee: true,
    mentee_public: true,
    mentee_availability: true,
    user_id: user8.id
)
profile.picture.attach(io: File.open('app/assets/images/grey.jpg'), filename: 'grey.jpg')
profile.save!

profile = Profile.new(
    name: "Molly",
    age: 26,
    reason_for_interest: "I recently came out as trans and could use some help",
    interests: "Cooking, reading, playing games online",
    discussion_topics: "Trans issues",
    country_id: Country.find_by(country_name: "Australia").id,
    gender_id: gender1.id,
    sexuality_id: sexuality4.id,
    identity_id: identity1.id,
    mentee: true,
    mentee_public: true,
    mentee_availability: true,
    user_id: user9.id
)
profile.picture.attach(io: File.open('app/assets/images/woman.jpg'), filename: 'woman.jpg')
profile.save!

profile = Profile.new(
    name: "Ahmad",
    age: 30,
    reason_for_interest: "I struggle with my sexuality in a very conservative country",
    interests: "Movies and tv, music, card games",
    discussion_topics: "How to deal with being gay in a country like Afghanistan",
    country_id: Country.find_by(country_name: "Afghanistan").id,
    gender_id: gender2.id,
    sexuality_id: sexuality1.id,
    identity_id: identity2.id,
    mentee: true,
    mentee_public: true,
    mentee_availability: true,
    user_id: user10.id
)
profile.picture.attach(io: File.open('app/assets/images/man.jpg'), filename: 'man.jpg')
profile.save!