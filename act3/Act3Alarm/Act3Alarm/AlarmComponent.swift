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
        VStack(alignment: .leading,spacing: 0){
            HStack(alignment: .bottom, spacing: 0){
                Text(alarm.partOfDay)
                    .font(.system(size: 35))
                    .baselineOffset(7)
                Text(alarm.time)
                    .font(.system(size: 59))
                Spacer()
                Toggle("안녕하세요", isOn: $alarm.isToggleOn)
                    .padding(.bottom, 10)
                    .padding(.trailing, 4)
                    .labelsHidden()
            }
            Text("알람")
                .font(.system(size: 12))
        }
        .foregroundColor(Color("\(alarm.isToggleOn ? "ColorFontWhite": "ColorFontGray")"))
    }
}

struct AlarmComponent_Previews: PreviewProvider {
    static var previews: some View {
        AlarmComponent(alarm: ModelList(date: Date()))
    }
}
