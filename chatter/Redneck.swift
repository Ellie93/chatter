//
//  angryFarmer.swift
//  chatter
//
//  Created by Arthur Heimbrecht on 1.5.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//
import UIKit

class Redneck: Chatter {
	
	required init() {
		super.init(image: UIImage(named: "redneck"))
	}
	
	var counter = 0
	
	override func nextMessage() -> Message {
		switch counter {
			case 0: return Message(content: "They took our jobs!", type: .statement)
			case 1: return Message(content: "They took our jobs!!!!!!!", type: .statement)
			case 2: return Message(content: "They tuk r jaaaaabs!!!!!", type: .statement)
			case 3: return Message(content: "Te-tukr jeeeeeeeerbs!!!!!", type: .statement)
			case 4...100: return Message(content: "Te-tkr-geeeeeeeerbs!!!!!", type: .statement)
		default: return Message(content: "They took our jobs.", type: .statement)
		}
	}
	
		override func responseForMessage(_ message: Message) -> Message {
			if (message.content == "Make America great again!") {
				counter=0
				return Message(content: "All hail Donald Trump, he'll get them.", type: .statement)
			}
			if (message.type == .statement) {
				counter+=1
				return [
					Message(content: "Ah tell ya' boy!!!", type: .statement),
					Message(content: "Whut", type: .questionWhy),
					Message(content: "Thanks Obama!!", type: .statement),
				].randomElement()
			}
			if (message.type == .joke) {
				counter+=2
				return Message(content: "You think this' funny?!! Ah tell ya what ain't funny:", type: .statement)
			}
			return Message(content: "No, cause…", type: .statement)
		}
	
}
