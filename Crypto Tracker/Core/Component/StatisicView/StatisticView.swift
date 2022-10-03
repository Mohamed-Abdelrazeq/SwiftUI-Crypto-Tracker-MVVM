//
//  StatisticView.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 04/10/2022.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            
            HStack (spacing: 4){
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: (stat.percetageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percetageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percetageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percetageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: dev.state1)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: dev.state2)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: dev.state3)
                .previewLayout(.sizeThatFits)
        }
    }
}
