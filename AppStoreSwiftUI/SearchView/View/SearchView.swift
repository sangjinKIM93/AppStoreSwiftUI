//
//  SearchView.swift
//  AppStoreSwiftUI
//
//  Created by 김상진 on 2023/03/29.
//

import SwiftUI

struct SearchView: View {
    let array = [
        "사자", "코끼리", "암닭", "사자", "코끼리", "암닭",
        "사자", "코끼리", "암닭", "사자", "코끼리", "암닭"
    ]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                List {
                    ForEach(array.filter{ $0.hasPrefix(searchText) || searchText == ""}, id: \.self) {
                        searchText in Text(searchText)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("검색 기능")
        }
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
////        SearchView()
//    }
//}
