//
//	Image.swift
//
//	Create by Egzon Arifi on 4/3/2017
//	Copyright © 2017. All rights reserved.

import Foundation

class Image{

	var downsized : Downsized!
	var downsizedLarge : Downsized!
	var downsizedMedium : Downsized!
	var downsizedSmall : DownsizedSmall!
	var downsizedStill : Downsized!
	var fixedHeight : FixedHeight!
	var fixedHeightDownsampled : FixedHeightDownsampled!
	var fixedHeightSmall : FixedHeight!
	var fixedHeightSmallStill : Downsized!
	var fixedHeightStill : Downsized!
	var fixedWidth : FixedHeight!
	var fixedWidthDownsampled : FixedHeightDownsampled!
	var fixedWidthSmall : FixedHeight!
	var fixedWidthSmallStill : Downsized!
	var fixedWidthStill : Downsized!
	var looping : DownsizedSmall!
	var original : Original!
	var originalMp4 : OriginalMp4!
	var originalStill : Downsized!
	var preview : OriginalMp4!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let downsizedData = dictionary["downsized"] as? [String:Any]{
			downsized = Downsized(fromDictionary: downsizedData)
		}
		if let downsizedLargeData = dictionary["downsized_large"] as? [String:Any]{
			downsizedLarge = Downsized(fromDictionary: downsizedLargeData)
		}
		if let downsizedMediumData = dictionary["downsized_medium"] as? [String:Any]{
			downsizedMedium = Downsized(fromDictionary: downsizedMediumData)
		}
		if let downsizedSmallData = dictionary["downsized_small"] as? [String:Any]{
			downsizedSmall = DownsizedSmall(fromDictionary: downsizedSmallData)
		}
		if let downsizedStillData = dictionary["downsized_still"] as? [String:Any]{
			downsizedStill = Downsized(fromDictionary: downsizedStillData)
		}
		if let fixedHeightData = dictionary["fixed_height"] as? [String:Any]{
			fixedHeight = FixedHeight(fromDictionary: fixedHeightData)
		}
		if let fixedHeightDownsampledData = dictionary["fixed_height_downsampled"] as? [String:Any]{
			fixedHeightDownsampled = FixedHeightDownsampled(fromDictionary: fixedHeightDownsampledData)
		}
		if let fixedHeightSmallData = dictionary["fixed_height_small"] as? [String:Any]{
			fixedHeightSmall = FixedHeight(fromDictionary: fixedHeightSmallData)
		}
		if let fixedHeightSmallStillData = dictionary["fixed_height_small_still"] as? [String:Any]{
			fixedHeightSmallStill = Downsized(fromDictionary: fixedHeightSmallStillData)
		}
		if let fixedHeightStillData = dictionary["fixed_height_still"] as? [String:Any]{
			fixedHeightStill = Downsized(fromDictionary: fixedHeightStillData)
		}
		if let fixedWidthData = dictionary["fixed_width"] as? [String:Any]{
			fixedWidth = FixedHeight(fromDictionary: fixedWidthData)
		}
		if let fixedWidthDownsampledData = dictionary["fixed_width_downsampled"] as? [String:Any]{
			fixedWidthDownsampled = FixedHeightDownsampled(fromDictionary: fixedWidthDownsampledData)
		}
		if let fixedWidthSmallData = dictionary["fixed_width_small"] as? [String:Any]{
			fixedWidthSmall = FixedHeight(fromDictionary: fixedWidthSmallData)
		}
		if let fixedWidthSmallStillData = dictionary["fixed_width_small_still"] as? [String:Any]{
			fixedWidthSmallStill = Downsized(fromDictionary: fixedWidthSmallStillData)
		}
		if let fixedWidthStillData = dictionary["fixed_width_still"] as? [String:Any]{
			fixedWidthStill = Downsized(fromDictionary: fixedWidthStillData)
		}
		if let loopingData = dictionary["looping"] as? [String:Any]{
			looping = DownsizedSmall(fromDictionary: loopingData)
		}
		if let originalData = dictionary["original"] as? [String:Any]{
			original = Original(fromDictionary: originalData)
		}
		if let originalMp4Data = dictionary["original_mp4"] as? [String:Any]{
			originalMp4 = OriginalMp4(fromDictionary: originalMp4Data)
		}
		if let originalStillData = dictionary["original_still"] as? [String:Any]{
			originalStill = Downsized(fromDictionary: originalStillData)
		}
		if let previewData = dictionary["preview"] as? [String:Any]{
			preview = OriginalMp4(fromDictionary: previewData)
		}
	}

}
