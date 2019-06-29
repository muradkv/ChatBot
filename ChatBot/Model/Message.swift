//
//  Message.swift
//  ChatBot
//
//  Created by murad on 29/06/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import Foundation

/// The type of message
enum MessageType {
    case question
    case answer
}

/// A conversation entry made by the user of the app
struct Message {
    let date: Date
    let text: String
    let type: MessageType
}

/// The welcoming text to display to open the conversation
let openingLine = Message(date: Date(), text: "Hello! I'm ChatBot. \nPlease tell me when i can kill you. Just kidding. \nAsk me a question", type: .answer)
