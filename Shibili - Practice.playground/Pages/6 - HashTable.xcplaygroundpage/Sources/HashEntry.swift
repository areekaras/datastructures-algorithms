public class HashEntry {
    public let key: String
    public var value: String
    public var next: HashEntry?
    
    public init(_ key: String, _ value: String) {
        self.key = key
        self.value = value
    }
}
