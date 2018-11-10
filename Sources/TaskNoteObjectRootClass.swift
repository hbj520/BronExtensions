//
//	TaskNoteObjectRootClass.swift
//
//	Create by Bron on 18/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class TaskNoteObjectRootClass : NSObject, NSCoding{

	var createdTime : Int!
	var extra : TaskNoteObjectExtra!
	var id : Int!
	var noticeMode : Int!
	var noticeTime : Int!
	var noticeVoice : String!
	var status : Int!
	var taskId : Int!
	var updateTime : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		createdTime = dictionary["createdTime"] as? Int
		if let extraData = dictionary["extra"] as? [String:Any]{
			extra = TaskNoteObjectExtra(fromDictionary: extraData)
		}
		id = dictionary["id"] as? Int
		noticeMode = dictionary["noticeMode"] as? Int
		noticeTime = dictionary["noticeTime"] as? Int
		noticeVoice = dictionary["noticeVoice"] as? String
		status = dictionary["status"] as? Int
		taskId = dictionary["taskId"] as? Int
		updateTime = dictionary["updateTime"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createdTime != nil{
			dictionary["createdTime"] = createdTime
		}
		if extra != nil{
			dictionary["extra"] = extra.toDictionary()
		}
		if id != nil{
			dictionary["id"] = id
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
		if status != nil{
			dictionary["status"] = status
		}
		if taskId != nil{
			dictionary["taskId"] = taskId
		}
		if updateTime != nil{
			dictionary["updateTime"] = updateTime
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createdTime = aDecoder.decodeObject(forKey: "createdTime") as? Int
         extra = aDecoder.decodeObject(forKey: "extra") as? TaskNoteObjectExtra
         id = aDecoder.decodeObject(forKey: "id") as? Int
         noticeMode = aDecoder.decodeObject(forKey: "noticeMode") as? Int
         noticeTime = aDecoder.decodeObject(forKey: "noticeTime") as? Int
         noticeVoice = aDecoder.decodeObject(forKey: "noticeVoice") as? String
         status = aDecoder.decodeObject(forKey: "status") as? Int
         taskId = aDecoder.decodeObject(forKey: "taskId") as? Int
         updateTime = aDecoder.decodeObject(forKey: "updateTime") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if createdTime != nil{
			aCoder.encode(createdTime, forKey: "createdTime")
		}
		if extra != nil{
			aCoder.encode(extra, forKey: "extra")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
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
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}
		if taskId != nil{
			aCoder.encode(taskId, forKey: "taskId")
		}
		if updateTime != nil{
			aCoder.encode(updateTime, forKey: "updateTime")
		}

	}

}