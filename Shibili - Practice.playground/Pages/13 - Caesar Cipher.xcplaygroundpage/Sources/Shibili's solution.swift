
public class CaesarCipher {
    private let alphabetsArray: [Character] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    public init() { }
    
    public func encrypt(_ plainText: String) -> String {

        var encripted = ""
        for char in plainText {
            if let index = alphabetsArray.firstIndex(of: char) {
                let alphabetsCount = alphabetsArray.count
                let shiftedIndex = index - 3
                
                let alphabetIndex = shiftedIndex >= 0 ? shiftedIndex : (alphabetsCount + shiftedIndex)
                
                encripted += String(alphabetsArray[alphabetIndex])
            } else {
                encripted += String(char)
            }
        }
        
        return encripted
    }
    
    public func decrypt(_ cypherText: String) -> String {
        
        var decrypted = ""
        for char in cypherText {
            if let index = alphabetsArray.firstIndex(of: char) {
                let shiftedIndex = (index + 3) % alphabetsArray.count
                decrypted += String(alphabetsArray[shiftedIndex])
            } else {
                decrypted += String(char)
            }
        }
        
        return decrypted
    }
}
