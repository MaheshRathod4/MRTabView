//
//  ContentView.swift
//  MRTabView
//
//  Created by Mahesh Rathod on 15/05/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        if #available(iOS 14.0, *) { } else {
            UITableView.appearance().separatorStyle = .none
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Example1()) {
                    Text(Constant.Strings.example1)
                }
                NavigationLink(destination: Example2()) {
                    Text(Constant.Strings.example2)
                }
                NavigationLink(destination: Example3()) {
                    Text(Constant.Strings.example3)
                }
                NavigationLink(destination: Example4()) {
                    Text(Constant.Strings.example4)
                }
                NavigationLink(destination: Example5()) {
                    Text(Constant.Strings.example5)
                }
            }
            .navigationBarTitle(Text(Constant.Strings.appName), displayMode: .inline)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
