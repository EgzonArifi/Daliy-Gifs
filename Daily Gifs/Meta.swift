//
//	Meta.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class Meta{

	var msg : String!
	var responseId : String!
	var status : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		msg = dictionary["msg"] as? String
		responseId = dictionary["response_id"] as? String
		status = dictionary["status"] as? Int
	}

}
