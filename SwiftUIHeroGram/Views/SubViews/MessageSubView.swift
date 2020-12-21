import SwiftUI

// MARK: - Preview
struct MessageSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MessageSubView(comment: CommentModel.placeholder)//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct MessageSubView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var comment: CommentModel
    //∆..............................
    
    
    var body: some View {
        
        //.............................
        HStack(alignment: .center, spacing: nil, content: {
            
            // MARK: -∆  Profile-Image •••••••••
            Image("hood-thanos")
                .circleImageFrame(aspectR: .fill, frameW: 40, frameH: 40)
                .shadow(color: Color.black.opacity(0.75),
                        radius: 5, x: 0.0, y: 0.0)
            
            
            VStack(alignment: .leading, spacing: 4) {
                
                // MARK: -∆  User-Name •••••••••
                Text("@\(comment.username)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .shadow(color: Color.black.opacity(0.25),
                            radius: 1, x: 3.0, y: 3.0)
                
                // MARK: -∆  Chat-Text •••••••••
                Text(comment.content)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.primary)
                    .padding(.all, 12)
                    .background(Color.skyGray)
                    .cornerRadius(10)
                
            }/// ∆ END OF: HStack
            
            
            ///ººº..................................•••
            Spacer(minLength: 0) // Spaced Horizontally
            ///ººº..................................•••
        })// MARK: ||END__PARENT-HSTACK||
        .padding(.leading, 4)
        //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END OF: MessageSubView

/*©-----------------------------------------©*/

