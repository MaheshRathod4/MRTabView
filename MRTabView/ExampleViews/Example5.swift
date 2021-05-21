//
//  Example5.swift
//  MRTabView
//
//  Created by IBL INFOTECH on 15/05/21.
//  Copyright © 2021 MR SQUARE. All rights reserved.
//

import SwiftUI

struct Example5: View {
   @State var selectedTab:Tab = .Home
   @State var isSeen = true
       
       var body: some View {
           NavigationView {
               VStack {
                   Spacer()
                   Text("\(selectedTab.rawValue)")
                       .font(.system(size: 24)).fontWeight(.bold)
                   Spacer()
                   HStack(alignment: .center, spacing: 0) {
                    TabItem5(currentView: $selectedTab, imageName: Constant.Strings.home, tab: .Home, tabTitle: Constant.Strings.home, isBadge: false)
                       Spacer()
                    TabItem5(currentView: $selectedTab, imageName: Constant.Strings.like, tab: .Like, tabTitle: Constant.Strings.like, isBadge: false)
                       Spacer()
                    TabItem5(currentView: $selectedTab, imageName: Constant.Strings.notification, tab: .Notification, tabTitle: Constant.Strings.notification, isBadge: true)
                       Spacer()
                    TabItem5(currentView: $selectedTab, imageName: Constant.Strings.profile, tab: .Profile, tabTitle: Constant.Strings.profile, isBadge: false)
                   }
                   .background(Color(UIColor.systemGray6))
                   .clipped()
                   .shadow(radius: 2)
                   }
           }
       }
}

struct Example5_Previews: PreviewProvider {
    static var previews: some View {
        Example5()
    }
}
