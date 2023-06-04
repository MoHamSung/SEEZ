//
//  ContentView.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/01.
//

import SwiftUI

struct User : Identifiable {
    var id = UUID()
    var name : String
    var nickname: String
}


struct ContentView: View {
    
    @State var users = [User]()
    @State private var someToggle = true
    @State var isShownAddSheet = false
    
    
    func delete2 (idHello : IndexSet){
        users.remove(atOffsets: idHello)
        
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
                        
                        ForEach(users) { user in
                            
                            VStack(spacing: 0){
                                Toggle(isOn: $someToggle, label: {
                                    
                                    HStack(alignment: .bottom, spacing: 0){
                                        Text(user.name)
                                            .font(.system(size: 35))
                                        Text(user.nickname)
                                            .font(.system(size: 59))
                                    }
                                    
                                })
                                
                                
                                if someToggle {
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
                        .onDelete(perform: delete2)
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("알림")
                    .toolbar {
                        Button {
                            self.isShownAddSheet.toggle()
                            users.append(User(name: "오전", nickname: "07:00"))
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
