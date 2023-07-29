//
//  ContentView.swift
//  act3Second
//
//  Created by seunghoria on 2023/06/05.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        VStack {
            NavigationStack{
                List{
                    Section {
                        HStack{
                            Text("알람 없음")
                                .font(.system(size: 14))
                                .padding(.vertical,10)
                            
                            Spacer()
                            
                            Text("설정")
                                .padding(.vertical,6)
                                .padding(.horizontal, 9)
                                .font(.system(size:13))
                                .foregroundColor(Color("ColorFontOrange"))
                            
                        }
                    } header: {
                        ListHeader(listHeaderImage: "bed.double.fill", listHeaderText: "수면 | 기상")
                    }
                    
                    Section {
                       
                            AlarmList()
                            AlarmList()
                        
                    } header: {
                        ListHeader(listHeaderImage: "", listHeaderText: "기타")
                    }
                }
                .listStyle(.plain)
                .navigationTitle("알람")
                .toolbar{
                    Image(systemName: "plus")
                        .foregroundColor(Color("ColorFontOrange"))
                }
            }
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
