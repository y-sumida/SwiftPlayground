import Foundation

var data: [String] = ["2017-05-26", "2017-07-26", "2017-08-26", "2017-08-01", "2017-07-27", "2017-05-26",  "2017-05-25", "2017-06-21"]

var result = data.reduce(([:])) { (result, str) -> ([String:[String]]) in
    var newResult: [String: [String]] = result

    let yearMonth = str.substring(to: str.index(str.startIndex, offsetBy: 7))
    let date = str.substring(from: str.index(str.endIndex, offsetBy: -5))

    if newResult[yearMonth] == nil {
       newResult[yearMonth] = [date]
    }
    else {
        newResult[yearMonth]!.append(date)
        newResult[yearMonth]!.sort()
    }

    return newResult
}

dump(result)
