//
//  AddAvatar3.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/04.
//

import SwiftUI

struct AddAvatarView3: View {
    @Environment(\.presentationMode) var presenstation
    @Environment(\.managedObjectContext) var managedObjContext
    
    @Binding var showModal: Bool
    @Binding var newavatar: newAvatar
    @State var showAlert: Bool = false
    
    func textIsAppropriate() -> Bool {
        if newavatar.message.count > 30 {
            return false
        }
        return true
    }
    
    var body: some View {
        VStack{
            ZStack{
                Image(newavatar.face)
                    .resizable()
                Image(newavatar.hair)
                    .resizable()
                Image(newavatar.eyes)
                    .resizable()
                Image(newavatar.mouth)
                    .resizable()
            }
            .frame(width: 150, height: 150, alignment: .center)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.gray)
                    .frame(width: 200, height: 200, alignment: .center)
            }

            Text(newavatar.date, formatter: AvatarDetailView.dateFormat)
                .font(.custom("Goyang", size: 30))
                .padding(.top, 60)
            
            TextField("을 묘사해주세요 (최대 30자)", text: $newavatar.message)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(Color.purple.opacity(0.4))
                        .frame(height: 45)
                        .padding(.horizontal, -20)
                }
                .font(.custom("Goyang", size: 19))
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
            
            Button {
                if textIsAppropriate(){
                    AvatarDataController().CreateAccount(newAvatar: newavatar, context: managedObjContext)
                    showModal.toggle()
                } else {
                    showAlert.toggle()
                }
            } label: {
                Text("완료")
                    .font(.custom("Goyang", size: 20))
                    .foregroundColor(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.purple.opacity(0.4))
                            .frame(width: 80, height: 40)
                    }
            }
            .padding(.top, 30)

        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(
            content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        Button {
                            self.presenstation.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .foregroundColor(Color.purple.opacity(0.8))
                        }
                        Text("아바타 만들기")
                            .font(.custom("Goyang", size: 15))
                            .foregroundColor(Color.purple.opacity(0.8))
                    }
                }
            }
        )
        .alert("30자 이내로 입력해주세요", isPresented: $showAlert){}
    }
}

//struct AddAvatar3_Previews: PreviewProvider {
//    static var previews: some View {
//        AddAvatarView3()
//    }
//}
