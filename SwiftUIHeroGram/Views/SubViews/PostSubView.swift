import SwiftUI

// MARK: - Preview
struct PostSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        PostSubView(post: PostModel.placeholder)//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct PostSubView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var post: PostModel
    //∆..............................
    
    
    
    var body: some View {
        
        //.............................
        VStack(alignment: .center, spacing: nil, content: {
            
            HStack {
                // MARK: -∆  Image Black-Panther •••••••••
                Image("black-panther")
                    .circleImageFrame(aspectR: .fill, frameW: 30, frameH: 30)
                
                // MARK: -∆  User-Name •••••••••
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)// Distinguishes from dark & light mode
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
                
                // MARK: -∆  SFSYMBOL-ellipsis •••••••••
                Image(systemName: "ellipsis")
                    .font(.headline)
                
            }// MARK: END OF:--> HStack
            .padding(.all, 6)
            //∆ HANGER ™👕™ .................
            
            // MARK: -∆  Post-Image •••••••••
            Image("black-panther")
                .renderModeImage(
                    renderMode: .original,
                    aspectRCGSize: CGSize(
                        width: FULL_UI_SCREEN_WIDTH, height: 600)
                )
            
            // MARK: -∆  Footer •••••••••
            HStack(alignment: .center, spacing: 20) {
                
                // MARK: -∆  Button(Like) •••••••••
                Image(systemName: "heart")
                
                // MARK: -∆  Button(Comments) •••••••••
                NavigationLink(
                    destination: CommentsView(),
                    label: { Image(systemName: "bubble.middle.bottom") }
                )
                
                // MARK: -∆  Button(Share) •••••••••
                Image(systemName: "paperplane")
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
            }// ∆ END OF: HStack
            .padding(.all, 6)
            .font(.title3)
            .foregroundColor(.primary)
            //∆ HANGER ™👕™ .................
            
            
            // MARK: -∆  Caption •••••••••
            if let caption = post.caption {
                //∆..........
                HStack {
                    Text(caption)
                    
                    ///ººº..................................•••
                    Spacer(minLength: 0)    // Spaced Horizontally
                    ///ººº..................................•••
                }// ∆ END OF: HStack
                .padding(.all, 12)
                .fixedSize(horizontal: false, vertical: true)
                //∆ HANGER ™👕™ .................
                
            }/// ∆ END OF: if-let
            
        })// MARK: ||END__PARENT-VSTACK||
        
        //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END: [STRUCT]

/*©-----------------------------------------©*/

