
public class HashTable {
    private static let INITIAL_SIZE = 256
    private var entries = Array<HashEntry?>(repeating: nil, count: INITIAL_SIZE)
    
    public init() { }
    
    public subscript(key: String) -> String? {
        get {
            get(key)
        }
        set(newValue) {
            guard let value = newValue else { return }
            put(key, value)
        }
    }
    
    public func put(_ key: String, _ value: String) {
        let index = getIndex(key)
        let entry = HashEntry(key, value)
        
        var collisions = entries[index]
        guard collisions != nil else {
            entries[index] = entry
            return
        }
        
        while collisions?.next != nil {
            collisions = collisions?.next
        }
        
        collisions?.next = entry
    }
    
    public func get(_ key: String) -> String? {
        let index = getIndex(key)
        
        let possibleCollisions = entries[index]
        
        var currentEntry = possibleCollisions
        while currentEntry != nil {
            if currentEntry?.key == key {
                return currentEntry?.value
            }
            currentEntry = currentEntry?.next
        }
        
        return nil
    }
    
    private func getIndex(_ key: String) -> Int {
        let hashCode = abs(key.hashValue)
        
        //for test purpose to demo collision
        if key == "Cristiano ronaldo" || key == "cr7" || key == "cristiano" {
            return 7
        }
        
        return hashCode % HashTable.INITIAL_SIZE
    }
    
    public func prettyPrint() {
        
        for item in entries {
            if let item = item {
                var text = ""
                var entry: HashEntry? = item
                while entry != nil {
                    text += "\(entry!.key): \(entry!.value), "
                    entry = entry?.next
                }
                text.removeLast()
                text.removeLast()
                
                print(text)
            }
        }
        
    }
    
}
