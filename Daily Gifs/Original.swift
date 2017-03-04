//
//	Original.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class Original{

	var frames : String!
	var hash : String!
	var height : String!
	var mp4 : String!
	var mp4Size : String!
	var size : String!
	var url : String!
	var webp : String!
	var webpSize : String!
	var width : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		frames = dictionary["frames"] as? String
		hash = dictionary["hash"] as? String
		height = dictionary["height"] as? String
		mp4 = dictionary["mp4"] as? String
		mp4Size = dictionary["mp4_size"] as? String
		size = dictionary["size"] as? String
		url = dictionary["url"] as? String
		webp = dictionary["webp"] as? String
		webpSize = dictionary["webp_size"] as? String
		width = dictionary["width"] as? String
	}

}
