//
//  SearchBar.swift
//  AppStoreSwiftUI
//
//  Created by 김상진 on 2023/03/29.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            Spacer(minLength: 10)
            
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search", text: $text)
                    .foregroundColor(.primary)
                
                // Text를 자동으로 인식해주나보네?
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
                
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
            
            Spacer(minLength: 10)
        }
    }
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(text: "test")
//    }
//}
