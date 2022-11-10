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
                   //     .accessibilityInputLabels("Play", "Send")
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
                 /*
                   Button("Counter") {
                       counter +=  10
                       print(counter)
                     //  Text("\(counter)")
                   }
                   TextField(text: String($counter))
                   Text(String(counterText))
                       .onTapGesture {
                       counterText = counter
                  */
                   }
                       
             
    }
                
                    
                 
                       
                                
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
                        
                    
                
                /*
             func Button(action: {
            NavigationLink.
            sendMessage = true
        }) {
            Image(systemName: "paperplane")
                .font(.title)
                .accessibilityInputLabels(["send", "reply", "airplane"])
        }  */




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
