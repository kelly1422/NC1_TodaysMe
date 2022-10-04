//
//  CreatAvatarView.swift
//  TodaysMe
//
//  Created by kelly on 2022/05/03.
//

import SwiftUI

struct AddAvatarView2: View {
    @Environment(\.presentationMode) var presenstation
    
    @Binding var showModal: Bool
    @Binding var newavatar: newAvatar
    //
    //    @State var face: String = ""
    //    @State var hair: String = ""
    //    @State var eyes: String = ""
    //    @State var mouth: String = ""
    
    var body: some View {
        VStack{
            VStack{
                ZStack{
                    if newavatar.face.isEmpty && newavatar.hair.isEmpty && newavatar.eyes.isEmpty && newavatar.mouth.isEmpty {
                        Text("기분을 나타내주는 이모지를 만들어봐요 👀")
                            .font(.custom("Goyang", size: 15))
                            .frame(width: UIScreen.main.bounds.width)
                    } else {
                        Image(newavatar.face)
                            .resizable()
                        
                        Image(newavatar.hair)
                            .resizable()
                        
                        Image(newavatar.eyes)
                            .resizable()
                        
                        Image(newavatar.mouth)
                            .resizable()
                    }
                }
                .frame(width: 220, height: 220, alignment: .center)
            }
            .frame(height: UIScreen.main.bounds.height * 4/14)
            
            ScrollView {
                Text("얼굴")
                    .font(.custom("Goyang", size: 18))
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.leading, 30)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AvatarButton(decided: $newavatar.face, selected: "face1")
                        AvatarButton(decided: $newavatar.face, selected: "face2")
                        AvatarButton(decided: $newavatar.face, selected: "face3")
                        AvatarButton(decided: $newavatar.face, selected: "face4")
                        AvatarButton(decided: $newavatar.face, selected: "face5")
                        AvatarButton(decided: $newavatar.face, selected: "face6")
                    }
                }
                .padding(.horizontal, 25)
                
                Text("머리스타일")
                    .font(.custom("Goyang", size: 18))
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 18)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AvatarButton(decided: $newavatar.hair, selected: "hair1")
                        AvatarButton(decided: $newavatar.hair, selected: "hair2")
                        AvatarButton(decided: $newavatar.hair, selected: "hair3")
                        AvatarButton(decided: $newavatar.hair, selected: "hair4")
                        AvatarButton(decided: $newavatar.hair, selected: "hair5")
                    }
                }
                .padding(.horizontal, 25)
                
                Text("눈")
                    .font(.custom("Goyang", size: 18))
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 18)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes1")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes2")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes3")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes4")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes5")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes6")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes7")
                        AvatarButton(decided: $newavatar.eyes, selected: "eyes8")
                    }
                }
                .padding(.horizontal, 25)
                
                Text("표정")
                    .font(.custom("Goyang", size: 18))
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 18)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth1")
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth2")
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth3")
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth4")
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth5")
                        AvatarButton(decided: $newavatar.mouth, selected: "mouth6")
                    }
                }
                .padding(.horizontal, 25)
            }
            .padding(.horizontal, 100)
            
            NavigationLink {
                AddAvatarView3(showModal: self.$showModal, newavatar: $newavatar)
            } label: {
                
                Text("다음")
                    .font(.custom("Goyang", size: 20))
                    .foregroundColor(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(newavatar.face.isEmpty || newavatar.hair.isEmpty || newavatar.eyes.isEmpty || newavatar.mouth.isEmpty ? Color.gray.opacity(0.3) : Color.purple.opacity(0.4))
                            .frame(width: 80, height: 40)
                    }
            }
            .padding(.top, 10)
            .disabled(newavatar.face.isEmpty || newavatar.hair.isEmpty || newavatar.eyes.isEmpty || newavatar.mouth.isEmpty ? true : false)
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
                        Text("날짜 선택")
                            .font(.custom("Goyang", size: 15))
                            .foregroundColor(Color.purple.opacity(0.8))
                    }
                }                
            }
        )
    }
}

struct AvatarButton: View {
    @Binding var decided: String
    let selected: String
    
    var body: some View{
        Button {
            decided = selected
        } label: {
            Image(selected)
                .resizable()
                .frame(width: 110, height: 110, alignment: .center)
            
        }
        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
        .cornerRadius(15)
        
    }
}

//struct CreatAvatarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddAvatarView(newavatar: <#T##Binding<newAvatar>#>)
//    }
//}
