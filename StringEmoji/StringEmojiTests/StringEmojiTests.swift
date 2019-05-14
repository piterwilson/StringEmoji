//
//  StringEmojiTests.swift
//  StringEmojiTests
//
//  Created by Juan Carlos Ospina Gonzalez on 14/05/2019.
//  Copyright © 2019 Piterwilson. All rights reserved.
//

import XCTest
@testable import StringEmoji

class StringEmojiTests: XCTestCase {
    
    let nonEmojiNumbersString = "01234567890"
    
    let nonEmojiAlphaString = "AaBcCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
    
    let nonEmojistringSpecialCharacters = "aáäâⱰɒᶛbcdeéêfghiíïjklmnoøpqrstuvwxyz0123456789!@#$%^&*()_+[]{};'\\:|,./<>? ꞀʎẟƖɩᶥ"
    
    let emojiString = "😀😁😂🤣😃😄😅😆😉😊😋😎😍😘😗😙😚☺🙂🤗🤩🤔🤨😐😑😶🙄😏😣😥😮🤐😯😪😫😴😌😛😜😝🤤😒😓😔😕🙃🤑😲☹🙁😖😞😟😤😢😭😦😧😨😩🤯😬😰😱😳🤪😵😡😠🤬😷🤒🤕🤢🤮🤧😇🤠🤡🤥🤫🤭🧐🤓😈👿👹👺💀☠👻👽👾🤖💩😺😸😹😻😼😽🙀😿😾🙈🙉🙊👶👶🏻👶🏼👶🏽👶🏾👶🏿🧒🧒🏻🧒🏼🧒🏽🧒🏾🧒🏿👦👦🏻👦🏼👦🏽👦🏾👦🏿👧👧🏻👧🏼👧🏽👧🏾👧🏿🧑🧑🏻🧑🏼🧑🏽🧑🏾🧑🏿👨👨🏻👨🏼👨🏽👨🏾👨🏿👩👩🏻👩🏼👩🏽👩🏾👩🏿🧓🧓🏻🧓🏼🧓🏽🧓🏾🧓🏿👴👴🏻👴🏼👴🏽👴🏾👴🏿👵👵🏻👵🏼👵🏽👵🏾👵🏿👨‍⚕️👨🏻‍⚕️👨🏼‍⚕️👨🏽‍⚕️👨🏾‍⚕️👨🏿‍⚕️👩‍⚕️👩🏻‍⚕️👩🏼‍⚕️👩🏽‍⚕️👩🏾‍⚕️👩🏿‍⚕️👨‍🎓👨🏻‍🎓👨🏼‍🎓👨🏽‍🎓👨🏾‍🎓👨🏿‍🎓👩‍🎓👩🏻‍🎓👩🏼‍🎓👩🏽‍🎓👩🏾‍🎓👩🏿‍🎓👨‍🏫👨🏻‍🏫👨🏼‍🏫👨🏽‍🏫👨🏾‍🏫👨🏿‍🏫👩‍🏫👩🏻‍🏫👩🏼‍🏫👩🏽‍🏫👩🏾‍🏫👩🏿‍🏫👨‍⚖️👨🏻‍⚖️👨🏼‍⚖️👨🏽‍⚖️👨🏾‍⚖️👨🏿‍⚖️👩‍⚖️👩🏻‍⚖️👩🏼‍⚖️👩🏽‍⚖️👩🏾‍⚖️👩🏿‍⚖️👨‍🌾👨🏻‍🌾👨🏼‍🌾👨🏽‍🌾👨🏾‍🌾👨🏿‍🌾👩‍🌾👩🏻‍🌾👩🏼‍🌾👩🏽‍🌾👩🏾‍🌾👩🏿‍🌾👨‍🍳👨🏻‍🍳👨🏼‍🍳👨🏽‍🍳👨🏾‍🍳👨🏿‍🍳👩‍🍳👩🏻‍🍳👩🏼‍🍳👩🏽‍🍳👩🏾‍🍳👩🏿‍🍳👨‍🔧👨🏻‍🔧👨🏼‍🔧👨🏽‍🔧👨🏾‍🔧👨🏿‍🔧👩‍🔧👩🏻‍🔧👩🏼‍🔧👩🏽‍🔧👩🏾‍🔧👩🏿‍🔧👨‍🏭👨🏻‍🏭👨🏼‍🏭👨🏽‍🏭👨🏾‍🏭👨🏿‍🏭👩‍🏭👩🏻‍🏭👩🏼‍🏭👩🏽‍🏭👩🏾‍🏭👩🏿‍🏭👨‍💼👨🏻‍💼👨🏼‍💼👨🏽‍💼👨🏾‍💼👨🏿‍💼👩‍💼👩🏻‍💼👩🏼‍💼👩🏽‍💼👩🏾‍💼👩🏿‍💼👨‍🔬👨🏻‍🔬👨🏼‍🔬👨🏽‍🔬👨🏾‍🔬👨🏿‍🔬👩‍🔬👩🏻‍🔬👩🏼‍🔬👩🏽‍🔬👩🏾‍🔬👩🏿‍🔬👨‍💻👨🏻‍💻👨🏼‍💻👨🏽‍💻👨🏾‍💻👨🏿‍💻👩‍💻👩🏻‍💻👩🏼‍💻👩🏽‍💻👩🏾‍💻👩🏿‍💻👨‍🎤👨🏻‍🎤👨🏼‍🎤👨🏽‍🎤👨🏾‍🎤👨🏿‍🎤👩‍🎤👩🏻‍🎤👩🏼‍🎤👩🏽‍🎤👩🏾‍🎤👩🏿‍🎤👨‍🎨👨🏻‍🎨👨🏼‍🎨👨🏽‍🎨👨🏾‍🎨👨🏿‍🎨👩‍🎨👩🏻‍🎨👩🏼‍🎨👩🏽‍🎨👩🏾‍🎨👩🏿‍🎨👨‍✈️👨🏻‍✈️👨🏼‍✈️👨🏽‍✈️👨🏾‍✈️👨🏿‍✈️👩‍✈️👩🏻‍✈️👩🏼‍✈️👩🏽‍✈️👩🏾‍✈️👩🏿‍✈️👨‍🚀👨🏻‍🚀👨🏼‍🚀👨🏽‍🚀👨🏾‍🚀👨🏿‍🚀👩‍🚀👩🏻‍🚀👩🏼‍🚀👩🏽‍🚀👩🏾‍🚀👩🏿‍🚀👨‍🚒👨🏻‍🚒👨🏼‍🚒👨🏽‍🚒👨🏾‍🚒👨🏿‍🚒👩‍🚒👩🏻‍🚒👩🏼‍🚒👩🏽‍🚒👩🏾‍🚒👩🏿‍🚒👮👮🏻👮🏼👮🏽👮🏾👮🏿👮‍♂️👮🏻‍♂️👮🏼‍♂️👮🏽‍♂️👮🏾‍♂️👮🏿‍♂️👮‍♀️👮🏻‍♀️👮🏼‍♀️👮🏽‍♀️👮🏾‍♀️👮🏿‍♀️🕵🕵🏻🕵🏼🕵🏽🕵🏾🕵🏿🕵️‍♂️🕵🏻‍♂️🕵🏼‍♂️🕵🏽‍♂️🕵🏾‍♂️🕵🏿‍♂️🕵️‍♀️🕵🏻‍♀️🕵🏼‍♀️🕵🏽‍♀️🕵🏾‍♀️🕵🏿‍♀️💂💂🏻💂🏼💂🏽💂🏾💂🏿💂‍♂️💂🏻‍♂️💂🏼‍♂️💂🏽‍♂️💂🏾‍♂️💂🏿‍♂️💂‍♀️💂🏻‍♀️💂🏼‍♀️💂🏽‍♀️💂🏾‍♀️💂🏿‍♀️👷👷🏻👷🏼👷🏽👷🏾👷🏿👷‍♂️👷🏻‍♂️👷🏼‍♂️👷🏽‍♂️👷🏾‍♂️👷🏿‍♂️👷‍♀️👷🏻‍♀️👷🏼‍♀️👷🏽‍♀️👷🏾‍♀️👷🏿‍♀️🤴🤴🏻🤴🏼🤴🏽🤴🏾🤴🏿👸👸🏻👸🏼👸🏽👸🏾👸🏿👳👳🏻👳🏼👳🏽👳🏾👳🏿👳‍♂️👳🏻‍♂️👳🏼‍♂️👳🏽‍♂️👳🏾‍♂️👳🏿‍♂️👳‍♀️👳🏻‍♀️👳🏼‍♀️👳🏽‍♀️👳🏾‍♀️👳🏿‍♀️👲👲🏻👲🏼👲🏽👲🏾👲🏿🧕🧕🏻🧕🏼🧕🏽🧕🏾🧕🏿🧔🧔🏻🧔🏼🧔🏽🧔🏾🧔🏿👱👱🏻👱🏼👱🏽👱🏾👱🏿👱‍♂️👱🏻‍♂️👱🏼‍♂️👱🏽‍♂️👱🏾‍♂️👱🏿‍♂️👱‍♀️👱🏻‍♀️👱🏼‍♀️👱🏽‍♀️👱🏾‍♀️👱🏿‍♀️🤵🤵🏻🤵🏼🤵🏽🤵🏾🤵🏿👰👰🏻👰🏼👰🏽👰🏾👰🏿🤰🤰🏻🤰🏼🤰🏽🤰🏾🤰🏿🤱🤱🏻🤱🏼🤱🏽🤱🏾🤱🏿👼👼🏻👼🏼👼🏽👼🏾👼🏿🎅🎅🏻🎅🏼🎅🏽🎅🏾🎅🏿🤶🤶🏻🤶🏼🤶🏽🤶🏾🤶🏿🧙🧙🏻🧙🏼🧙🏽🧙🏾🧙🏿🧙‍♀️🧙🏻‍♀️🧙🏼‍♀️🧙🏽‍♀️🧙🏾‍♀️🧙🏿‍♀️🧙‍♂️🧙🏻‍♂️🧙🏼‍♂️🧙🏽‍♂️🧙🏾‍♂️🧙🏿‍♂️🧚🧚🏻🧚🏼🧚🏽🧚🏾🧚🏿🧚‍♀️🧚🏻‍♀️🧚🏼‍♀️🧚🏽‍♀️🧚🏾‍♀️🧚🏿‍♀️🧚‍♂️🧚🏻‍♂️🧚🏼‍♂️🧚🏽‍♂️🧚🏾‍♂️🧚🏿‍♂️🧛🧛🏻🧛🏼🧛🏽🧛🏾🧛🏿🧛‍♀️🧛🏻‍♀️🧛🏼‍♀️🧛🏽‍♀️🧛🏾‍♀️🧛🏿‍♀️🧛‍♂️🧛🏻‍♂️🧛🏼‍♂️🧛🏽‍♂️🧛🏾‍♂️🧛🏿‍♂️🧜🧜🏻🧜🏼🧜🏽🧜🏾🧜🏿🧜‍♀️🧜🏻‍♀️🧜🏼‍♀️🧜🏽‍♀️🧜🏾‍♀️🧜🏿‍♀️🧜‍♂️🧜🏻‍♂️🧜🏼‍♂️🧜🏽‍♂️🧜🏾‍♂️🧜🏿‍♂️🧝🧝🏻🧝🏼🧝🏽🧝🏾🧝🏿🧝‍♀️🧝🏻‍♀️🧝🏼‍♀️🧝🏽‍♀️🧝🏾‍♀️🧝🏿‍♀️🧝‍♂️🧝🏻‍♂️🧝🏼‍♂️🧝🏽‍♂️🧝🏾‍♂️🧝🏿‍♂️🧞🧞‍♀️🧞‍♂️🧟🧟‍♀️🧟‍♂️🙍🙍🏻🙍🏼🙍🏽🙍🏾🙍🏿🙍‍♂️🙍🏻‍♂️🙍🏼‍♂️🙍🏽‍♂️🙍🏾‍♂️🙍🏿‍♂️🙍‍♀️🙍🏻‍♀️🙍🏼‍♀️🙍🏽‍♀️🙍🏾‍♀️🙍🏿‍♀️🙎🙎🏻🙎🏼🙎🏽🙎🏾🙎🏿🙎‍♂️🙎🏻‍♂️🙎🏼‍♂️🙎🏽‍♂️🙎🏾‍♂️🙎🏿‍♂️🙎‍♀️🙎🏻‍♀️🙎🏼‍♀️🙎🏽‍♀️🙎🏾‍♀️🙎🏿‍♀️🙅🙅🏻🙅🏼🙅🏽🙅🏾🙅🏿🙅‍♂️🙅🏻‍♂️🙅🏼‍♂️🙅🏽‍♂️🙅🏾‍♂️🙅🏿‍♂️🙅‍♀️🙅🏻‍♀️🙅🏼‍♀️🙅🏽‍♀️🙅🏾‍♀️🙅🏿‍♀️🙆🙆🏻🙆🏼🙆🏽🙆🏾🙆🏿🙆‍♂️🙆🏻‍♂️🙆🏼‍♂️🙆🏽‍♂️🙆🏾‍♂️🙆🏿‍♂️🙆‍♀️🙆🏻‍♀️🙆🏼‍♀️🙆🏽‍♀️🙆🏾‍♀️🙆🏿‍♀️💁💁🏻💁🏼💁🏽💁🏾💁🏿💁‍♂️💁🏻‍♂️💁🏼‍♂️💁🏽‍♂️💁🏾‍♂️💁🏿‍♂️💁‍♀️💁🏻‍♀️💁🏼‍♀️💁🏽‍♀️💁🏾‍♀️💁🏿‍♀️🙋🙋🏻🙋🏼🙋🏽🙋🏾🙋🏿🙋‍♂️🙋🏻‍♂️🙋🏼‍♂️🙋🏽‍♂️🙋🏾‍♂️🙋🏿‍♂️🙋‍♀️🙋🏻‍♀️🙋🏼‍♀️🙋🏽‍♀️🙋🏾‍♀️🙋🏿‍♀️🙇🙇🏻🙇🏼🙇🏽🙇🏾🙇🏿🙇‍♂️🙇🏻‍♂️🙇🏼‍♂️🙇🏽‍♂️🙇🏾‍♂️🙇🏿‍♂️🙇‍♀️🙇🏻‍♀️🙇🏼‍♀️🙇🏽‍♀️🙇🏾‍♀️🙇🏿‍♀️🤦🤦🏻🤦🏼🤦🏽🤦🏾🤦🏿🤦‍♂️🤦🏻‍♂️🤦🏼‍♂️🤦🏽‍♂️🤦🏾‍♂️🤦🏿‍♂️🤦‍♀️🤦🏻‍♀️🤦🏼‍♀️🤦🏽‍♀️🤦🏾‍♀️🤦🏿‍♀️🤷🤷🏻🤷🏼🤷🏽🤷🏾🤷🏿🤷‍♂️🤷🏻‍♂️🤷🏼‍♂️🤷🏽‍♂️🤷🏾‍♂️🤷🏿‍♂️🤷‍♀️🤷🏻‍♀️🤷🏼‍♀️🤷🏽‍♀️🤷🏾‍♀️🤷🏿‍♀️💆💆🏻💆🏼💆🏽💆🏾💆🏿💆‍♂️💆🏻‍♂️💆🏼‍♂️💆🏽‍♂️💆🏾‍♂️💆🏿‍♂️💆‍♀️💆🏻‍♀️💆🏼‍♀️💆🏽‍♀️💆🏾‍♀️💆🏿‍♀️💇💇🏻💇🏼💇🏽💇🏾💇🏿💇‍♂️💇🏻‍♂️💇🏼‍♂️💇🏽‍♂️💇🏾‍♂️💇🏿‍♂️💇‍♀️💇🏻‍♀️💇🏼‍♀️💇🏽‍♀️💇🏾‍♀️💇🏿‍♀️🚶🚶🏻🚶🏼🚶🏽🚶🏾🚶🏿🚶‍♂️🚶🏻‍♂️🚶🏼‍♂️🚶🏽‍♂️🚶🏾‍♂️🚶🏿‍♂️🚶‍♀️🚶🏻‍♀️🚶🏼‍♀️🚶🏽‍♀️🚶🏾‍♀️🚶🏿‍♀️🏃🏃🏻🏃🏼🏃🏽🏃🏾🏃🏿🏃‍♂️🏃🏻‍♂️🏃🏼‍♂️🏃🏽‍♂️🏃🏾‍♂️🏃🏿‍♂️🏃‍♀️🏃🏻‍♀️🏃🏼‍♀️🏃🏽‍♀️🏃🏾‍♀️🏃🏿‍♀️💃💃🏻💃🏼💃🏽💃🏾💃🏿🕺🕺🏻🕺🏼🕺🏽🕺🏾🕺🏿👯👯‍♂️👯‍♀️🧖🧖🏻🧖🏼🧖🏽🧖🏾🧖🏿🧖‍♀️🧖🏻‍♀️🧖🏼‍♀️🧖🏽‍♀️🧖🏾‍♀️🧖🏿‍♀️🧖‍♂️🧖🏻‍♂️🧖🏼‍♂️🧖🏽‍♂️🧖🏾‍♂️🧖🏿‍♂️🧗🧗🏻🧗🏼🧗🏽🧗🏾🧗🏿🧗‍♀️🧗🏻‍♀️🧗🏼‍♀️🧗🏽‍♀️🧗🏾‍♀️🧗🏿‍♀️🧗‍♂️🧗🏻‍♂️🧗🏼‍♂️🧗🏽‍♂️🧗🏾‍♂️🧗🏿‍♂️🧘🧘🏻🧘🏼🧘🏽🧘🏾🧘🏿🧘‍♀️🧘🏻‍♀️🧘🏼‍♀️🧘🏽‍♀️🧘🏾‍♀️🧘🏿‍♀️🧘‍♂️🧘🏻‍♂️🧘🏼‍♂️🧘🏽‍♂️🧘🏾‍♂️🧘🏿‍♂️🛀🛀🏻🛀🏼🛀🏽🛀🏾🛀🏿🛌🛌🏻🛌🏼🛌🏽🛌🏾🛌🏿🕴🕴🏻🕴🏼🕴🏽🕴🏾🕴🏿🗣👤👥🤺🏇🏇🏻🏇🏼🏇🏽🏇🏾🏇🏿⛷🏂🏂🏻🏂🏼🏂🏽🏂🏾🏂🏿🏌🏌🏻🏌🏼🏌🏽🏌🏾🏌🏿🏌️‍♂️🏌🏻‍♂️🏌🏼‍♂️🏌🏽‍♂️🏌🏾‍♂️🏌🏿‍♂️🏌️‍♀️🏌🏻‍♀️🏌🏼‍♀️🏌🏽‍♀️🏌🏾‍♀️🏌🏿‍♀️🏄🏄🏻🏄🏼🏄🏽🏄🏾🏄🏿🏄‍♂️🏄🏻‍♂️🏄🏼‍♂️🏄🏽‍♂️🏄🏾‍♂️🏄🏿‍♂️🏄‍♀️🏄🏻‍♀️🏄🏼‍♀️🏄🏽‍♀️🏄🏾‍♀️🏄🏿‍♀️🚣🚣🏻🚣🏼🚣🏽🚣🏾🚣🏿🚣‍♂️🚣🏻‍♂️🚣🏼‍♂️🚣🏽‍♂️🚣🏾‍♂️🚣🏿‍♂️🚣‍♀️🚣🏻‍♀️🚣🏼‍♀️🚣🏽‍♀️🚣🏾‍♀️🚣🏿‍♀️🏊🏊🏻🏊🏼🏊🏽🏊🏾🏊🏿🏊‍♂️🏊🏻‍♂️🏊🏼‍♂️🏊🏽‍♂️🏊🏾‍♂️🏊🏿‍♂️🏊‍♀️🏊🏻‍♀️🏊🏼‍♀️🏊🏽‍♀️🏊🏾‍♀️🏊🏿‍♀️⛹⛹🏻⛹🏼⛹🏽⛹🏾⛹🏿⛹️‍♂️⛹🏻‍♂️⛹🏼‍♂️⛹🏽‍♂️⛹🏾‍♂️⛹🏿‍♂️⛹️‍♀️⛹🏻‍♀️⛹🏼‍♀️⛹🏽‍♀️⛹🏾‍♀️⛹🏿‍♀️🏋🏋🏻🏋🏼🏋🏽🏋🏾🏋🏿🏋️‍♂️🏋🏻‍♂️🏋🏼‍♂️🏋🏽‍♂️🏋🏾‍♂️🏋🏿‍♂️🏋️‍♀️🏋🏻‍♀️🏋🏼‍♀️🏋🏽‍♀️🏋🏾‍♀️🏋🏿‍♀️🚴🚴🏻🚴🏼🚴🏽🚴🏾🚴🏿🚴‍♂️🚴🏻‍♂️🚴🏼‍♂️🚴🏽‍♂️🚴🏾‍♂️🚴🏿‍♂️🚴‍♀️🚴🏻‍♀️🚴🏼‍♀️🚴🏽‍♀️🚴🏾‍♀️🚴🏿‍♀️🚵🚵🏻🚵🏼🚵🏽🚵🏾🚵🏿🚵‍♂️🚵🏻‍♂️🚵🏼‍♂️🚵🏽‍♂️🚵🏾‍♂️🚵🏿‍♂️🚵‍♀️🚵🏻‍♀️🚵🏼‍♀️🚵🏽‍♀️🚵🏾‍♀️🚵🏿‍♀️🏎🏍🤸🤸🏻🤸🏼🤸🏽🤸🏾🤸🏿🤸‍♂️🤸🏻‍♂️🤸🏼‍♂️🤸🏽‍♂️🤸🏾‍♂️🤸🏿‍♂️🤸‍♀️🤸🏻‍♀️🤸🏼‍♀️🤸🏽‍♀️🤸🏾‍♀️🤸🏿‍♀️🤼🤼‍♂️🤼‍♀️🤽🤽🏻🤽🏼🤽🏽🤽🏾🤽🏿🤽‍♂️🤽🏻‍♂️🤽🏼‍♂️🤽🏽‍♂️🤽🏾‍♂️🤽🏿‍♂️🤽‍♀️🤽🏻‍♀️🤽🏼‍♀️🤽🏽‍♀️🤽🏾‍♀️🤽🏿‍♀️🤾🤾🏻🤾🏼🤾🏽🤾🏾🤾🏿🤾‍♂️🤾🏻‍♂️🤾🏼‍♂️🤾🏽‍♂️🤾🏾‍♂️🤾🏿‍♂️🤾‍♀️🤾🏻‍♀️🤾🏼‍♀️🤾🏽‍♀️🤾🏾‍♀️🤾🏿‍♀️🤹🤹🏻🤹🏼🤹🏽🤹🏾🤹🏿🤹‍♂️🤹🏻‍♂️🤹🏼‍♂️🤹🏽‍♂️🤹🏾‍♂️🤹🏿‍♂️🤹‍♀️🤹🏻‍♀️🤹🏼‍♀️🤹🏽‍♀️🤹🏾‍♀️🤹🏿‍♀️👫👬👭💏👩‍❤️‍💋‍👨👨‍❤️‍💋‍👨👩‍❤️‍💋‍👩💑👩‍❤️‍👨👨‍❤️‍👨👩‍❤️‍👩👪👨‍👩‍👦👨‍👩‍👧👨‍👩‍👧‍👦👨‍👩‍👦‍👦👨‍👩‍👧‍👧👨‍👨‍👦👨‍👨‍👧👨‍👨‍👧‍👦👨‍👨‍👦‍👦👨‍👨‍👧‍👧👩‍👩‍👦👩‍👩‍👧👩‍👩‍👧‍👦👩‍👩‍👦‍👦👩‍👩‍👧‍👧👨‍👦👨‍👦‍👦👨‍👧👨‍👧‍👦👨‍👧‍👧👩‍👦👩‍👦‍👦👩‍👧👩‍👧‍👦👩‍👧‍👧🤳🤳🏻🤳🏼🤳🏽🤳🏾🤳🏿💪💪🏻💪🏼💪🏽💪🏾💪🏿👈👈🏻👈🏼👈🏽👈🏾👈🏿👉👉🏻👉🏼👉🏽👉🏾👉🏿☝☝🏻☝🏼☝🏽☝🏾☝🏿👆👆🏻👆🏼👆🏽👆🏾👆🏿🖕🖕🏻🖕🏼🖕🏽🖕🏾🖕🏿👇👇🏻👇🏼👇🏽👇🏾👇🏿✌✌🏻✌🏼✌🏽✌🏾✌🏿🤞🤞🏻🤞🏼🤞🏽🤞🏾🤞🏿🖖🖖🏻🖖🏼🖖🏽🖖🏾🖖🏿🤘🤘🏻🤘🏼🤘🏽🤘🏾🤘🏿🤙🤙🏻🤙🏼🤙🏽🤙🏾🤙🏿🖐🖐🏻🖐🏼🖐🏽🖐🏾🖐🏿✋✋🏻✋🏼✋🏽✋🏾✋🏿👌👌🏻👌🏼👌🏽👌🏾👌🏿👍👍🏻👍🏼👍🏽👍🏾👍🏿👎👎🏻👎🏼👎🏽👎🏾👎🏿✊✊🏻✊🏼✊🏽✊🏾✊🏿👊👊🏻👊🏼👊🏽👊🏾👊🏿🤛🤛🏻🤛🏼🤛🏽🤛🏾🤛🏿🤜🤜🏻🤜🏼🤜🏽🤜🏾🤜🏿🤚🤚🏻🤚🏼🤚🏽🤚🏾🤚🏿👋👋🏻👋🏼👋🏽👋🏾👋🏿🤟🤟🏻🤟🏼🤟🏽🤟🏾🤟🏿✍✍🏻✍🏼✍🏽✍🏾✍🏿👏👏🏻👏🏼👏🏽👏🏾👏🏿👐👐🏻👐🏼👐🏽👐🏾👐🏿🙌🙌🏻🙌🏼🙌🏽🙌🏾🙌🏿🤲🤲🏻🤲🏼🤲🏽🤲🏾🤲🏿🙏🙏🏻🙏🏼🙏🏽🙏🏾🙏🏿🤝💅💅🏻💅🏼💅🏽💅🏾💅🏿👂👂🏻👂🏼👂🏽👂🏾👂🏿👃👃🏻👃🏼👃🏽👃🏾👃🏿👣👀👁👁️‍🗨️🧠👅👄💋💘❤💓💔💕💖💗💙💚💛🧡💜🖤💝💞💟❣💌💤💢💣💥💦💨💫💬🗨🗯💭🕳👓🕶👔👕👖🧣🧤🧥🧦👗👘👙👚👛👜👝🛍🎒👞👟👠👡👢👑👒🎩🎓🧢⛑📿💄💍💎🐵🐒🦍🐶🐕🐩🐺🦊🐱🐈🦁🐯🐅🐆🐴🐎🦄🦓🦌🐮🐂🐃🐄🐷🐖🐗🐽🐏🐑🐐🐪🐫🦒🐘🦏🐭🐁🐀🐹🐰🐇🐿🦔🦇🐻🐨🐼🐾🦃🐔🐓🐣🐤🐥🐦🐧🕊🦅🦆🦉🐸🐊🐢🦎🐍🐲🐉🦕🦖🐳🐋🐬🐟🐠🐡🦈🐙🐚🦀🦐🦑🐌🦋🐛🐜🐝🐞🦗🕷🕸🦂💐🌸💮🏵🌹🥀🌺🌻🌼🌷🌱🌲🌳🌴🌵🌾🌿☘🍀🍁🍂🍃🍇🍈🍉🍊🍋🍌🍍🍎🍏🍐🍑🍒🍓🥝🍅🥥🥑🍆🥔🥕🌽🌶🥒🥦🍄🥜🌰🍞🥐🥖🥨🥞🧀🍖🍗🥩🥓🍔🍟🍕🌭🥪🌮🌯🥙🥚🍳🥘🍲🥣🥗🍿🥫🍱🍘🍙🍚🍛🍜🍝🍠🍢🍣🍤🍥🍡🥟🥠🥡🍦🍧🍨🍩🍪🎂🍰🥧🍫🍬🍭🍮🍯🍼🥛☕🍵🍶🍾🍷🍸🍹🍺🍻🥂🥃🥤🥢🍽🍴🥄🔪🏺🌍🌎🌏🌐🗺🗾🏔⛰🌋🗻🏕🏖🏜🏝🏞🏟🏛🏗🏘🏙🏚🏠🏡🏢🏣🏤🏥🏦🏨🏩🏪🏫🏬🏭🏯🏰💒🗼🗽⛪🕌🕍⛩🕋⛲⛺🌁🌃🌄🌅🌆🌇🌉♨🌌🎠🎡🎢💈🎪🎭🖼🎨🎰🚂🚃🚄🚅🚆🚇🚈🚉🚊🚝🚞🚋🚌🚍🚎🚐🚑🚒🚓🚔🚕🚖🚗🚘🚙🚚🚛🚜🚲🛴🛵🚏🛣🛤⛽🚨🚥🚦🚧🛑⚓⛵🛶🚤🛳⛴🛥🚢✈🛩🛫🛬💺🚁🚟🚠🚡🛰🚀🛸🛎🚪🛏🛋🚽🚿🛁⌛⏳⌚⏰⏱⏲🕰🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕡🕖🕢🕗🕣🕘🕤🕙🕥🕚🕦🌑🌒🌓🌔🌕🌖🌗🌘🌙🌚🌛🌜🌡☀🌝🌞⭐🌟🌠☁⛅⛈🌤🌥🌦🌧🌨🌩🌪🌫🌬🌀🌈🌂☂☔⛱⚡❄☃⛄☄🔥💧🌊🎃🎄🎆🎇✨🎈🎉🎊🎋🎍🎎🎏🎐🎑🎀🎁🎗🎟🎫🎖🏆🏅🥇🥈🥉⚽⚾🏀🏐🏈🏉🎾🎱🎳🏏🏑🏒🏓🏸🥊🥋🥅🎯⛳⛸🎣🎽🎿🛷🥌🎮🕹🎲♠♥♦♣🃏🀄🎴🔇🔈🔉🔊📢📣📯🔔🔕🎼🎵🎶🎙🎚🎛🎤🎧📻🎷🎸🎹🎺🎻🥁📱📲☎📞📟📠🔋🔌💻🖥🖨⌨🖱🖲💽💾💿📀🎥🎞📽🎬📺📷📸📹📼🔍🔎🔬🔭📡🕯💡🔦🏮📔📕📖📗📘📙📚📓📒📃📜📄📰🗞📑🔖🏷💰💴💵💶💷💸💳💹💱💲✉📧📨📩📤📥📦📫📪📬📭📮🗳✏✒🖋🖊🖌🖍📝💼📁📂🗂📅📆🗒🗓📇📈📉📊📋📌📍📎🖇📏📐✂🗃🗄🗑🔒🔓🔏🔐🔑🗝🔨⛏⚒🛠🗡⚔🔫🏹🛡🔧🔩⚙🗜⚗⚖🔗⛓💉💊🚬⚰⚱🗿🛢🔮🛒🏧🚮🚰♿🚹🚺🚻🚼🚾🛂🛃🛄🛅⚠🚸⛔🚫🚳🚭🚯🚱🚷📵🔞☢☣⬆↗➡↘⬇↙⬅↖↕↔↩↪⤴⤵🔃🔄🔙🔚🔛🔜🔝🛐⚛🕉✡☸☯✝☦☪☮🕎🔯♈♉♊♋♌♍♎♏♐♑♒♓⛎🔀🔁🔂▶⏩⏭⏯◀⏪⏮🔼⏫🔽⏬⏸⏹⏺⏏🎦🔅🔆📶📳📴♀♂⚕♻⚜🔱📛🔰⭕✅☑✔✖❌❎➕➖➗➰➿〽✳✴❇‼⁉❓❔❕❗〰©®™#️⃣*️⃣0️⃣1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣7️⃣8️⃣9️⃣🔟💯🔠🔡🔢🔣🔤🅰🆎🅱🆑🆒🆓ℹ🆔Ⓜ🆕🆖🅾🆗🅿🆘🆙🆚🈁🈂🈷🈶🈯🉐🈹🈚🈲🉑🈸🈴🈳㊗㊙🈺🈵▪▫◻◼◽◾⬛⬜🔶🔷🔸🔹🔺🔻💠🔘🔲🔳⚪⚫🔴🔵🏁🚩🎌🏴🏳🏳️‍🌈🇦🇨🇦🇩🇦🇪🇦🇫🇦🇬🇦🇮🇦🇱🇦🇲🇦🇴🇦🇶🇦🇷🇦🇸🇦🇹🇦🇺🇦🇼🇦🇽🇦🇿🇧🇦🇧🇧🇧🇩🇧🇪🇧🇫🇧🇬🇧🇭🇧🇮🇧🇯🇧🇱🇧🇲🇧🇳🇧🇴🇧🇶🇧🇷🇧🇸🇧🇹🇧🇻🇧🇼🇧🇾🇧🇿🇨🇦🇨🇨🇨🇩🇨🇫🇨🇬🇨🇭🇨🇮🇨🇰🇨🇱🇨🇲🇨🇳🇨🇴🇨🇵🇨🇷🇨🇺🇨🇻🇨🇼🇨🇽🇨🇾🇨🇿🇩🇪🇩🇬🇩🇯🇩🇰🇩🇲🇩🇴🇩🇿🇪🇦🇪🇨🇪🇪🇪🇬🇪🇭🇪🇷🇪🇸🇪🇹🇪🇺🇫🇮🇫🇯🇫🇰🇫🇲🇫🇴🇫🇷🇬🇦🇬🇧🇬🇩🇬🇪🇬🇫🇬🇬🇬🇭🇬🇮🇬🇱🇬🇲🇬🇳🇬🇵🇬🇶🇬🇷🇬🇸🇬🇹🇬🇺🇬🇼🇬🇾🇭🇰🇭🇲🇭🇳🇭🇷🇭🇹🇭🇺🇮🇨🇮🇩🇮🇪🇮🇱🇮🇲🇮🇳🇮🇴🇮🇶🇮🇷🇮🇸🇮🇹🇯🇪🇯🇲🇯🇴🇯🇵🇰🇪🇰🇬🇰🇭🇰🇮🇰🇲🇰🇳🇰🇵🇰🇷🇰🇼🇰🇾🇰🇿🇱🇦🇱🇧🇱🇨🇱🇮🇱🇰🇱🇷🇱🇸🇱🇹🇱🇺🇱🇻🇱🇾🇲🇦🇲🇨🇲🇩🇲🇪🇲🇫🇲🇬🇲🇭🇲🇰🇲🇱🇲🇲🇲🇳🇲🇴🇲🇵🇲🇶🇲🇷🇲🇸🇲🇹🇲🇺🇲🇻🇲🇼🇲🇽🇲🇾🇲🇿🇳🇦🇳🇨🇳🇪🇳🇫🇳🇬🇳🇮🇳🇱🇳🇴🇳🇵🇳🇷🇳🇺🇳🇿🇴🇲🇵🇦🇵🇪🇵🇫🇵🇬🇵🇭🇵🇰🇵🇱🇵🇲🇵🇳🇵🇷🇵🇸🇵🇹🇵🇼🇵🇾🇶🇦🇷🇪🇷🇴🇷🇸🇷🇺🇷🇼🇸🇦🇸🇧🇸🇨🇸🇩🇸🇪🇸🇬🇸🇭🇸🇮🇸🇯🇸🇰🇸🇱🇸🇲🇸🇳🇸🇴🇸🇷🇸🇸🇸🇹🇸🇻🇸🇽🇸🇾🇸🇿🇹🇦🇹🇨🇹🇩🇹🇫🇹🇬🇹🇭🇹🇯🇹🇰🇹🇱🇹🇲🇹🇳🇹🇴🇹🇷🇹🇹🇹🇻🇹🇼🇹🇿🇺🇦🇺🇬🇺🇲🇺🇳🇺🇸🇺🇾🇺🇿🇻🇦🇻🇨🇻🇪🇻🇬🇻🇮🇻🇳🇻🇺🇼🇫🇼🇸🇽🇰🇾🇪🇾🇹🇿🇦🇿🇲🇿🇼🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿"
    
