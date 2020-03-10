import Foundation

var str = "Hello, playground"

//取得随机数
let random1 = Int(arc4random() % 100) + 1
let random2 = Int(arc4random_uniform(100)) + 1

//区间
var words: String = "Webbleen.com"

let interval = "a"..."z"
for c in words {
    if !interval.contains(String(c)) {
        print("\(c)不是小写字母")
    }
}


//运算符重载
struct CenterPointer {
    var x = 0, y = 0
}

func + (left: CenterPointer, right: CenterPointer) -> CenterPointer {
    return CenterPointer(x: left.x + right.x, y: left.y + right.y)
}

let pointer1 = CenterPointer(x: 2, y: 3)
let pointer2 = CenterPointer(x: 5, y: 5)
let pointer3 = pointer1 + pointer2


//数组-Array
var types = ["none", "verbose", "debug", "info", "warning", "error", "severe"]
var members = [String]()

members.append("six")
members += ["seven"]
members.insert("one", at:0)

members[0] = "message"
members[0...2] = ["message", "webbleen", "com"]

members.count
members.isEmpty

//交换元素位置
members.swapAt(1, 2)

members.remove(at: 2)
members.removeLast()
members.removeAll()

let addStringArr = types + members

for value in types {
    print("\(value)")
}

//通过enumerated函数同时遍历数组的所有索引和数据
for (index, value) in types.enumerated() {
    print("索引:\(index) 数据:\(value)")
}

print(types)
//过滤数组元素
let newTypes = types.filter { $0.count < 6 }
print(newTypes)

//创建包含100个元素的数组
let items = Array(0..<100).map { "番号\($0)" }


//字典-Dictionary
//基本用法
var empty = [String : Int]()

var myDic = ["name":"webbleen", "url":"webbleen.com"]
myDic["address"] = "China"
myDic.removeValue(forKey: "name")
myDic["name"] = nil
print(myDic.keys)
print(myDic.values)

for (key, value) in myDic {
    print("\(key):\(value)")
}
for key in myDic.keys {
    print("key:\(key)")
}
for value in myDic.values {
    print("value:\(value)")
}

let myDic2 = myDic.filter { $0.key == "url" }
print(myDic2)


//通过元组创建
let tupleArray = [("Monday", 30), ("Tuesday", 25), ("Wednesday", 27)]
let dict1 = Dictionary(uniqueKeysWithValues: tupleArray)
print(dict1)

//通过键值序列创建
let names = ["Apple", "Pear"]
let prices = [7, 6]
let dict2 = Dictionary(uniqueKeysWithValues: zip(names, prices))
print(dict2)

//只有键或者值序列创建
let array = ["Monday", "Tuesday", "Wednesday"]
let dict3 = Dictionary(uniqueKeysWithValues: zip(1..., array))
let dict4 = Dictionary(uniqueKeysWithValues: zip(array, 1...))
print(dict3)
print(dict4)

//字典分组创建
let names2 = ["Apple", "Pear", "Grape", "Peach"]
let dict5 = Dictionary(grouping: names2) { $0.first! }
print(dict5)

//重复键值的处理
let array3 = ["Apple", "Pear", "Pear", "Orange"]
let dict6 = Dictionary(zip(array3, repeatElement(1, count: array3.count)), uniquingKeysWith: +)
print(dict6)

let tupleArray7 = [("Monday", 30), ("Tuesday", 25), ("Wednesday", 27), ("Monday", 28)]
let dict7 = Dictionary(tupleArray7, uniquingKeysWith: min)
print(dict7)


//字典合并
var dict8 = ["one": 10, "two":20]
let tuples = [("one", 5), ("three", 30)]
dict8.merge(tuples, uniquingKeysWith: min)
print(dict8)

let dict9 = ["one": 0, "four":40]
let dict10 = dict8.merging(dict9, uniquingKeysWith: min)
print(dict10)

//默认值
let strFriut = "apple banana orange apple banana"
var wordsCount: [String : Int] = [:]
for word in strFriut.split(separator: " ") {
    wordsCount["\(word)", default: 0] += 1
}
print(wordsCount)
