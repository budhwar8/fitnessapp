//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Abhinav Budhwar on 24/1/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.label]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                
                }
            HistoricDataView()
                .tag("Histroic")
                .tabItem{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                }
        }
        
    }
}

#Preview {
    FitnessTabView()
}
