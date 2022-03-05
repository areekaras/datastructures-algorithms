
let hashTable = HashTable()

hashTable.put("Cristiano ronaldo", "7")
hashTable.put("Lional messi", "10")
//hashTable.prettyPrint()

hashTable.get("Lional messi")
hashTable.get("Cristiano ronaldo")
hashTable.get("cristiano")
hashTable.get("cr7")

hashTable.put("cristiano", "77")
hashTable.put("cr7", "777")


hashTable.get("cristiano")
hashTable.get("cr7")
hashTable.get("noValue")

hashTable.put("cristiano", "007")
hashTable.get("cristiano")

hashTable["NJR"] = "11"
hashTable["NJR"]

hashTable.prettyPrint()
