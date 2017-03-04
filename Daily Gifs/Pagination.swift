//
//	Pagination.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class Pagination{

	var count : Int!
	var offset : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		count = dictionary["count"] as? Int
		offset = dictionary["offset"] as? Int
	}

}
