//
//  RegistrationView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 13.10.22.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var username = ""
    @State var fullname = ""
    @State var imagePickerPresented = false
    @State var pickedImage: UIImage?
    @State var image: Image?
    @Environment(\.presentationMode) var prpresentationMode
    @ObservedObject var viewModel = AuthViewModel()
    
    let backColor = Color(#colorLiteral(red: 0.2203676105, green: 0.631565094, blue: 0.9551432729, alpha: 1))
    
    func loadImage() {
        guard let img = pickedImage else {return}
        image = Image(uiImage: img)
    }
    
    var body: some View {
        VStack {
            VStack {
                Button {
                    imagePickerPresented.toggle()
                } label: {
                    
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 110, height: 110)
                            .clipShape(Circle())
                            .padding(.vertical, 20)
                    } else {
                        Image("plus_photo")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFill()
                            .frame(width: 110, height: 110)
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                    }
                }
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                    ImagePicker(image: $pickedImage)
                }
                
                VStack(spacing: 20) {
                    TextInput(text: $fullname, placeholder: Text("Full Name"), type: .ordinary, imageName: "person")
                        .padding(10)
                        .background(Color(white: 1, opacity: 0.15))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    TextInput(text: $email, placeholder: Text("Email"), type: .ordinary, imageName: "envelope")
                        .padding(10)
                        .background(Color(white: 1, opacity: 0.15))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    TextInput(text: $username, placeholder: Text("Username"), type: .ordinary, imageName: "person")
                        .padding(10)
                        .background(Color(white: 1, opacity: 0.15))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                    TextInput(text: $password, placeholder: Text("Password"), type: .secure, imageName: "lock")
                        .padding(10)
                        .background(Color(white: 1, opacity: 0.15))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 20)
                
                HStack {
                    Spacer()
                    
                    Button {
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.trailing, 20)
                    }
                    
                }
                
                Button {
                    guard let img = pickedImage else {return}
                    viewModel.register(email: email, password: password, username: username, fullname: fullname, profileImage: img)
                } label: {
                    Text("Sign up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: UIScreen.main.bounds.width * 0.7, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                }
                
                Spacer()
                
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                        .onTapGesture {
                            prpresentationMode.wrappedValue.dismiss()
                        }
                }
                .foregroundColor(.white)
                .padding(.bottom, 30)
            }
        }
        .ignoresSafeArea()
        .background(backColor)
        .navigationBarHidden(true)
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
