//
//  ParentView.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/12.
//

import SwiftUI

struct ParentView: View {
    @StateObject var cllass = Count()
    
    var body: some View {
        VStack{
            Button{
                cllass.firstNumberAdd()
            } label: {
                Text("\(cllass.firstNum)")
            }
            
            ChildrenView()
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
