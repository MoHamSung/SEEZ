//
//  AddSheet.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/02.
//

import SwiftUI

struct SettingSheet: View {
    @Binding var selectedTime: Date
    @Binding var modelLists: [ModelList]
    @Binding var isShownAddSheet: Bool
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("알람 설정 시각", selection: $selectedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                
                List() {
                    HStack {
                        Text("반복")
                            .font(.system(size: 15))
                        Spacer()
                        
                        HStack{
                            Text("안 함")
                                .font(.system(size: 15))
                            Image(systemName: "chevron.right")
                                .font(.system(size: 12))
                        }
                        
                    }
                    
                    HStack {
                        Text("레이블")
                            .font(.system(size: 15))
                        Spacer()
                        Text("알람")
                            .font(.system(size: 15))
                        
                    }
                    
                    HStack {
                        Text("레이블")
                            .font(.system(size: 15))
                        
                        Spacer()
                        
                        HStack{
                            Text("녹차")
                                .font(.system(size: 15))
                            Image(systemName: "chevron.right")
                                .font(.system(size: 12))
                        }
                        
                    }
                    HStack{
                        Text("다시 알림")
                            .font(.system(size: 15))
                    }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("알람추가")
                        .font(.system(size: 16, weight: .bold))
                }
            }
            .navigationBarItems(
                leading:
                    Button {
                        isShownAddSheet.toggle()
                    } label: {
                        Text("취소")
                            .foregroundColor(Color("ColorIconOrange"))
                    },
                
                trailing: Button {
                    modelLists.append(ModelList(date: selectedTime))
                    isShownAddSheet.toggle()
                    
                } label: {
                    Text("저장")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("ColorIconOrange"))
                })
        }
    }
}



struct SettingSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingSheet(selectedTime: .constant(Date()), modelLists: .constant([ModelList]()), isShownAddSheet: .constant(false))
            .preferredColorScheme(.dark)
    }
}


// AddSheet(modelLists: .constant([ModelList]()), isShownAddSheet: .constant(false), isEditing: .constant(false))
//AddSheet(alarm: .constant(ModelList(date: Date())))
