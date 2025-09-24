//
//  ContentView.swift
//  FirstAppFix
//
//  Created by Cruz Arreola on 9/23/25.
//

import SwiftUI

struct ContentView: View {     // creating view screen
    @State private var helloWorld = false   // making a boolean variable
        /* @State makes the variable changeable for the button, when
         changed to "true" the pop-up will appear */
    
    var body: some View{   // this "body" section contains all the UI
            Button("Hello"){  // creating a button that says "Hello"
                helloWorld = true   // this will trigger if button is pressed
            }
            .padding()
            .background(.green)
        
            .alert("Hello World", isPresented: $helloWorld){    /*alert will pop up
                                                                 when helloWorld is true...
                                                                 $ allows the variable to
                                                                 be updated*/
                Button("Ok"){               // creating button within the alert
                    helloWorld = false      
                }
            }
    }
}


#Preview {
    ContentView()
}
