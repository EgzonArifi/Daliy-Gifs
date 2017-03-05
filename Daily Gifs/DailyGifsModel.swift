//
//	DailyGifsModel.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.


import Foundation
import Alamofire

class DailyGifsModel{

	var datasModel : [Data]!
	var meta : Meta!
	var pagination : Pagination!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		datasModel = [Data]()
		if let dataArray = dictionary["data"] as? [[String:Any]]{
			for dic in dataArray{
				let value = Data(fromDictionary: dic)
				datasModel.append(value)
			}
		}
		if let metaData = dictionary["meta"] as? [String:Any]{
			meta = Meta(fromDictionary: metaData)
		}
		if let paginationData = dictionary["pagination"] as? [String:Any]{
			pagination = Pagination(fromDictionary: paginationData)
		}
	}
}
