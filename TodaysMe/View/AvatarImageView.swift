////
////  AvatarImageView.swift
////  TodaysMe
////
////  Created by kelly on 2022/05/04.
////
//
//import SwiftUI
//struct DropdownOption: Hashable {
//    public static func == (lhs: DropdownOption, rhs: DropdownOption) -> Bool {
//        return lhs.key == rhs.key
//    }
//
//    var key: String
//    var val: String
//}
//struct DropdownOptionElement: View {
//    var val: String
//    var key: String
//    var onSelect: ((_ key: String) -> Void)?
//
//    var body: some View {
//        Button(action: {
//            if let onSelect = self.onSelect {
//                onSelect(self.key)
//            }
//        }) {
//            Text(self.val)
//        }
//        .padding(.horizontal, 20)
//        .padding(.vertical, 5)
//    }
//}
//struct Dropdown: View {
//    var options: [DropdownOption]
//    var onSelect: ((_ key: String) -> Void)?
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 0) {
//            ForEach(self.options, id: \.self) { option in
//                DropdownOptionElement(val: option.val, key: option.key, onSelect: self.onSelect)
//            }
//        }
//
//        .background(Color.white)
//        .cornerRadius(20)
//        .overlay(
//            RoundedRectangle(cornerRadius: 20)
//                .stroke(.white, lineWidth: 1)
//        )
//    }
//}
//
//struct DropdownButton: View {
//    @State var shouldShowDropdown = false
//    @Binding var displayText: String
//    var options: [DropdownOption]
//    var onSelect: ((_ key: String) -> Void)?
//
//    let buttonHeight: CGFloat = 30
//    var body: some View {
//        Button(action: {
//            self.shouldShowDropdown.toggle()
//        }) {
//            HStack {
//                Text(displayText)
//                Spacer()
//                    .frame(width: 20)
//                Image(systemName: self.shouldShowDropdown ? "chevron.up" : "chevron.down")
//            }
//        }
//        .padding(.horizontal)
//        .cornerRadius(20)
//        .frame(height: self.buttonHeight)
//        .overlay(
//            RoundedRectangle(cornerRadius: 20)
//                .stroke(.white, lineWidth: 1)
//        )
//        .overlay(
//            VStack {
//                if self.shouldShowDropdown {
//                    Spacer(minLength: buttonHeight + 10)
//                    Dropdown(options: self.options, onSelect: self.onSelect)
//                }
//            }, alignment: .topLeading
//        )
//        .background(
//            RoundedRectangle(cornerRadius: 20).fill(Color.white)
//        )
//    }
//}
//struct AvatarImageView: View {
////    let face: String
////    let hair: String
////    let eyes: String
////    let mouth: String
//    @State static var options = [
//            DropdownOption(key: "week", val: "This week"), DropdownOption(key: "month", val: "This month"), DropdownOption(key: "year", val: "This year")
//        ]
//    var body: some View {
//        VStack{
//            DisclosureGroup("Menu 1") {
//                Text("Item 1")
//                    .padding()
//                Text("Item 2")
//                Text("Item 3")
//                Button {
//
//                } label: {
//                    Text("Item 4")
//                }
//            }
//            .frame(width: 90, height: 30)
//            .accentColor(.green)
//            .opacity(0.7)
//            .background {
//                RoundedRectangle(cornerRadius: 20)
//                    .foregroundColor(.purple.opacity(0.4))
//            }
//        GroupBox {
//            DisclosureGroup("Menu 1") {
//                Text("Item 1")
//                    .padding()
//                Text("Item 2")
//                Text("Item 3")
//                Button {
//
//                } label: {
//                    Text("Item 4")
//                }
//
//            }
//        }
//        .frame(width: 150, height: 30)
//        .accentColor(.green)
//        .opacity(0.9)
//        }
//
//        Menu {
//            Button {
//            } label: {
//                Text("Linear")
//                Image(systemName: "heart")
//            }
//            Button {
//            } label: {
//                Text("Radial")
//                Image(systemName: "heart")
//                    .tint(.purple)
//            }
//        } label: {
//             Text("Style")
//             Image(systemName: "heart")
//        }
//
//
////        ZStack{
////            Image(face)
////                .resizable()
////                .frame(width: 110, height: 110, alignment: .center)
////                .shadow(color: .gray, radius: 10, x: 3, y: 3)
////
////            Image(hair)
////                .resizable()
////                .frame(width: 110, height: 110, alignment: .center)
////
////            Image(eyes)
////                .resizable()
////                .frame(width: 110, height: 110, alignment: .center)
////
////            Image(mouth)
////                .resizable()
////                .frame(width: 110, height: 110, alignment: .center)
////        }
////        .padding()
//    }
//}
//
////struct AvatarImageView_Previews: PreviewProvider {
////    static var previews: some View {
////        AvatarImageView()
////    }
////}
//
//struct AvatarImageView_Previews: PreviewProvider {
//    static let options = [
//        DropdownOption(key: "week", val: "This week"), DropdownOption(key: "month", val: "This month"), DropdownOption(key: "year", val: "This year")
//    ]
//
//    static let onSelect = { key in
//        print(key)
//    }
//
//    static var previews: some View {
//        Group {
//            VStack(alignment: .leading) {
//                DropdownButton(displayText: .constant("This month"), options: options, onSelect: onSelect)
//                    .background(Rectangle().foregroundColor(.blue))
//            }
//            .foregroundColor(.black)
//        }
//    }
//}
