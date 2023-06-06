//
//  ContentView.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var someToggle = true
    @State var isShownAddSheet = false
    
    @State var modelLists = [ModelList]()
    
    
    func delete2 (idHello : IndexSet){
        modelLists.remove(atOffsets: idHello)
        
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
                            
                            AlarmComponent(alarm: list)
                            
                            
                        }
                        .onDelete(perform: delete2)
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("알림")
                    .toolbar {
                        Button {
                            self.isShownAddSheet.toggle()
                            modelLists.append(ModelList(date: Date()))
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(Color("ColorIconOrange"))
                        }
                        .sheet(isPresented: $isShownAddSheet) {
                            AddSheet()
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
