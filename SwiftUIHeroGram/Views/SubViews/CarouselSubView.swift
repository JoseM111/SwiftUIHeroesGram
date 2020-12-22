import SwiftUI

// MARK: - Preview
struct CarouselSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CarouselSubView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct CarouselSubView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var selection: Int = 1
    @State var timerAdded: Bool = false
    let maxCount: Int = 10
    //∆..............................
    
    var body: some View {
        
        //.............................
        TabView(selection: $selection,
                content:  {
                    //∆..........
                    ForEach(1..<maxCount, id: \.self) { count in
                        //∆..........
                        Image("heroes\(count)")
                            .imageFormattedFrame(.fit, w: FULL_UI_SCREEN_WIDTH, h: 400)
                            .tag(count)
                    }
                    
                    
                })// MARK: ||END__PARENT-TabView||
            .tabViewStyle(PageTabViewStyle())
//            .background(Color.netflixRed)
            .animation(.default)
            // MARK: - onAppear
            //--|............................................
            .onAppear(perform: {
                //∆..........
                /// ∆ Runs the carousel every `4` seconds.
                ///   if timer added is not false run the function
                if !timerAdded { addTimer() }
            })
            //--|............................................
        
            //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END OF: CarouselSubView

// MARK: -∆  CarouselSubView •••••••••
extension CarouselSubView {
    
    func addTimer() -> Void {
        //∆..........
        timerAdded = true // When addTimer() is called
        
        let timer = Timer.scheduledTimer(withTimeInterval: 4, repeats: true) { timer in
            //∆..........
            if selection == (maxCount - 1) {
                selection = 1
            } else { selection += 1 }
        }
        
        timer.fire()// To make sure it starts
    }
}

