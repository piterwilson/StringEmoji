# StringEmoji
A swift 4.0 String extension class to handle Emoji related tasks.

## CocoaPods installation

```
pod 'StringEmojiExtension', :git => 'https://github.com/piterwilson/String-Emoji.git'
```

## Usage

```
import StringEmoji
```

## Documentation

### static var emojis: [String : String] { get }

A Dictionary containing known emojis. Keys are single emoji characters and the value is the name of the corresponding emoji.

```
print(String.emojis["😁"] as Any) // Optional("beaming face with smiling eyes")
```

### var isEmoji: Bool { get }

Whether or not the `String` instance represents a known single Emoji character

```
print("".isEmoji) // false
print("😁".isEmoji) // true
```

### var emojiName: String? { get }

If the `String` represents a single Emoji character, the name of that Emoji, nil otherwise.

```
print("😜".emojiName as Any) // Optional("winking face with tongue")
```
