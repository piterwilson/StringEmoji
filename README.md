# StringEmoji
A swift 5.0 String extension class to handle Emoji related tasks.

## CocoaPods installation

```
pod 'StringEmoji', :git => 'https://github.com/piterwilson/StringEmoji.git'
```

## Usage

```
import StringEmoji
```

## Documentation

### Emoji

A Class that contains properties that list emoji characters.

#### static let characterSet: CharacterSet

Character set containing all known emoji (as described in official Unicode List 5.0 http://unicode.org/emoji/charts-5.0/emoji-list.html)

#### static let all: [String]

Array containing all known emoji (as described in official Unicode List 5.0 http://unicode.org/emoji/charts-5.0/emoji-list.html)

### String

#### var isEmoji: Bool { get }

Whether or not the `String` instance represents a known single Emoji character

```
print("".isEmoji) // false
print("😁".isEmoji) // true
print("😁😜".isEmoji) // false (String is not a single Emoji)
```

#### var containsEmoji: Bool { get }

Whether or not the `String` instance contains a known Emoji character

```
print("".containsEmoji) // false
print("😁".containsEmoji) // true
print("😁😜".containsEmoji) // true
```

#### var unicodeName: String { get }

Applies a `kCFStringTransformToUnicodeName` - `CFStringTransform` on a copy of the String

```
print("á".unicodeName) // \N{LATIN SMALL LETTER A WITH ACUTE}
print("😜".unicodeName) // \N{FACE WITH STUCK-OUT TONGUE AND WINKING EYE}
```

#### var niceUnicodeName: String { get }

Returns the result of a `kCFStringTransformToUnicodeName` - `CFStringTransform` with `\N{` prefixes and `}` suffixes removed

```
print("á".unicodeName) // LATIN SMALL LETTER A WITH ACUTE}
print("😜".unicodeName) // FACE WITH STUCK-OUT TONGUE AND WINKING EYE
```

### Character

#### var isEmoji: Bool { get }

Whether or not the `Character` instance represents a known Emoji character

```
print("".isEmoji) // false
print("😁".isEmoji) // true
```
