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
            List {
                ForEach(1..<50) { index in
                    Text("Sample Row Nr.\(index)")
                }
            }
            .navigationTitle("Navigation")
            .overlay(NavigationSearch().frame(width: 0, height: 0))
        }
        
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
////        SearchView()
//    }
//}
