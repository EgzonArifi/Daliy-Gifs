//
//	User.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class User{

	var avatarUrl : String!
	var bannerUrl : String!
	var displayName : String!
	var profileUrl : String!
	var twitter : String!
	var username : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		avatarUrl = dictionary["avatar_url"] as? String
		bannerUrl = dictionary["banner_url"] as? String
		displayName = dictionary["display_name"] as? String
		profileUrl = dictionary["profile_url"] as? String
		twitter = dictionary["twitter"] as? String
		username = dictionary["username"] as? String
	}

}
