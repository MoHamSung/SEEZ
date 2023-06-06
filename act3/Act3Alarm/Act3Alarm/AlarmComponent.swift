//
//  AlarmComponent.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/06.
//

import SwiftUI

struct AlarmComponent: View {
    @ObservedObject var alarm: ModelList
    
    var body: some View {
        VStack(spacing: 0){
            Toggle(isOn: $alarm.isToggleOn, label: {
                
                HStack(alignment: .bottom, spacing: 0){
                    Text(alarm.partOfDay)
                        .font(.system(size: 35))
                    Text(alarm.time)
                        .font(.system(size: 59))
                }
                
            })
            
            
            if alarm.isToggleOn {
                let _ = print("얍")
            } else {
                let _ = print("예")
            }
            
            Text("알람")
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
               // .border(.green)
        }
        //.border(.yellow)
    }
}

//struct AlarmComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        AlarmComponent()
//    }
//}
