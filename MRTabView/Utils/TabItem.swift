//
//  TabItem.swift
//  MRTabView
//
//  Created by MR SQUARE on 15/05/21.
//  Copyright © 2021 Mahesh Rathod. All rights reserved.
//

import SwiftUI

struct TabItem1: View {
    
    @Binding var currentView: Tab
    let imageName: String
    let tab: Tab
    let tabTitle:String
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 4) {
                
             Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(self.currentView == tab ? Color.white : Color.gray)
                .frame(width: 18, height: 18)
                
                if currentView == tab {
                     Text(tabTitle)
                        .font(.system(size: 12)).fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                
                }.padding(8)
            .frame(maxHeight: 32)
            .background(self.currentView == tab ? Color(Constant.Strings.primary) : Color.clear)
            .cornerRadius(16)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        .padding(16).onTapGesture {
            self.currentView = self.tab
        }.animation(.easeInOut)
        
    
    }
}


struct TabItem2: View {
    
    @Binding var currentView: Tab
    let imageName: String
    let tab: Tab
    let tabTitle:String
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 4) {
                
             Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(self.currentView == tab ? Color.white : Color.gray)
                .frame(width: 18, height: 18)
                
                if currentView == tab {
                     Text(tabTitle)
                        .font(.system(size: 12)).fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                
                }.padding(8)
            .frame(maxHeight: 32)
            .background(
                self.currentView == tab ? LinearGradient(gradient: Gradient(colors: [Color("Blue"), Color("LightBlue")]), startPoint: .bottomLeading, endPoint: .topTrailing) : LinearGradient(gradient: Gradient(colors: [.clear, .clear]), startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(16)
        }.padding(16).onTapGesture {
            self.currentView = self.tab
        }.animation(.easeInOut)
    }
}

struct TabItem3: View {
    
    @Binding var currentView: Tab
    let imageName: String
    let tab: Tab
    let tabTitle:String
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 4) {
             Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(self.currentView == tab ? Color(Constant.Strings.primary) : Color.gray)
                .frame(width: 18, height: 18)
                }.padding(8)
            .frame(maxHeight: 32)
            .cornerRadius(16)
        }.padding(16).onTapGesture {
            self.currentView = self.tab
        }.animation(.easeInOut)
    }
}

struct TabItem4: View {
    
    @Binding var currentView: Tab
    let imageName: String
    let tab: Tab
    let tabTitle:String
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 4) {
                
                Image(imageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(self.currentView == tab ? Color(Constant.Strings.primary) : Color.gray)
                    .frame(width: 18, height: 18)
                
                Text(tabTitle)
                    .font(.system(size: 12)).fontWeight(.regular)
                    .foregroundColor(self.currentView == tab ? Color(Constant.Strings.primary) : Color.gray)
                
                
            }
            
        }.padding(16).onTapGesture {
            self.currentView = self.tab
        }.animation(.easeInOut)
    }
}

import SwiftUI

struct TabItem5: View {
    
    @Binding var currentView: Tab
    let imageName: String
    let tab: Tab
    let tabTitle:String
    @State var isBadge:Bool
    
    var body: some View {
        VStack {
            ZStack {
                Image(imageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(self.currentView == tab ? Color(Constant.Strings.primary) : Color.gray)
                    .frame(width: 18, height: 18)
                
                
                if isBadge {
                    HStack(alignment: .center, spacing: 0) {
                        VStack {
                            Text("")
                        }
                        Spacer()
                        VStack(alignment: .center, spacing: 0) {
                            Spacer()
                            Image("Circle")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(Color.red)
                                .frame(width: 10, height: 10)
                            Spacer()
                            Spacer(minLength: 12)
                        }
                        
                    } .frame(width: 24, height: 24)
                }
            }.padding(8)
                .frame(maxHeight: 32)
                
                .cornerRadius(16)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .padding(16).onTapGesture {
            self.currentView = self.tab
            self.isBadge = false
        }.animation(.easeInOut)
        
        
    }
}
