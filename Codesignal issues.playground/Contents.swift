import UIKit
import Foundation



//centuryFromYear
//func solution(year: Int) -> Int {
//   return (year + 99) / 100
//}





//checkPalindrome
//func solution(inputString: String) -> Bool{
//    var res = false
//    var str = inputString
//    var leftyarimi = " "
//    var rightyarimi = " "
//     if str.count == 1 {
//      res = true
//     } else {
//         if str.count % 2 == 0  { //jooj
//            var len = str.index(str.startIndex, offsetBy: str.count / 2)
//            str.insert("&", at: len)
//            for (index,value) in str.enumerated(){
//                 if value == "&" {
//                     var ampersandindex = index
//                     var leftyarimi = str.prefix(ampersandindex)
//                     var rightyarimi = str.suffix(ampersandindex)
//                     res = leftyarimi.elementsEqual(String(rightyarimi.reversed()))
//                 }
//
//             }
//        }else {
//            var ampersandindex = str.count
//            var leftyarimi = str.prefix(ampersandindex)
//            var rightyarimi = str.suffix(ampersandindex)
//            res = leftyarimi.elementsEqual(String(rightyarimi.reversed()))
//        }
//
//     }
//
//    return res
//}
//






//adjacentElementsProduct

//func solution(inputArray: [Int]) -> Int {
//   var newarr = inputArray
//   var kopaytmalararrayi = [Int]()
//   for i in 0 ..< newarr.count-1 {
//       var kopaytma = newarr[i] * newarr[i+1]
//       kopaytmalararrayi.append(kopaytma)
//   }
//   // [18,-12,10,-35,21]
//   kopaytmalararrayi.sort()
//
//    return kopaytmalararrayi[newarr.count-2]
//}











//shapeArea
//func solution(n: Int) -> Int {
//    var a = [Int]()
//    var res = [Int]()
//    a.append(0)
//    a.append(1)
//    let d = 2
//    var k = 0
//    res.append(0)
//    res.append(1)
//if n == 1 {
//    return 1
//} else {
//      for i in 2 ... n{
//        a.append(a[1] + (i-1)*d)
//    }
//    for j in 2 ... n{
//        res.append((2 + (a[j]-2)*2) + res[j-1])
//        k=res[j]
//    }
//}
//
//    return k
//}








//All Longest Strings
//func solution(inputArray: [String]) -> [String] {
//    var arr = inputArray
//    var itemarr = [Int]()
//    var resarr = [String]()
//    for item in arr{
//        itemarr.append(item.count)
//    }
//    // [4,5,4,3,3,2]
//    for i in 0 ..< itemarr.count{
//        for j in 0 ... itemarr.count - 1{
//            if itemarr[i]>itemarr[j]{
//                var temp = itemarr[i]
//                itemarr[i] = itemarr[j]
//                itemarr[j] = temp
//            }
//        }
//    }
//    for arritem in arr{
//        if arritem.count == itemarr[0] {
//            resarr.append(arritem)
//        }
//    }
//    return resarr
//
//}















//isLucky
//func solution(n: Int) -> Bool {
//    // n = 123456
//        var str = String(n)
//    var s = 0
//    var s2 = 0
//    for (index,value) in str.enumerated() {
//        if index >= str.count/2{
//            if let num = Int(String(value)){
//                s2 += num
//            }
//
//        } else {
//            if let num = Int(String(value)){
//                s += num
//            }
//        }
//    }
//
//    return s2 == s
//
//
//}













//Sort by Height
//func solution(a: [Int]) -> [Int] {
//    var arr = a
//    var newarr = [Int]()
//    var heigharr = [Int]()
//    var indexarr = [Int]()
//    if arr.contains(-1){
//        for (index,value) in arr.enumerated() {
//        if value == -1 {
//            indexarr.append(index)
//        }else{
//            heigharr.append(value)
//        }
//
//    }
//
//    heigharr.sort()
//    for i in 0 ... indexarr.count - 1 {
//            heigharr.insert(-1, at: indexarr[i])
//    }
//    } else {
//        heigharr = arr.sorted()
//    }
//
//   return heigharr
//}




















