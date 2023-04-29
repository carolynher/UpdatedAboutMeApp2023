//
//  ContentView.swift
//  UpdatedAboutMeApp2023
//
//  Created by Carolyn Hernandez on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myFacts = ""
    @State private var isClicked = false
    //@State private var bookstoreImage = Image("")
    
   // @State private var presentAlert = false
    
    var body: some View {
        ZStack {
            //creating the background color for the entire UI
            let backgroundColor = UIColor(red: 226, green: 248, blue: 226)
            
            let rectangleColor = UIColor(red: 255, green: 237, blue: 248)
            
            let textColor = UIColor(red: 24, green: 65, blue: 46)
            
            let buttonColor = UIColor(red: 255, green: 152, blue: 216)
            
            Color(backgroundColor)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 10) {
                Text("carolyn")
                    .padding()
                    //adding custom font
                    .font(Font.custom("Georgia", size:30))
                    .foregroundColor(Color(textColor))
                
                Image("representsMe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding(50)
                
                //currently the text is empty but once the button is clicked, it will display my facts
                Text(myFacts)
                    .padding()
                    .font(Font.custom("Georgia", size:16))
                    .foregroundColor(Color(textColor))
                
                //adding images when the button is clicked
                HStack(spacing: 5) {
                    if isClicked == true {
                        Image("bagels")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(10)
                        Image("bookstore")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding(10)
                    
                    }
                
                
                Button("click me") {
                    //displaying the facts as text
                    myFacts = "   ‧͙⁺˚*･༓☾    About Me     ☽༓･*˚⁺‧͙                        ✿ I love to read rom-coms, discover new coffee shops, and go to concerts (more specifically, harry styles concerts) ♡ last year, I went to nyc for the first time and fell in love with nyc and its beautiful architecture/culture. I'm obsessed with nyc bagels, i miss them :')"
                    //boolean is set to true --> therefore the images will appear
                    isClicked = true
                    }
                    
                }
                //adding modifiers to button
                .font(Font.custom("Georgia", size:20))
                .buttonStyle(.borderedProminent)
                .tint(Color(buttonColor))
            }
            .padding()
            .background(Rectangle()) .foregroundColor(Color(rectangleColor))
                .cornerRadius(15) //adds curved edges to vertical stack/rectangle
                .shadow(radius: 15) //adds shadow on edge of white rectangle
            .padding()

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//creating a UIColor
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
