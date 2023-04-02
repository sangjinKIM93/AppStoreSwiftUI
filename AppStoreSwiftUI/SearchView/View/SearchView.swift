//
//  SearchView.swift
//  AppStoreSwiftUI
//
//  Created by 김상진 on 2023/03/29.
//

import SwiftUI

struct SearchView: View {
    var array = [
        "사자", "코끼리", "암닭", "사자", "코끼리", "암닭",
        "사자", "코끼리", "암닭", "사자", "코끼리", "암닭"
    ]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id: \.self) { searchText in
                    Button(action: {
                        // type에 따라 list의 형태를 다르게 하고 싶다면?
                        // List 내부에서 type으로 분기문을 치면 되지 않을까?
                        print("\(searchText)")
                    }) {
                        Text(searchText)
                    }
                }
            }
            .navigationTitle("Navigation")
            .navigationBarSearch($searchText)
        }
        
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
////        SearchView()
//    }
//}
