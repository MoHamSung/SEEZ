//
//  ListHeader.swift
//  act3Second
//
//  Created by seunghoria on 2023/06/05.
//

import SwiftUI

struct ListHeader: View {
    var listHeaderImage : String
    var listHeaderText : String
    
    var body: some View {
        HStack(spacing: 0){
            if listHeaderImage != "" {
                Image(systemName: "\(listHeaderImage)")
                    .font(.system(size: 14))
                        .padding(.trailing,4)
                    
                          
            }
            Text("\(listHeaderText)")
                .font(.system(size: 17))
            
        }
        
    }
}

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListHeader(listHeaderImage: "house", listHeaderText: "아뇨")
    }
}