    func testWhenStringNotEmoji_ContainsEmojiIsFalse() {
        XCTAssertFalse(nonEmojiNumbersString.containsEmoji)
        XCTAssertFalse(nonEmojiAlphaString.containsEmoji)
        XCTAssertFalse(nonEmojistringSpecialCharacters.containsEmoji)
    }
    
    func testWhenStringEmoji_ContainsEmojiIsTrue() {
        XCTAssertTrue(emojiString.containsEmoji)
    }
    
    func testWhenStringNotEmoji_IsEmojiIsFalse() {
        for character in nonEmojiNumbersString {
            XCTAssertFalse(String(character).isEmoji, "\(character) is not an emoji!")
        }
        for character in nonEmojiAlphaString {
            XCTAssertFalse(String(character).isEmoji, "\(character) is not an emoji!")
        }
        for character in nonEmojistringSpecialCharacters {
            XCTAssertFalse(String(character).isEmoji, "\(character) is not an emoji!")
        }
    }
    
    func testWhenCharacterNotEmojiSpecialChars_isEmojiIsFalse() {
        for character in nonEmojiNumbersString {
            XCTAssertFalse(character.isEmoji, "\(character) is not an emoji!")
        }
        for character in nonEmojiAlphaString {
            XCTAssertFalse(character.isEmoji, "\(character) is not an emoji!")
        }
        for character in nonEmojistringSpecialCharacters {
            XCTAssertFalse(character.isEmoji, "\(character) is not an emoji!")
        }
    }
    
    func testWhenCharacterIsEmoji_isEmojiIsTrue() {
        for character in emojiString {
            XCTAssertTrue(character.isEmoji, "\(character) is an emoji!")
        }
    }
    
    func testWhenStringSingleCharacterIsEmoji_isEmojiIsTrue() {
        for character in emojiString {
            XCTAssertTrue(String(character).isEmoji, "\(character) is an emoji!")
        }
    }
    
    func testWhenStringMultipleCharacterIsEmoji_IsEmojiIsFalse() {
        XCTAssertFalse(emojiString.isEmoji, "emojiString is not a single emoji")
    }
    
    func testNiceUnicodeNameDoesntContainNotNiceCharacters() {
        for character in emojiString {
            let niceUnicodeNameString = String(character).niceUnicodeName
            XCTAssertFalse(niceUnicodeNameString.contains("\\N{"), "\(character)'s niceUnicodeName: \(niceUnicodeNameString) contains not nice character")
            XCTAssertFalse(niceUnicodeNameString.contains("}"), "\(character)'s niceUnicodeName: \(niceUnicodeNameString) contains not nice character")
        }
    }
}
