//
//  RMMusic.swift
//  RealmPlatform
//
//  Created by Behrad Kazemi on 6/21/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Domain
import RealmSwift
import Realm

final class RMMusic: Object {
	dynamic var uid = 0
	dynamic var playableID = 0
	dynamic var artistID = 0
	dynamic var albumID = 0
	dynamic var artworkID = 0
	dynamic var title = ""
	dynamic var genre = ""
	dynamic var creationDate = Date()
	dynamic var playCount = 0
	dynamic var liked = false
	dynamic var rate = 0.0
}
extension RMMusic: DomainConvertibleType {
	func asDomain() -> Music {
		return Music(uid: uid, title: title, genre: genre, artworkID: artworkID, artistID: artistID, playableID: playableID, creationDate: creationDate, playCount: playCount, albumID: albumID, rate: rate, liked: liked)
	}
}

extension Music: RealmRepresentable {
	func asRealm() -> RMMusic {
		return RMMusic.build { object in
			object.uid = uid
			object.artworkID = artworkID
			object.artistID = artistID
			object.playCount = playCount
			object.playableID = playableID
			object.albumID = albumID
			object.title = title
			object.genre = genre
			object.rate = rate
			object.liked = liked
			object.creationDate = creationDate
		}
	}
}