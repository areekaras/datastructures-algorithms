
public class CaesarCipherSimple {
    public  init() { }
    private lazy var encryptMap: [Character: String] = {
        var map = [Character: String]()
        map["A"] = "X"
        map["B"] = "Y"
        map["C"] = "Z"
        map["D"] = "A"
        map["E"] = "B"
        map["F"] = "C"
        map["G"] = "D"
        map["H"] = "E"
        map["I"] = "F"
        map["J"] = "G"
        map["K"] = "H"
        map["L"] = "I"
        map["M"] = "J"
        map["N"] = "K"
        map["O"] = "L"
        map["P"] = "M"
        map["Q"] = "N"
        map["R"] = "O"
        map["S"] = "P"
        map["T"] = "Q"
        map["U"] = "R"
        map["V"] = "S"
        map["W"] = "T"
        map["X"] = "U"
        map["Y"] = "V"
        map["Z"] = "W"
        return map
    }()

    private lazy var decryptMap: [Character: String] = {
        var map = [Character: String]()
        map["X"] = "A"
        map["Y"] = "B"
        map["Z"] = "C"
        map["A"] = "D"
        map["B"] = "E"
        map["C"] = "F"
        map["D"] = "G"
        map["E"] = "H"
        map["F"] = "I"
        map["G"] = "J"
        map["H"] = "K"
        map["I"] = "L"
        map["J"] = "M"
        map["K"] = "N"
        map["L"] = "O"
        map["M"] = "P"
        map["N"] = "Q"
        map["O"] = "R"
        map["P"] = "S"
        map["Q"] = "T"
        map["R"] = "U"
        map["S"] = "V"
        map["T"] = "W"
        map["U"] = "X"
        map["V"] = "Y"
        map["W"] = "Z"
        return map
    }()
    
    public func encrypt(_ plainText: String) -> String {
        var encrypted = ""
        for char in plainText {
            encrypted += encryptMap[char] ?? String(char)
        }
        return encrypted
    }
    
    public func decrypt(_ cipherText: String) -> String {
        var decrypted = ""
        for char in cipherText {
            decrypted += decryptMap[char] ?? String(char)
        }
        return decrypted
    }
}
