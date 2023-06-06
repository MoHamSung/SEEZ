//
//  AddSheet.swift
//  ACT3Alarm
//
//  Created by seunghoria on 2023/06/02.
//

import SwiftUI

struct AddSheet: View {
    @State private var currentDate = Date()
  //  @Binding var modelList : [ModelList]
    
   
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("알람 설정 시각", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                   // .frame(maxWidth: .infinity)
                
               
                
                List() {
                    Text(currentDate.formatted())

                    HStack {
                        Text("반복")
                        Spacer()
                        Text("안 함 \(Image(systemName: "chevron.right"))")
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
                    }
                    HStack{
                        Text("다시 알림")
                    }
                }
            }
            .navigationBarItems(
                leading:
                    Button {
                        print("취소요")
                    } label: {
                        Text("취소")
                            .foregroundColor(Color("ColorIconOrange"))
                    },
                trailing: Button {
                    print("저장요")
                } label: {
                    Text("저장")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color("ColorIconOrange"))
                })
        }
    }
}



struct AddSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddSheet()
            .preferredColorScheme(.dark)
    }
}
