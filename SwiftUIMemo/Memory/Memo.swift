//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 김명수 on 2023/02/24.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    // Identifiable : Data를 리스트의 바인딩 할떄 필요
    // ObservableObject : View 를 자동으로 업데이트 할떄 필요
    
    let id : UUID
    @Published var content : String
    //@Published : 새로운 값이 들어올떄 마다 자동으로 UI에 바인딩 됨
    let insertDate : Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
