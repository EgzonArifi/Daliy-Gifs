//
//	Data.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class Data{

	var bitlyGifUrl : String!
	var bitlyUrl : String!
	var contentUrl : String!
	var embedUrl : String!
	var id : String!
	var images : Image!
	var importDatetime : String!
	var isIndexable : Int!
	var rating : String!
	var slug : String!
	var source : String!
	var sourcePostUrl : String!
	var sourceTld : String!
	var trendingDatetime : String!
	var type : String!
	var url : String!
	var user : User!
	var username : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		bitlyGifUrl = dictionary["bitly_gif_url"] as? String
		bitlyUrl = dictionary["bitly_url"] as? String
		contentUrl = dictionary["content_url"] as? String
		embedUrl = dictionary["embed_url"] as? String
		id = dictionary["id"] as? String
		if let imagesData = dictionary["images"] as? [String:Any]{
			images = Image(fromDictionary: imagesData)
		}
		importDatetime = dictionary["import_datetime"] as? String
		isIndexable = dictionary["is_indexable"] as? Int
		rating = dictionary["rating"] as? String
		slug = dictionary["slug"] as? String
		source = dictionary["source"] as? String
		sourcePostUrl = dictionary["source_post_url"] as? String
		sourceTld = dictionary["source_tld"] as? String
		trendingDatetime = dictionary["trending_datetime"] as? String
		type = dictionary["type"] as? String
		url = dictionary["url"] as? String
		if let userData = dictionary["user"] as? [String:Any]{
			user = User(fromDictionary: userData)
		}
		username = dictionary["username"] as? String
	}

}
