//
//  ConversationCell.swift
//  ChatBot
//
//  Created by murad on 27/06/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

private var dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.doesRelativeDateFormatting = true
    formatter.timeStyle = .short
    formatter.dateStyle = .short
    return formatter
}()

class ConversationCell: UITableViewCell {
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    
    func configureWithMessage(_ message: Message) {
        dateLabel.text = dateFormatter.string(from: message.date as Date)
        messageLabel.text = message.text
    }

}
