//
//	Message.swift
//
//	Create by Bron on 30/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Message : NSObject, NSCoding{

	var createTime : Int!
	var id : Int!
	var isRead : Int!
	var linkType : Int!
	var message : String!
	var params : Param!
	var title : String!
	var type : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		createTime = dictionary["createTime"] as? Int
		id = dictionary["id"] as? Int
		isRead = dictionary["isRead"] as? Int
		linkType = dictionary["linkType"] as? Int
		message = dictionary["message"] as? String
		if let paramsData = dictionary["params"] as? [String:Any]{
			params = Param(fromDictionary: paramsData)
		}
		title = dictionary["title"] as? String
		type = dictionary["type"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createTime != nil{
			dictionary["createTime"] = createTime
		}
		if id != nil{
			dictionary["id"] = id
		}
		if isRead != nil{
			dictionary["isRead"] = isRead
		}
		if linkType != nil{
			dictionary["linkType"] = linkType
		}
		if message != nil{
			dictionary["message"] = message
		}
		if params != nil{
			dictionary["params"] = params.toDictionary()
		}
		if title != nil{
			dictionary["title"] = title
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createTime = aDecoder.decodeObject(forKey: "createTime") as? Int
         id = aDecoder.decodeObject(forKey: "id") as? Int
         isRead = aDecoder.decodeObject(forKey: "isRead") as? Int
         linkType = aDecoder.decodeObject(forKey: "linkType") as? Int
         message = aDecoder.decodeObject(forKey: "message") as? String
         params = aDecoder.decodeObject(forKey: "params") as? Param
         title = aDecoder.decodeObject(forKey: "title") as? String
         type = aDecoder.decodeObject(forKey: "type") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if createTime != nil{
			aCoder.encode(createTime, forKey: "createTime")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if isRead != nil{
			aCoder.encode(isRead, forKey: "isRead")
		}
		if linkType != nil{
			aCoder.encode(linkType, forKey: "linkType")
		}
		if message != nil{
			aCoder.encode(message, forKey: "message")
		}
		if params != nil{
			aCoder.encode(params, forKey: "params")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}

	}

}