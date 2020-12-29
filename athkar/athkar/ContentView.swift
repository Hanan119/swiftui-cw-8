//
//  ContentView.swift
//  athkar
//
//  Created by Hanan Dashti on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters = [ 0, 0, 0 ]
    var body: some View {
        
        VStack(alignment: .trailing){
        
            
       
        
            ThakerButton(counter: $counters[0], label: "استغقر الله", color: .green)
            ThakerButton(counter: $counters[1], label: "سبحان الله وبحمده", color: .green)
            ThakerButton(counter: $counters[2], label: "الحمدلله", color: .green)
            
        
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThakerButton: View {
    @Binding var counter: Int
    let label: String
    let color: Color
    
    var body: some View {
        HStack{
            
            Text(label)
                .font(.largeTitle)
            Button(action: {
                counter += 1
                
            }, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 40)
                    .foregroundColor(.white)
                    .background(color)
                    .clipShape(Circle())
                    .padding()
            })
        }
    }
}
