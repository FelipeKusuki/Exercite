person1 = Person.create!(name: "admin", email: "admin@admin.com",
 	phone: "1111111", age: 21, gender: "other", password: "123456", password_confirmation: "123456")
Admin.create(adm_password: "123456", person_id: person1.id)

person2 = Person.create!(name: "user", email: "user@user.com",
 	phone: "1111111", age: 21, gender: "other", password: "123456", password_confirmation: "123456")
user = User.create(person_id: person2.id, level: 0, points: 0, avatar: open("public/images/profile/teste.png"))

UserRequest.create(date: '20181030', option: 1, status: 0, user_id: user.id)
UserRequest.create(date: '20181030', option: 2, status: 0, user_id: user.id)

UserMeasure.create(weight: 70, height: 1.72, neck: 45, leftbiceps: 32, rightbiceps: 31, chest: 100, waist: 70, hips: 78, leftthigh: 80, rightthigh: 81, leftcalve: 35, rightcalve: 34,user_id: user.id)

person3 = Person.create!(name: "coach", email: "coach@coach.com",
 	phone: "1111111", age: 21, gender: "other", password: "123456", password_confirmation: "123456")

#Populando tabela Person
person4 = Person.create!(name: "Roberto Silva", email: "roberto@email.com",
 	phone: "11986455823", age: 35, gender: "male", password: "roberto.silva", password_confirmation: "roberto.silva")
person5 = Person.create!(name: "Carlos Mota", email: "carlos@email.com",
  phone: "11945685823", age: 21, gender: "male", password: "123456", password_confirmation: "123456")
person6 = Person.create!(name: "Sergio Alves", email: "sergioc@email.com",
  phone: "11965489123", age: 65, gender: "female", password: "123456", password_confirmation: "123456")
person7 = Person.create!(name: "Barbara Bertho", email: "barbara@email.com",
  phone: "11985201473", age: 18, gender: "female", password: "barbara.ra", password_confirmation: "barbara.ra")
person8 = Person.create!(name: "João silva", email: "joao@email.com",
  phone: "11957954620", age: 33, gender: "male", password: "123456", password_confirmation: "123456")
person9 = Person.create!(name: "Felipe Smith", email: "smith@email.com",
  phone: "11936987562", age: 50, gender: "male", password: "felipao", password_confirmation: "felipao")
person10 = Person.create!(name: "William Boulos", email: "bigode@email.com",
  phone: "11985461309", age: 41, gender: "male", password: "williaoo", password_confirmation: "williaoo")
person11 = Person.create!(name: "Gabriel Kiaz", email: "gabriel@email.com",
  phone: "11914708526", age: 26, gender: "male", password: "kiazad", password_confirmation: "kiazad")
person12 = Person.create!(name: "Eliane Lada", email: "eliane@email.com",
  phone: "11998511977", age: 20, gender: "female", password: "elianada", password_confirmation: "elianada")
person13 = Person.create!(name: "Bianca Panda", email: "panda@email.com",
  phone: "11936212789", age: 61, gender: "female", password: "pandinha", password_confirmation: "pandinha")
person14 = Person.create!(name: "Raquel Estrela", email: "estrela@email.com",
  phone: "11944342228", age: 36, gender: "female", password: "raquel", password_confirmation: "raquel")
person15 = Person.create!(name: "Flavia Castro", email: "castrao@email.com",
  phone: "11918879451", age: 22, gender: "female", password: "flavinha", password_confirmation: "flavinha")
person16 = Person.create!(name: "Lucia Guedes", email: "lucia@email.com",
  phone: "11954623578", age: 29, gender: "female", password: "luciag", password_confirmation: "luciag")
person17 = Person.create!(name: "Marcio Paz", email: "paz@email.com",
  phone: "11933554866", age: 48, gender: "male", password: "guerra", password_confirmation: "guerra")
person18 = Person.create!(name: "Fabio Carille", email: "fabio@email.com",
  phone: "11957954620", age: 52, gender: "male", password: "campeao", password_confirmation: "campeao")
person19 = Person.create!(name: "Leticia Hepta", email: "leticia@email.com",
  phone: "11944875601", age: 19, gender: "female", password: "coringao", password_confirmation: "coringao")
person20 = Person.create!(name: "Adenor Bacchi", email: "adenor@email.com",
  phone: "11998574122", age: 56, gender: "male", password: "titefalamuito", password_confirmation: "titefalamuito")

