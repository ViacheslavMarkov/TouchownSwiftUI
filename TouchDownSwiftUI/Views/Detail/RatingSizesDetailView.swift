//
//  RatingSizesDetailView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 16.02.2023.
//

import SwiftUI

struct RatingSizesDetailView: View {
    //MARK: - Properties
    let sizes:[String] = ["XS", "S", "M", "L", "XL"]
//    @State private var isAnimating: Bool = false
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack {
                    ForEach(1 ..< 5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }//: Button
                }//: HStack
            }//: VStack
            Spacer()
            
            //Sizes
            VStack(alignment: .trailing, spacing: 4) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 6) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                }
            }//: VStack
        }//: HStack
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
