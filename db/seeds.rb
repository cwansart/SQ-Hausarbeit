# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post  = Post.create! title: 'Herzlich Willkommen', author: 'Admin', body: 'Herzlich Willkommen auf unserem Blog. Hier möchten wir verschiedene Test-Frameworks für Rails vorstellen und vergleichen.', published_at: DateTime.now
post2 = Post.create! title: 'Test-Eintrag', author: 'Admin', body: 'Das ist bloß ein kleines Beispiel. Das könnt ihr gerne ignorieren. :-)', published_at: DateTime.now

Comment.create! post_id: post.id, title: 'Freut mich!', author: 'David', body: 'Ein neues Blog zu Tests? Ich freue mich schon! :)', published_at: DateTime.now
Comment.create! post_id: post.id, title: 'Sehr schön!', author: 'Sarah', body: 'Da kann ich David nur beipflichten! Ich freue mich auch schon sehr auf die Artikel!', published_at: DateTime.now