#Populando tabela Users
user2 = User.create(person_id: person4.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user3 = User.create(person_id: person5.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user4 = User.create(person_id: person6.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user5 = User.create(person_id: person7.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user6 = User.create(person_id: person8.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user7 = User.create(person_id: person9.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user8 = User.create(person_id: person10.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user9 = User.create(person_id: person11.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user10 = User.create(person_id: person12.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user11 = User.create(person_id: person13.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user12 = User.create(person_id: person14.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user13 = User.create(person_id: person15.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user14 = User.create(person_id: person16.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user15 = User.create(person_id: person17.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))
user16 = User.create(person_id: person18.id, level: 0, points: 0, avatar: open("public/images/profile/default.png"))

#Populando tabela Friendship

Friendship.create(user_id: 1, friend_id: 2, accepted: true)
Friendship.create(user_id: 1, friend_id: 3, accepted: true)
Friendship.create(user_id: 1, friend_id: 4, accepted: true)
Friendship.create(user_id: 1, friend_id: 5, accepted: true)

#Populando tabela Coach
coach = Coach.create!(person_id: person3.id)
coach2 = Coach.create!(person_id: person19.id)
coach3 = Coach.create!(person_id: person20.id)


Speciality.create!(coach_id: coach.id, name_speciality: "elder")

restriction = Restriction.create!(name_restriction: "laziness") # ok

UserRestriction.create(user_id: user.id, restriction_id: restriction.id)

#Populando tabela Disease
disease = Disease.create!(name_disease: "Osteoporosis") #ok
disease2 = Disease.create!(name_disease: "Pressão alta")
disease3 = Disease.create!(name_disease: "Pressão baixa")
disease4 = Disease.create!(name_disease: "Hipotireoidismo")
disease5 = Disease.create!(name_disease: "Labirintite")
disease6 = Disease.create!(name_disease: "Tendinite")

#Populando tabela UserDisease
UserDisease.create(user_id: user.id, disease_id: disease.id)
UserDisease.create(user_id: user5.id, disease_id: disease4.id)
UserDisease.create(user_id: user10.id, disease_id: disease6.id)
UserDisease.create(user_id: user7.id, disease_id: disease3.id)
UserDisease.create(user_id: user16.id, disease_id: disease2.id)
UserDisease.create(user_id: user2.id, disease_id: disease5.id)

#Populando tabela Workout
workout = Workout.create!(coach_id: coach.id, name: "Treino 1")
workout2 = Workout.create!(coach_id: coach2.id, name: "Treino 2")
workout3 = Workout.create!(coach_id: coach2.id, name: "Treino 3")
workout4 = Workout.create!(coach_id: coach3.id, name: "Treino 4")
workout5 = Workout.create!(coach_id: coach3.id, name: "Treino 5")

exercise = Exercise.create!(name_exercise: "Back") # ok
#Populando tabela Exercise
exercise2 = Exercise.create!(name_exercise: "Flexão")
exercise3 = Exercise.create!(name_exercise: "Squat")
exercise4 = Exercise.create!(name_exercise: "Burpee")
exercise5 = Exercise.create!(name_exercise: "Polichinelo")
exercise6 = Exercise.create!(name_exercise: "Mule kicks")
exercise7 = Exercise.create!(name_exercise: "Box jumps")
exercise8 = Exercise.create!(name_exercise: "Remo invertido")
exercise9 = Exercise.create!(name_exercise: "Afundo")
exercise10 = Exercise.create!(name_exercise: "Agachamento")
exercise11 = Exercise.create!(name_exercise: "Abdominal")
exercise12 = Exercise.create!(name_exercise: "Prancha")

#Populando tabela WorkoutCompose
WorkoutCompose.create(set: 3, repetition: 15, technique: "Some technique",
	exercise_id: exercise.id, workout_id: workout.id)
WorkoutCompose.create(set: 5, repetition: 20, technique: "Apoiando os pés",
	exercise_id: exercise11.id, workout_id: workout2.id)
WorkoutCompose.create(set: 4, repetition: 10, technique: "Utilizando uma caixa de base",
	exercise_id: exercise7.id, workout_id: workout2.id)
WorkoutCompose.create(set: 3, repetition: 20, technique: "Mestre Kame",
  exercise_id: exercise10.id, workout_id: workout2.id)
WorkoutCompose.create(set: 3, repetition: 15, technique: "Duplamente invertido",
	exercise_id: exercise8.id, workout_id: workout3.id)
WorkoutCompose.create(set: 3, repetition: 100, technique: "Em grupo",
	exercise_id: exercise5.id, workout_id: workout3.id)
WorkoutCompose.create(set: 4, repetition: 30, technique: "Usando um tapete de base",
	exercise_id: exercise12.id, workout_id: workout3.id)
WorkoutCompose.create(set: 3, repetition: 25, technique: "Com 2kg nas costas",
	exercise_id: exercise2.id, workout_id: workout4.id)
WorkoutCompose.create(set: 2, repetition: 10, technique: "Veloz e preciso",
	exercise_id: exercise3.id, workout_id: workout4.id)
WorkoutCompose.create(set: 3, repetition: 10, technique: "Sem apoio",
  exercise_id: exercise6.id, workout_id: workout4.id)
WorkoutCompose.create(set: 3, repetition: 15, technique: "Sem peso",
	exercise_id: exercise2.id, workout_id: workout5.id)
WorkoutCompose.create(set: 5, repetition: 5, technique: "Em dupla",
	exercise_id: exercise9.id, workout_id: workout5.id)
WorkoutCompose.create(set: 3, repetition: 30, technique: "Sem apoio nos pés",
  exercise_id: exercise11.id, workout_id: workout5.id)

#Populando tabela UserDoWorkout
UserDoWorkout.create(user_id: user.id, workout_id: workout.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user2.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user3.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user4.id, workout_id: workout3.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user5.id, workout_id: workout3.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user6.id, workout_id: workout4.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user7.id, workout_id: workout4.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user8.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user9.id, workout_id: workout5.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user10.id, workout_id: workout3.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user5.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user11.id, workout_id: workout4.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user10.id, workout_id: workout4.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user16.id, workout_id: workout5.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user15.id, workout_id: workout5.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user14.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user13.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user12.id, workout_id: workout4.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user11.id, workout_id: workout5.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user9.id, workout_id: workout2.id, ended: false, score: 0)
UserDoWorkout.create(user_id: user8.id, workout_id: workout5.id, ended: false, score: 0)
