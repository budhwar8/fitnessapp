//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Abhinav Budhwar on 26/1/25.
//

import SwiftUI
struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top) {
                    VStack(alignment: .leading,
                           spacing: 8){
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                    }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

struct ActivitCard_Previews: PreviewProvider {
    static var previews: some View  {
        ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"))
    }
}

