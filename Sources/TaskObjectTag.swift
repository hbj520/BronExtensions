//
//	TaskObjectTag.swift
//
//	Create by Bron on 23/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class TaskObjectTag : NSObject, NSCoding{

	var createTime : Int!
	var id : Int!
	var isDel : Int!
	var title : String!
	var updateTime : Int!
	var userId : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		createTime = dictionary["create_time"] as? Int
		id = dictionary["id"] as? Int
		isDel = dictionary["isDel"] as? Int
		title = dictionary["title"] as? String
		updateTime = dictionary["update_time"] as? Int
		userId = dictionary["userId"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createTime != nil{
			dictionary["create_time"] = createTime
		}
		if id != nil{
			dictionary["id"] = id
		}
		if isDel != nil{
			dictionary["isDel"] = isDel
		}
		if title != nil{
			dictionary["title"] = title
		}
		if updateTime != nil{
			dictionary["update_time"] = updateTime
		}
		if userId != nil{
			dictionary["userId"] = userId
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createTime = aDecoder.decodeObject(forKey: "create_time") as? Int
         id = aDecoder.decodeObject(forKey: "id") as? Int
         isDel = aDecoder.decodeObject(forKey: "isDel") as? Int
         title = aDecoder.decodeObject(forKey: "title") as? String
         updateTime = aDecoder.decodeObject(forKey: "update_time") as? Int
         userId = aDecoder.decodeObject(forKey: "userId") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if createTime != nil{
			aCoder.encode(createTime, forKey: "create_time")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if isDel != nil{
			aCoder.encode(isDel, forKey: "isDel")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if updateTime != nil{
			aCoder.encode(updateTime, forKey: "update_time")
		}
		if userId != nil{
			aCoder.encode(userId, forKey: "userId")
		}

	}

}