//alternatingSums
//func solution(a: [Int]) -> [Int] {
//    var arr = a
//    var newarr = [Int]()
//    var sum1 = 0
//    var sum2 = 0
//    for i in 0 ..< arr.count{
//        if i % 2 == 0 {
//            sum1 += arr[i]
//        } else{sum2 += arr[i]}
//    }
//    newarr.append(sum1)
//    newarr.append(sum2)
//    return newarr
//}










//Add Border
func solution(picture: [String]) -> [String] {
    // ["abc","ded"]
    // ["*****", "*abc*", "*ded*", "*****"]
    var arr = picture
    var s = ""
    var yulduzcha = "*"
    var newarr = [String]()
    var len = arr[0].count
    for i in 1 ... len+2 {
        s += yulduzcha
    }
   
    for i in 1 ... arr.count + 2 {
        if i == 1 || i == arr.count + 2{
            newarr.append(s)
        } else{
            newarr.append(yulduzcha + arr[i-2] + yulduzcha)
        }
        
        
    }
    return newarr
}















//arrayChange
//func solution(inputArray: [Int]) -> Int {
//   var count = 0
//    var arr = inputArray
//
//    for i in 0 ..< inputArray.count - 1 {
//        if arr[i] >= arr[i+1] {
//            arr[i+1] = arr[i] + 1
//            count += arr[i+1] - inputArray[i+1]
//        }
//    }
//
//    return count
//}











//palindromeRearranging
func solution(inputString: String) -> Bool {
 var a = Array(inputString.utf8).sorted(), i = 0, c = [Int]()
    
    while i < a.count {
        var x = 1
        while i < a.count - 1 && a[i] == a[i+1] {
            x += 1
            i += 1
            
        }
        c += [x]
        i += 1
        
    }
    
  
    var nOdds = 0
    for i in 0..<c.count {
        nOdds += c[i] % 2
    }
    return nOdds <= 1
}














//areEquallyStrong
//func solution(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
//    return max(yourLeft, yourRight) == max(friendsLeft, friendsRight)  && min(yourLeft,                 yourRight) == min(friendsLeft, friendsRight)
//
//}










//arrayMaximalAdjacentDifference
//func solution(inputArray: [Int]) -> Int {
//    var arr = inputArray
//    var newarr = [Int]()
//    for i in 0 ..< arr.count-1{
//        newarr.append(abs(arr[i] - arr[i+1]))
//    }
//    newarr.sort()
//    return newarr[newarr.count - 1]
//}













//Array Replace
//func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//    var arr = inputArray
//    for i in 0 ..< arr.count{
//        if arr[i] == elemToReplace{
//            arr[i] = substitutionElem
//        }
//    }
//    return arr
//}












//evenDigitsOnly
//func solution(n: Int) -> Bool {
//      var a = n
//    var res = true
//    var str = String(a)
//
//    for item in str{
//        var num:Character = item
//        if let myint = Int(String(num)) {
//            if myint % 2 != 0{
//                res = false && res
//            }
//        }
//    }
//    return res
//}









//alphabeticShift
//func solution(inputString: String) -> String {
//   let str = inputString
//   var newstr = ""
//
//    for item in str.lowercased().utf8{
//        if item != 122{
//            let u = UnicodeScalar(item+1)
//    // Convert UnicodeScalar to a Character.
//            let char = Character(u )
//            newstr.append(char)
//        }else{
//           guard let u = UnicodeScalar(97) else { return "0" }
//// Convert UnicodeScalar to a Character.
//            let char = Character(u  )
//                newstr.append(char)
//
//        }
//    }
//
//   return newstr
//
//
//}













//chessBoardCellColor
//func solution(cell1: String, cell2: String) -> Bool {
//
//    var row = ["A","B","C","D","E","F","G","H"]
//    var column = ["1","2","3","4","5","6","7","8"]
//    var chessmatrix = [[String]]()
//    chessmatrix = [["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"],
//                   ["0","0","0","0","0","0","0","0"]
//                  ]
//    var rangi = true
//
//    for i in 1 ... 8 {
//        var i = 0
//        for item1 in column {
//            var k = 0
//            if k == 0{
//                rangi = !rangi
//            }
//                for item2 in row {
//                    rangi = !rangi
//                    chessmatrix[i][k] = String(item2+item1) + "\(rangi ? "qora" : "oq")"
//                    k = k + 1
//
//
//                }
//                 i = i + 1
//        }
//    }
//
//    var res = false
//    var bir = ""
//    var ikki = ""
//    for i in 0 ..< column.count {
//        for j in 0 ..<  row.count{
//            if chessmatrix[i][j].prefix(2) == cell1{
//                bir = String(String(chessmatrix[i][j]).suffix(chessmatrix[i][j].count-2))
//            }
//            if chessmatrix[i][j].prefix(2) == cell2{
//                ikki = String(String(chessmatrix[i][j]).suffix(chessmatrix[i][j].count-2))
//            }
//
//        }
//
//
//    }
//    if bir == ikki{
//        res = true
//    } else{
//        res = false
//    }
//
//
//    return res
//
//}











