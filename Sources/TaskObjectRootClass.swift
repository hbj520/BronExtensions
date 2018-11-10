//
//	TaskObjectRootClass.swift
//
//	Create by Bron on 23/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class TaskObjectRootClass : NSObject, NSCoding{

	var createTime : Int!
	var extra : TaskObjectExtra!
	var id : Int!
	var members : [String]!
	var noticeMode : Int!
	var noticeTime : Int!
	var noticeVoice : String!
	var remark : String!
	var status : Int!
	var tags : [TaskObjectTag]!
	var title : String!
	var type : Int!
	var updateTime : Int!
	var userId : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		createTime = dictionary["createTime"] as? Int
		if let extraData = dictionary["extra"] as? [String:Any]{
			extra = TaskObjectExtra(fromDictionary: extraData)
		}
		id = dictionary["id"] as? Int
		members = dictionary["members"] as? [String]
		noticeMode = dictionary["noticeMode"] as? Int
		noticeTime = dictionary["noticeTime"] as? Int
		noticeVoice = dictionary["noticeVoice"] as? String
		remark = dictionary["remark"] as? String
		status = dictionary["status"] as? Int
		tags = [TaskObjectTag]()
		if let tagsArray = dictionary["tags"] as? [[String:Any]]{
			for dic in tagsArray{
				let value = TaskObjectTag(fromDictionary: dic)
				tags.append(value)
			}
		}
		title = dictionary["title"] as? String
		type = dictionary["type"] as? Int
		updateTime = dictionary["updateTime"] as? Int
		userId = dictionary["userId"] as? Int
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
		if extra != nil{
			dictionary["extra"] = extra.toDictionary()
		}
		if id != nil{
			dictionary["id"] = id
		}
		if members != nil{
			dictionary["members"] = members
		}
		if noticeMode != nil{
			dictionary["noticeMode"] = noticeMode
		}
		if noticeTime != nil{
			dictionary["noticeTime"] = noticeTime
		}
		if noticeVoice != nil{
			dictionary["noticeVoice"] = noticeVoice
		}
		if remark != nil{
			dictionary["remark"] = remark
		}
		if status != nil{
			dictionary["status"] = status
		}
		if tags != nil{
			var dictionaryElements = [[String:Any]]()
			for tagsElement in tags {
				dictionaryElements.append(tagsElement.toDictionary())
			}
			dictionary["tags"] = dictionaryElements
		}
		if title != nil{
			dictionary["title"] = title
		}
		if type != nil{
			dictionary["type"] = type
		}
		if updateTime != nil{
			dictionary["updateTime"] = updateTime
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
         createTime = aDecoder.decodeObject(forKey: "createTime") as? Int
         extra = aDecoder.decodeObject(forKey: "extra") as? TaskObjectExtra
         id = aDecoder.decodeObject(forKey: "id") as? Int
         members = aDecoder.decodeObject(forKey: "members") as? [String]
         noticeMode = aDecoder.decodeObject(forKey: "noticeMode") as? Int
         noticeTime = aDecoder.decodeObject(forKey: "noticeTime") as? Int
         noticeVoice = aDecoder.decodeObject(forKey: "noticeVoice") as? String
         remark = aDecoder.decodeObject(forKey: "remark") as? String
         status = aDecoder.decodeObject(forKey: "status") as? Int
         tags = aDecoder.decodeObject(forKey :"tags") as? [TaskObjectTag]
         title = aDecoder.decodeObject(forKey: "title") as? String
         type = aDecoder.decodeObject(forKey: "type") as? Int
         updateTime = aDecoder.decodeObject(forKey: "updateTime") as? Int
         userId = aDecoder.decodeObject(forKey: "userId") as? Int

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
		if extra != nil{
			aCoder.encode(extra, forKey: "extra")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if members != nil{
			aCoder.encode(members, forKey: "members")
		}
		if noticeMode != nil{
			aCoder.encode(noticeMode, forKey: "noticeMode")
		}
		if noticeTime != nil{
			aCoder.encode(noticeTime, forKey: "noticeTime")
		}
		if noticeVoice != nil{
			aCoder.encode(noticeVoice, forKey: "noticeVoice")
		}
		if remark != nil{
			aCoder.encode(remark, forKey: "remark")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}
		if tags != nil{
			aCoder.encode(tags, forKey: "tags")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if updateTime != nil{
			aCoder.encode(updateTime, forKey: "updateTime")
		}
		if userId != nil{
			aCoder.encode(userId, forKey: "userId")
		}

	}

}