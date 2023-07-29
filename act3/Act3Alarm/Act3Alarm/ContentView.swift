//
//  ContentView.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/01.
//

import SwiftUI

struct ContentView: View {
    @State var modelLists = [ModelList]()
    @State var modelListsForSheet : ModelList?
    @State var isShownAddSheet = false
    @State private var selectedTime = Date()
    
    func delete (selectedSetting : IndexSet){
        modelLists.remove(atOffsets: selectedSetting)
        
    }
    
    var body: some View {
        ZStack{
            NavigationView {
                VStack{
                    List() {
                        HStack{
                            Text("\(Image(systemName: "bed.double.fill"))수면 | 기상")
                                .font(.system(size: 17))
                                .fontWeight(.regular)
                        }
                        
                        HStack{
                            Text("알람 없음")
                                .font(.system(size: 14))
                                .padding(.vertical, 10)
                            
                            Spacer()
                            
                            Button {
                                print("알람없음 설정입니다.")
                            } label: {
                                Text("설정")
                                    .padding(.horizontal, 9)
                                    .padding(.vertical, 6)
                                    .foregroundColor(Color("ColorIconOrange"))
                                    .background(Color("ColorBgGray"))
                                    .cornerRadius(30)
                            }
                        }
                        
                        Text("기타")
                            .font(.system(size: 17))
                        
                        ForEach(modelLists) { list in
                            Button {
                                modelListsForSheet = list
                            } label: {
                                AlarmComponent(alarm: list)
                                
                            }
                        }
                        .onDelete(perform: delete)
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("알람")
                    .toolbar {
                        Button {
                            self.isShownAddSheet.toggle()
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(Color("ColorIconOrange"))
                        }
                        .sheet(isPresented: $isShownAddSheet) {
                            SettingSheet(selectedTime: $selectedTime, modelLists: $modelLists, isShownAddSheet: $isShownAddSheet)
                        }
                        .sheet(item : $modelListsForSheet){ alarmList in
                            EditSheet(alarmList: alarmList)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