//Circle of Numbers

//func solution(n: Int, firstNumber: Int) -> Int {
//    var bolish = n / 2
//    var res = 0
//    if firstNumber + bolish >= n {
//        res = firstNumber + bolish - n
//    }else{
//        res =  bolish + firstNumber
//    }
//    return res
//}
//
//
















//depositProfit
//func solution(deposit: Int, rate: Int, threshold: Int) -> Int {
//    var year = 0
//    var summa:Double = Double(deposit)
//    var penya:Double = Double(Double(rate)/100) + Double(1)
//    while summa < Double(threshold) {
//        summa = summa * penya
//        year = year + 1
//    }
//    return year
//}










//stringsRearrangement
//function solution(inputArray) {
//
//    function isNext(string1,string2){
//    var diff=0;
//    for(var i=0;i<string1.length;i++){
//        if(string1[i]!=string2[i])
//            diff++;
//    }
//    if (diff!=1)
//        return false;
//    else
//        return true;
//}
//
//function arranged(array){
//    var chars=true;
//    for(var i=0;i+1<array.length&&chars;i++){
//        if(!isNext(array[i],array[i+1]))
//            chars=false;
//    }
//    return chars;
//}
//
//function findNext(string,array){
//    var index=-1;
//    for(var i=0;i<array.length&&index==-1;i++){
//        if(isNext(string,array[i]))
//            index=i;
//    }
//    return index;
//}
//  var next=0;
//    inputArray.sort();
//    for(var i=0;i<inputArray.length&&next>=0&&!arranged(inputArray);i++){
//        next=findNext(inputArray[i],inputArray);
//        if(next>=0&&(next>i+1||next<i-1)){
//            inputArray.splice(i+1,0,inputArray[next])
//            if(next<i+1)
//                inputArray.splice(next,1);
//            else
//                inputArray.splice(next+1,1);
//        }
//    }
//
//
//
//    return arranged(inputArray);
//}
//












//extractEachKth
//func solution(inputArray: [Int], k: Int) -> [Int] {
//    var arr = inputArray
//    var narr = [Int]()
//    for (index,value) in arr.enumerated(){
//        if (index+1) % k != 0{
//            narr.append(value)
//        }
//    }
//    return narr
//
//}









//firstDigit
//func solution(inputString: String) -> Character {
//    var res:Character = "0"
//    for item in inputString{
//        if let isNum = Int(String(item)){
//            if type(of: 0) == type(of: isNum){
//                res = Character(String(isNum))
//                break
//            }
//        }
//    }
//    return res
//    
//}









//differentSymbolsNaive
//func solution(s: String) -> Int {
//    var str = s
//    var newstr = ""
//    var count = 0
//    for item in str {
//        if str.contains(item) {
//            if !newstr.contains(item){
//                newstr.append(item)
//                count = count + 1
//            }
//        }
//    }
//    return count
//}
//
//


















// arrayMaxConsecutiveSum
//func solution(inputArray: [Int], k: Int) -> Int {
//    var arr = inputArray
//    var newarr = [Int]()
//    var s = 0
//    var j = 0
//    // for i in 0 ..< arr.count-1{
//        while j <= arr.count-k{ // 0<3  1<3
//            s = 0
//            var n = j
//            for i in j ..< n+k{ // 0 ... 2
//                s = s + arr[i]
//            }
//            newarr.append(s)
//            j = j + 1
//
//        }
//
//    // }
//    newarr.sort()
//    return newarr[newarr.count-1]
//}









//growingPlant
//func solution(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
//    var day = 1
//    var buyi = upSpeed
//    while buyi < desiredHeight{
//        buyi = buyi + (upSpeed - downSpeed)
//        day = day + 1
//    }
//    return day
//}













