//
//  AddSheet.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/02.
//

import SwiftUI

struct EditSheet: View {
    @ObservedObject var alarmList : ModelList
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("알람 설정 시각", selection: $alarmList.date, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                
                List() {
                    HStack {
                        Text("반복")
                        Spacer()
                        Text("안 함 \(Image(systemName: "chevron.right"))")
                            .font(.system(size: 12))
                    }
                    HStack {
                        Text("레이블")
                        Spacer()
                        Text("알람")
                        
                    }
                    HStack {
                        Text("레이블")
                        Spacer()
                        Text("녹차 \(Image(systemName: "chevron.right"))")
                            .font(.system(size: 12))
                    }
                    HStack{
                        Text("다시 알림")
                    }
                }
            }
            .navigationBarItems(
                leading:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("취소")
                            .foregroundColor(Color("ColorIconOrange"))
                    },
                trailing: Button {
                    alarmList.updateDate(date: alarmList.date)
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Text("저장")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("ColorIconOrange"))
                })
        }
    }
}






