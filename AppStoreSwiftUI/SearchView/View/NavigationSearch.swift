//
//  NavigationSearch.swift
//  AppStoreSwiftUI
//
//  Created by 김상진 on 2023/03/31.
//

import SwiftUI
import UIKit

struct NavigationSearch: UIViewControllerRepresentable {
    typealias UIViewControllerType = Wrapper
    
    func makeCoordinator() -> Coordinator {
        Coordinator(representable: self)
    }

    func makeUIViewController(context: Context) -> Wrapper {
        // 원래는 UITableViewController 이런 객체가 와야 하는데, searchController를 가진 하나의 Wrapper 객체를 return 하는거야.
        Wrapper()
    }
    
    func updateUIViewController(_ uiViewController: Wrapper, context: Context) {
        // wrapper에 UISearchViewController 생성해서 넣어주기
        uiViewController.searchController = context.coordinator.searchController
    }
    
    // UIKit -> SwiftUI로의 데이터 전달
    class Coordinator: NSObject {
        let representable: NavigationSearch
        
        let searchController: UISearchController
        
        init(representable: NavigationSearch) {
            self.representable = representable
            self.searchController = UISearchController(searchResultsController: nil)
            super.init()
        }
    }
    
    class Wrapper: UIViewController {
        var searchController: UISearchController? {
            get {
                self.parent?.navigationItem.searchController
            }
            set {
                self.parent?.navigationItem.searchController = newValue
            }
        }
    }
}
