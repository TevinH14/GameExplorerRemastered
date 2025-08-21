//
//  Game+Extension.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/5/25.
//

import Foundation

extension Game {
    static var preview: Game {
        return Game( id: 3498,
                     slug: "grand-theft-auto-v",
                     name: "Grand Theft Auto V",
                     released: "2013-09-1",
                     tba: false,
                     background_image: "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg",
                     rating: 4.47,
                     rating_top: 5,
                     ratings: [
                        Rating(id: 5, title: "exceptional", count: 4299, percent: 59.02),
                        Rating(id: 4, title: "recommended", count: 2380, percent: 32.67),
                        Rating(id: 3, title: "meh", count: 464, percent: 6.37),
                        Rating(id: 1, title: "skip", count: 141, percent: 1.94)
                     ],
                     ratings_count: 7168,
                     reviews_text_count: 67,
                     added: 22148,
                     added_by_status: AddedByStatus(yet: 554, owned: 12745, beaten: 6294, toplay: 630, dropped: 1168, playing: 757),
                     metacritic: 92,
                     playtime: 74,
                     suggestions_count: 441,
                     updated: "2025-07-28T22:32:47",
                     user_game: nil,
                     reviews_count: 7284,
                     saturated_color: "0f0f0f",
                     dominant_color: "0f0f0f",
                     parent_platforms: [
                        Platform(id: 1, name: "PC", slug: "pc"),
                        Platform(id: 2, name: "PlayStation", slug: "playStation"),
                        Platform(id: 3, name: "Xbox", slug: "xbox")
                     ],
                     genres: [
                        Genre(id: 4, name: "Action", slug: "action", games_count: 188571, image_background: "https://media.rawg.io/media/games/34b/34b1f1850a1c06fd971bc6ab3ac0ce0e.jpg")
                     ],
                     stores: [
                        GameStore(id: 290376,
                                  store: StoreDetail(id: 1, name: "Steam", slug: "steam", domain: "store.steampowered.com", games_count: 115464, image_background: "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg")
                                 ),
                        GameStore(id: 290375,
                                  store: StoreDetail(id: 3, name: "PlayStation Store", slug: "playstation-store", domain: "store.playstation.com", games_count: 8055, image_background: "https://media.rawg.io/media/games/73e/73eecb8909e0c39fb246f457b5d6cbbe.jpg")
                                 )
                     ],
                     clip: nil,
                     tags: [
                        Tag(id: 31, name: "Singleplayer", slug: "singleplayer", language: "eng", games_count: 243431, image_background: "https://media.rawg.io/media/games/bc0/bc06a29ceac58652b684deefe7d56099.jpg"),
                        Tag(id: 40847, name: "Steam Achievements", slug: "steam-achievements", language: "eng", games_count: 47628, image_background: "https://media.rawg.io/media/games/6cd/6cd653e0aaef5ff8bbd295bf4bcb12eb.jpg"),
                        Tag(id: 7, name: "Multiplayer", slug: "multiplayer", language: "eng", games_count: 41324, image_background: "https://media.rawg.io/media/games/736/73619bd336c894d6941d926bfd563946.jpg")
                        
                     ],
                     esrb_rating: ESRBRating(id: 4, name: "Mature", slug: "mature"),
                     shortScreenshots: [
                        Screenshot(id: -1, image: "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg"),
                        Screenshot(id: 1827221, image: "https://media.rawg.io/media/screenshots/a7c/a7c43871a54bed6573a6a429451564ef.jpg"),
                        Screenshot(id: 1827222, image: "https://media.rawg.io/media/screenshots/cf4/cf4367daf6a1e33684bf19adb02d16d6.jpg"),
                        Screenshot(id: 1827223, image: "https://media.rawg.io/media/screenshots/f95/f9518b1d99210c0cae21fc09e95b4e31.jpg")
                     ]
        )
    }
    
}
