//
//	Param.swift
//
//	Create by Bron on 30/9/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Param : NSObject, NSCoding{

	var taskId : String!
	var taskNoteId : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		taskId = dictionary["task_id"] as? String
		taskNoteId = dictionary["task_note_id"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if taskId != nil{
			dictionary["task_id"] = taskId
		}
		if taskNoteId != nil{
			dictionary["task_note_id"] = taskNoteId
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         taskId = aDecoder.decodeObject(forKey: "task_id") as? String
         taskNoteId = aDecoder.decodeObject(forKey: "task_note_id") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if taskId != nil{
			aCoder.encode(taskId, forKey: "task_id")
		}
		if taskNoteId != nil{
			aCoder.encode(taskNoteId, forKey: "task_note_id")
		}

	}

}