//
//  Example2.swift
//  MRTabView
//
//  Created by Mahesh Rathod on 15/05/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct Example2: View {
    @State var selectedTab:Tab = .Home
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("\(selectedTab.rawValue)")
                    .font(.system(size: 24)).fontWeight(.bold)
                Spacer()
                HStack(alignment: .center, spacing: 0) {
                    TabItem2(currentView: $selectedTab, imageName: Constant.Strings.home, tab: .Home, tabTitle: Constant.Strings.home)
                    Spacer()
                    TabItem2(currentView: $selectedTab, imageName: Constant.Strings.like, tab: .Like, tabTitle: Constant.Strings.like)
                    Spacer()
                    TabItem2(currentView: $selectedTab, imageName: Constant.Strings.notification, tab: .Notification, tabTitle: Constant.Strings.notification)
                    Spacer()
                    TabItem2(currentView: $selectedTab, imageName: Constant.Strings.profile, tab: .Profile, tabTitle: Constant.Strings.profile)
                }
                .background(Color(UIColor.systemGray6))
                .clipped()
                .shadow(radius: 2)
                }
        }
    }
}

struct Example2_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
