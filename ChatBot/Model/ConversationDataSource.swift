//
//  ConversationDataSource.swift
//  ChatBot
//
//  Created by murad on 01/07/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import Foundation

class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    /// Storage
    var messages = [Message]()
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        messageCount += 1
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        messageCount += 1
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        
//        if index % 2 == 0 {
//            return Message(date: Date(), text: "Question \(index / 2)", type: .question)
//        } else {
//            return Message(date: Date(), text: "Answer \(index / 2)", type: .answer)
//        }
        
        return messages[index]
    }
}
