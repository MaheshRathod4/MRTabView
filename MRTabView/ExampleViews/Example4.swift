//
//  Example4.swift
//  MRTabView
//
//  Created by IBL INFOTECH on 15/05/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct Example4: View {
    @State var selectedTab:Tab = .Home
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("\(selectedTab.rawValue)")
                    .font(.system(size: 24)).fontWeight(.bold)
                Spacer()
                HStack(alignment: .center, spacing: 0) {
                    TabItem4(currentView: $selectedTab, imageName: Constant.Strings.home, tab: .Home, tabTitle: Constant.Strings.home)
                    Spacer()
                    TabItem4(currentView: $selectedTab, imageName: Constant.Strings.like, tab: .Like, tabTitle: Constant.Strings.like)
                    Spacer()
                    TabItem4(currentView: $selectedTab, imageName: Constant.Strings.notification, tab: .Notification, tabTitle: Constant.Strings.notification)
                    Spacer()
                    TabItem4(currentView: $selectedTab, imageName: Constant.Strings.profile, tab: .Profile, tabTitle: Constant.Strings.profile)
                }
                .background(Color(UIColor.systemGray6))
                .clipped()
                .shadow(radius: 2)
            }
        }
    }
}

struct Example4_Previews: PreviewProvider {
    static var previews: some View {
        Example4()
    }
}
