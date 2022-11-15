//
//  ContentView.swift
//  VoiceRecDemo
//
//  Created by iosdev on 10.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
            
               // Text("Navigation Link below:")
                NavigationLink(destination: SecondView()) {
                    Text("Change view")
                        
                        //.accessibilityInputLabels("Play", "Send")
                }
                .padding()
                
                NavigationLink(destination: ToggleView()) {
                    Text("Change to view")
                        
                        //.accessibilityInputLabels("Play", "Send")
                }
                .padding()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }}
            struct SecondView: View {
                @State var counterText = 0
                @State var counter: Int = 0


               var body: some View {
                  Text("Second screen")
                   
                   Text("Current count: \(counter)")
                   Button(action: {
                       self.counter += 1
                   }) {
                       Text("Plus")
                           .accessibilityLabel("Plus")
                   }
                   
                   Button("Lette goo") {
                       self.counter += 1
                   }.accessibilityLabel("one")
                 
                   }
                
             
    }
         
struct ToggleView : View {
    
    @State var isToggled: Bool = true
    var body: some View {
        ZStack {
            
         
            HStack {
                Text("ON")
                    .bold()
                    .foregroundColor(.green)
                
                Spacer()
                
                Text("OFF")
                    .bold()
                    .foregroundColor(.red)
                
            }
            .padding()
            // .frame(width: , height: height)
            
            HStack {
                if !isToggled {
                    Spacer()
                }
                RoundedRectangle(cornerRadius: 30)
                    .padding()
                    .frame(width: 50, height: 50)
                    .animation(.spring(response: 0.5), value: isToggled)
                //ACCESSIBILITY
                    .accessibilityLabel("Toggle")
                
                if isToggled {
                    Spacer()
                }
            }
            
        }
        .frame(width: 89, height: 89)
        .onTapGesture {
            isToggled = !isToggled
            withAnimation(.easeInOut(duration: 0.2)) {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
        struct CustomToggle : View  {
           
            
           // @Binding var isToggled : Bool
           // @State var switchWidth = 1.0
            var isToggled: Bool
            
            var body: some View {
                ZStack {
                    
                  // ShallowConcaveView(cornerRadius: 20)
                   //       .frame(width: 30, height: 30)
                    
                    HStack {
                        Text("ON")
                            .bold()
                            .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("OFF")
                            .bold()
                            .foregroundColor(.red)
                        
                    }
                    .padding()
                    // .frame(width: , height: height)
                    
                    HStack {
                        if !isToggled {
                            Spacer()
                        }
                        RoundedRectangle(cornerRadius: 30)
                        .padding()
                        .frame(width: 50, height: 50)
                        .animation(.spring(response: 0.5), value: isToggled)
                        //ACCESSIBILITY
                       .accessibilityLabel("Toggle")
                        
                        if isToggled {
                        Spacer()
                        }
                        }
                        
                        }
                        .frame(width: 89, height: 89)
                        .onTapGesture {
                        isToggled = !isToggled
                        withAnimation(.easeInOut(duration: 0.2)) {
                    
                        }
                        
                        
                        
                        
                         RoundedRectangle(cornerRadius: cornerRadius)
                         .padding(padding)
                         .frame(width: switchWidth + toggleWidthOffset, height: height)
                         .animation(.spring(response: 0.5), value: isToggled)
                         //      .foregroundColor(Color(Colors.mainColor))
                         //    .shadow(color: Color(Colors.lightShadow), radius: 2, x: -3, y: -3)
                         //   .shadow(color: Color(Colors.darkShadow), radius: 3, x: 3, y: 3)
                          ACCESSIBILITY
                         .accessibilityLabel("Toggle")
                         
                         if isToggled {
                         Spacer()
                         }
                         }
                         
                         }
                         .frame(width: width, height: height)
                         .onTapGesture {
                         isToggled = !isToggled
                         withAnimation(.easeInOut(duration: 0.2)) {
                         switchWidth = width
                         }
                         withAnimation(.easeInOut(duration: 0.4)) {
                         switchWidth = height
                         }
                         }
                         .onAppear {
                         switchWidth = height
                         }
                         
                    }
                }
            }
        T
                         
                               
                                        
                                       // .width: 200, cornerRadius : 20,
                               //         isVoiceOverPressed; $isVoiceOverPressed
                                 //       .accessibilityLabel("Click")
                                        // Add actions to button accessibility
                                        // overwites the button's action
                                   //     .accessibilityAction {
                                    //        counter += 1
                                    //        isVoiceOverPressed = true
                                    //    }
                                   // }
                                
                            
                        
 
  func Button(action: {
  NavigationLink.
  sendMessage = true
  }) {
  Image(systemName: "paperplane")
  .font(.title)
  .accessibilityInputLabels(["send", "reply", "airplane"])
  }
  */
