Episode.destroy_all
Season.destroy_all
Series.destroy_all

supergirl = Series.create(
  title: "Supergirl",
  description: "Twenty-four-year-old Kara Zor-El, who was taken in by the Danvers family when she was 13 after being sent away from Krypton, must learn to embrace her powers after previously hiding them. The Danvers teach her to be careful with her powers, until she has to reveal them during an unexpected disaster, setting her on her journey of heroism.",
  year: "2015",
  image_path: "https://static.next-episode.net/tv-shows-images/huge/supergirl.jpg"
)

Episode.create(
  name: "Crisis on Earth-X (Part 1)",
  number: 8,
  release_date: "2017-11-27",
  season: Season.create(name: "3ª temporada", number: 3, series: supergirl),
  summary: "Barry and Iris’s wedding brings the gang together, but things go awry when villains from Earth-X attack the ceremony. All of the superheroes band together with help from their super friends like Citizen Cold, The Ray, Felicity Smoak, Iris West and Alex Danvers to take on their most formidable villains yet. Earth’s mightiest heroes – Green Arrow, Supergirl, The Flash and White Canary – lead their teams into battle to save the world."
)

##

arrow = Series.create(
  title: "Arrow",
  description: "Arrow is a modern retelling of the adventures of legendary DC hero Green Arrow.",
  year: "2012",
  image_path: "https://static.next-episode.net/tv-shows-images/huge/arrow.jpg"
)

Episode.create(
  name: "Crisis on Earth-X (Part 2)",
  number: 8,
  release_date: "2017-11-27",
  season: Season.create(name: "6ª temporada", number: 6, series: arrow),
  summary: "Barry and Iris’s wedding brings the gang together, but things go awry when villains from Earth-X attack the ceremony. All of the superheroes band together with help from their super friends like Citizen Cold, The Ray, Felicity Smoak, Iris West and Alex Danvers to take on their most formidable villains yet. Earth’s mightiest heroes – Green Arrow, Supergirl, The Flash and White Canary – lead their teams into battle to save the world."
)

##

the_good_doctor = Series.create(
  title: "The Good Doctor",
  description: "The Good Doctor centers on a young surgeon with Savant Syndrome who is recruited into the pediatric surgical unit of a prestigious hospital. The question will arise - can a person who doesn't have the ability to relate to people actually save their lives?",
  year: "2017",
  image_path: "https://static.next-episode.net/tv-shows-images/huge/the-good-doctor.jpg"
)

Episode.create(
  name: "Intangibles",
  number: 9,
  release_date: "2017-11-27",
  season: Season.create(name: "1ª temporada", number: 1, series: the_good_doctor),
  summary: "As part of St. Bonaventure hospital's international humanitarian program, the team takes on the case of a young boy from the Congo who has severe congenital heart anomalies. Dr. Neil Melendez has doubts about the safety of the procedure, while Dr. Shaun Murphy works out the best course of action. Meanwhile, Murphy's latest encounter with his neighbor Lea has him confused."
)

##

the_flash = Series.create(
  title: "The Flash",
  description: "The show centers around scientist Barry Allen, who suffers a freak accident that turns him into a superhero with the power of incredible speed. This version of The Flash started with a recurring character on Arrow.",
  year: "2014",
  image_path: "https://static.next-episode.net/tv-shows-images/huge/the-flash.jpg"
)

Episode.create(
  name: "Crisis on Earth X, Part 3",
  number: 8,
  release_date: "2017-11-28",
  season: Season.create(name: "4ª temporada", number: 4, series: the_flash),
  summary: "Barry and Iris's wedding brings the gang together, but things go awry when villains from Earth-X attack the ceremony. All of the superheroes band together with help from their super friends like Citizen Cold, The Ray, Felicity Smoak, Iris West and Alex Danvers to take on their most formidable villains yet. Earth's mightiest heroes – Green Arrow, Supergirl, The Flash and White Canary – lead their teams into battle to save the world."
)