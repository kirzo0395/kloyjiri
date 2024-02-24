
var websites = ["Amazon.com", "Walmart.com", "Target.com", "Bestbuy.com", "Etsy.com"]
websites += ["Apple.com", "Google.com", "Facebook.com", "Microsoft.com", "Netflix.com"]


let sortedWebsitesAZ = websites.sorted { $0 < $1 }
print("Отсортированный с начала:")
print(sortedWebsitesAZ)


let sortedWebsitesZA = websites.sorted { $0 > $1 }
print("Отсортированный с конца:")
print(sortedWebsitesZA)


func sortFriendsByNameLength(_ names: inout [String]) {
    names.sort { $0.count < $1.count }
}


var friends = ["Артем", "Кирилл", "Даша", "Данил", "Яша"]
sortFriendsByNameLength(&friends)


var friendsDictionary = [Int: String]()
for friend in friends {
    friendsDictionary[friend.count] = friend
}


func printKeyAndValue(key: Int, value: String) {
    print("Ключ: \(key), Значение: \(value)")
}


for (key, value) in friendsDictionary {
    printKeyAndValue(key: key, value: value)
}

func checkAndAddValues(stringArray: inout [String], intArray: inout [Int]) {
    if stringArray.isEmpty {
        print("Массив пуфтой...щас добавлю")
        stringArray.append("ТЫГЫДЫК")
    }
    if intArray.isEmpty {
        print("Массив пуффтой...опять добавлять")
        intArray.append(0)
    }
    print("String Array:", stringArray)
    print("Int Array:", intArray)
}

var emptyStringArray = [String]()
var emptyIntArray = [Int]()
checkAndAddValues(stringArray: &emptyStringArray, intArray: &emptyIntArray)
