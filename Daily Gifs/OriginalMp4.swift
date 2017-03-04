//
//	OriginalMp4.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.


import Foundation

class OriginalMp4{

	var height : String!
	var mp4 : String!
	var mp4Size : String!
	var width : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		height = dictionary["height"] as? String
		mp4 = dictionary["mp4"] as? String
		mp4Size = dictionary["mp4_size"] as? String
		width = dictionary["width"] as? String
	}

}
