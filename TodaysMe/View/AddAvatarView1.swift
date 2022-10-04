//
//  AddMeView.swift
//  TodaysMe
//
//  Created by kelly on 2022/04/27.
//

import SwiftUI

extension View {
  @ViewBuilder func applyTextColor(_ color: Color) -> some View {
      self.colorInvert().colorMultiply(color)
  }
}

struct AddAvatarView1: View {
    @Binding var showModal: Bool
    @State var newavatar: newAvatar = newAvatar()

    var body: some View {
        NavigationView{
            VStack {
                Text("날짜를 선택하세요 🗓")
                    .font(.custom("Goyang", size: 30))
                DatePicker(selection: $newavatar.date, in: ...Date(), displayedComponents: .date) {
                }
                .datePickerStyle(.wheel)
                .padding(.vertical, 40)

                NavigationLink {
                    AddAvatarView2(showModal: self.$showModal, newavatar: $newavatar)
                } label: {
                    Text("다음")
                        .font(.custom("Goyang", size: 20))
                        .foregroundColor(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.purple.opacity(0.4))
                                .frame(width: 80, height: 40)
                        }
                }
            }
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
//
//struct AddMeView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectDateView()
//    }
//}
