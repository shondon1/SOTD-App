//
//  SplashScreen.swift
//  SOTD App
//
//  Created by Rashon Hyslop on 8/2/23.
//

import SwiftUI

struct SplashScreen: View{
    @State private var shouldFloatLogo = false
    
    var body: some View{
        ZStack{
            Color(uiColor: .systemTeal)
                .edgesIgnoringSafeArea(.all)
            
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .offset(y: shouldFloatLogo ? -50: 0)
                .onAppear{
                    withAnimation(Animation.easeOut(duration: 1).repeatForever(autoreverses: true)){
                        shouldFloatLogo = true
                    }

                }
        }
        
    }
}

#if DEBUG
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View{
        SplashScreen()
    }
}
#endif
