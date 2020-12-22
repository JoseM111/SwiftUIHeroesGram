import SwiftUI

// MARK: - Preview
struct BrowseView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            BrowseView()
        }
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct BrowseView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    
    //∆..............................
    
    
    var body: some View {
        
        //.............................
        ScrollView(.vertical, showsIndicators: false, content: {
            
            CarouselSubView()
            
            
            
        })// MARK: ||END__PARENT-ScrollView||
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
        //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END OF: BrowseView

/*©-----------------------------------------©*/

