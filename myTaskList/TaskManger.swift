//
//  TaskManger.swift
//  myTaskList
//
//  Created by kehlin swain on 10/17/14.
//  Copyright (c) 2014 kehlin swain. All rights reserved.
//

import UIKit

var taskMgr: TaskManger = TaskManger()

struct task
{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManger: NSObject
{
    var tasks = [task]()
    
    func addTask(name: String, desc: String)
    {
        tasks.append(task(name: name, desc: desc))
        
    }
}
