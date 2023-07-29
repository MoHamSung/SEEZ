//
//  ChildrenView.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/12.
//

import SwiftUI

struct ChildrenView: View {
    @ObservedObject var cllass = Count()
    
    var body: some View {
        Button{
            cllass.secondNumberAdd()
        } label: {
            Text("\(cllass.secondNum)")
        }

    }
}

struct ChildrenView_Previews: PreviewProvider {
    static var previews: some View {
        ChildrenView()
    }
}
