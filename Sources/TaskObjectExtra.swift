//
//	TaskObjectExtra.swift
//
//	Create by Bron on 23/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class TaskObjectExtra : NSObject, NSCoding{

	var periodCompleteTime : Int!
	var periodDuration : Int!
	var periodNoticeTime : Int!
	var periodType : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		periodCompleteTime = dictionary["periodCompleteTime"] as? Int
		periodDuration = dictionary["periodDuration"] as? Int
		periodNoticeTime = dictionary["periodNoticeTime"] as? Int
		periodType = dictionary["periodType"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if periodCompleteTime != nil{
			dictionary["periodCompleteTime"] = periodCompleteTime
		}
		if periodDuration != nil{
			dictionary["periodDuration"] = periodDuration
		}
		if periodNoticeTime != nil{
			dictionary["periodNoticeTime"] = periodNoticeTime
		}
		if periodType != nil{
			dictionary["periodType"] = periodType
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         periodCompleteTime = aDecoder.decodeObject(forKey: "periodCompleteTime") as? Int
         periodDuration = aDecoder.decodeObject(forKey: "periodDuration") as? Int
         periodNoticeTime = aDecoder.decodeObject(forKey: "periodNoticeTime") as? Int
         periodType = aDecoder.decodeObject(forKey: "periodType") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if periodCompleteTime != nil{
			aCoder.encode(periodCompleteTime, forKey: "periodCompleteTime")
		}
		if periodDuration != nil{
			aCoder.encode(periodDuration, forKey: "periodDuration")
		}
		if periodNoticeTime != nil{
			aCoder.encode(periodNoticeTime, forKey: "periodNoticeTime")
		}
		if periodType != nil{
			aCoder.encode(periodType, forKey: "periodType")
		}

	}

}