//digitDegree
//func solution(n: Int) -> Int {
//    var num = n
//    var count = 0
//    if n < 10 {
//        return 0
//    }else{
//        while num >= 10{
//             num = digitsum(n:num)
//            count = count + 1
//        }
//
//    }
//
//
//    func digitsum(n : Int) -> Int{
//        var number = n
//        var summa = 0
//        var birlar = 0
//        while number > 0 {
//            birlar = number % 10
//            number = number / 10
//            summa = summa + birlar
//        }
//        return summa
//    }
//    return count
//
//}
















//Bishop and Pawn
//func solution(bishop: String, pawn: String) -> Bool {
//    var bish = 0
//    var paw = 0
//    var fil = ""
//    var olja = ""
//
//    if bishop.first == "a"{
//        bish = 1
//    }else if bishop.first == "b"{
//        bish = 2
//    }else if bishop.first == "c"{
//        bish = 3
//    }else if bishop.first == "d"{
//        bish = 4
//    }else if bishop.first == "e"{
//        bish = 5
//    }else if bishop.first == "f"{
//        bish = 6
//    }else if bishop.first == "g"{
//        bish = 7
//    }else if bishop.first == "h"{
//        bish = 8
//    }
//
//
//
//    if pawn.first == "a"{
//        paw = 1
//    }else if pawn.first == "b"{
//        paw = 2
//    }else if pawn.first == "c"{
//        paw = 3
//    }else if pawn.first == "d"{
//        paw = 4
//    }else if pawn.first == "e"{
//        paw = 5
//    }else if pawn.first == "f"{
//        paw = 6
//    }else if pawn.first == "g"{
//        paw = 7
//    }else if pawn.first == "h"{
//        paw = 8
//    }
//
//    if let bisho = bishop.last{
//       fil = "\(bish)\(bisho)"
//    }
//    if let pawo = pawn.last{
//       olja = "\(paw)\(pawo)"
//    }
//    var birinchi = 0
//    var ikkinchi = 0
//    if let x = Int(fil){
//        birinchi = x
//    }
//    if let y = Int(olja){
//        ikkinchi = y
//    }
//    var res = false
//    if abs(((birinchi) / 10) - ((ikkinchi) / 10)) == abs(((birinchi) % 10) - ((ikkinchi) % 10)){
//        res = true
//    }else{
//        res = false
//    }
//   return res
//
//}






// imageHidden
//func solution(image: [[Int]]){
//    var imagearr = image
//    var row = imagearr.count //3
//    var column = imagearr[0].count// 4
//    var sum = 0
//    var arr = [Int]()
//    var k = 0
////    [[36,0,18,9],
////     [27,54,9,0],
////     [81,63,72,45]]
//    if row == column{
//        for c in 0 ..< column{//4 = 3
//            for r in 0 ..< row{//3 = 2
//                if k<=9
//                    && c<column-2//2
//                    && r<row-2//1
//                {
//                    for i in c ... c+2{
//                        for j in r ... r+2{
//                                sum = sum + imagearr[i][j]
//                                k = k + 1
//                                print(sum)
//                            }
//                        }
//                            arr.append(sum/9)
//                            sum = 0
//                            k = 0
//                }
//            }
//        }
//
//    }
//     else{
//        for c in 0 ..< column{//4 = 3
//            for r in 0 ..< row{//3 = 2
//                if k<=9
//                    && c<column-3//2
//                    && r<=row-2//1
//                {
//                    for i in c ... c+2{
//                        for j in r ... r+2{
//                                sum = sum + imagearr[i][j]
//                                k = k + 1
////                                print(sum)
//                            }
//                        }
//                            arr.append(sum/9)
//                            sum = 0
//                            k = 0
//                }
//            }
//        }
//    }
////    var matrixx = [[Int]]()
//    var matrixx = Array(repeating: Array(repeating: 0, count: row-1), count: column-3)
//
//    print(matrixx)
////    for item in arr{
//    var l = 0
//    for i in 0 ..< column-3{
//        for j in 0 ... row-2{
//                matrixx[i][j] = arr[l]
//                l = l + 1
//            }
//        }
////    }
////    return arr
//    print(matrixx)
////   return matrixx
//}
////var image =
//print(solution(image:[[36,0,18,9],
//                      [27,54,9,0],
//                      [81,63,72,45]])
//)










