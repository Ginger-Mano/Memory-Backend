# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Card.destroy_all
User.destroy_all


puts 'starting to seed user'

chris = User.create(
    {
        username: "C$ Sanchez",
        password: "eric",
        score: 0,
        games_won: 0,
        games_lost: 0,
        time_spent: '',
        avg_score: '',
        image: 'data:image/jpeg;base64,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'
    }
)

puts 'done with user'




            
        
        
       
        
        puts 'starting game'
        
        
        game1 = Game.create({
            status: false,
            user: chris
            
            })
        game2 = Game.create({
                status: false,
                user: chris
            })
            
            puts'done with game'
            puts 'starting card'
            card1 = Card.create(
                {
                    term_name: 'Libraries',
                    definition: 'Libraries are stores of pre-written code, or modules, that programmers can take and insert into the code they’re writing.',
                    image: 'https://images-na.ssl-images-amazon.com/images/I/9195w67IgHL._AC_SL1500_.jpg',
                    points: 3,
                    image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                    game: game1
            
                }
            )
            card2 = Card.create({
                term_name: 'Const',
                    definition: 'Keyword that defines a reference to a value. Variables defined with const cannot be reassigned.',
                    image: 'data:image/png;base64,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',
                    points: 3,
                    image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                    game: game2
            })
        
            
            card3 = Card.create({
                
                        term_name: 'UI',
                        definition: '“User Interface.” The visual elements that go into a website or app. This is the form to UX’s function.',
                        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSKMgr1hdU8bC7RvTLJBdzmpWBoQOvpI20EYg&usqp=CAU',
                        points: 3,
                        image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                        game: game1
                
                
                })
                
                
                
                card4 = Card.create({
                        term_name: 'Front End',
                        definition: ' The part of the website or app that the user sees. If the back end of your website is everything behind-the-scenes, this is what happens onstage.',
                        image: 'https://cdn.acodez.in/wp-content/uploads/2017/11/Javascript-Front-End-Development-Frameworks.jpg',
                        points: 3,
                        image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                        game: game1
                    
                    })
                    card5 = Card.create(
                        {
                            term_name: 'Libraries',
                            definition: 'Libraries are stores of pre-written code, or modules, that programmers can take and insert into the code they’re writing.',
                            image: 'https://images-na.ssl-images-amazon.com/images/I/9195w67IgHL._AC_SL1500_.jpg',
                            points: 3,
                            image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                            game: game1
                    
                        }
                    )
                    card6 = Card.create({
                        term_name: 'Const',
                            definition: 'Keyword that defines a reference to a value. Variables defined with const cannot be reassigned.',
                            image: 'data:image/png;base64,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',
                            points: 3,
                            image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                            game: game2
                    })
                
                    
                    card7 = Card.create({
                        
                                term_name: 'UI',
                                definition: '“User Interface.” The visual elements that go into a website or app. This is the form to UX’s function.',
                                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSKMgr1hdU8bC7RvTLJBdzmpWBoQOvpI20EYg&usqp=CAU',
                                points: 3,
                                image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                                game: game1
                        
                        
                        })
                        
                        
                        
                        card8 = Card.create({
                                term_name: 'Front End',
                                definition: ' The part of the website or app that the user sees. If the back end of your website is everything behind-the-scenes, this is what happens onstage.',
                                image: 'https://cdn.acodez.in/wp-content/uploads/2017/11/Javascript-Front-End-Development-Frameworks.jpg',
                                points: 3,
                                image_front: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHRdWw9ON_ZJ3KW_o2ig0YSpcvEmoT9eCgdPmrx_4D0deRePAymfiMHGB5chenwX-87imyABG-&usqp=CAc',
                                game: game1
                            
                            })
            puts 'done with card'
               
                
                
# game1 = Game.create([
#     {
#         status: false,
#         user: chris,
#         card: card1
#     },
#     {
#         status: false,
#         user: chris,
#         card: card2
#     },
#     {
#         status: false,
#         user: chris,
#         card: card3
#     },
#     {
#         status: false,
#         user: chris,
#         card: card4
#     }

# 