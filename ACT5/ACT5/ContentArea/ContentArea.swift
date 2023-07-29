//
//  ContentArea.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/23.
//

import SwiftUI

struct ContentArea: View {
    @Binding var selected: String
    
    var body: some View {
        TabView(selection: $selected) {
            MondayContent().tag("월")
            TuesdayContent().tag("화")
            WednesdayContent().tag("수")
            ThursdayContent().tag("목")
            FridayContent().tag("금")
            SaturdayContent().tag("토")
            SundayContent().tag("일")
            NewContent().tag("신작")
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea(selected: .constant("월"))
    }
}
