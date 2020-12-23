import SwiftUI

// MARK: - Preview
struct PostSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        PostSubView(post: PostModel.placeholder, showHeaderAndFooter: true)//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// ™•••••••••••••••••••••••••••• [ STRUCT ] ••••••••••••••••••••••••••••™

// MARK: -∆  STRUCT •••••••••
struct PostSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    @State var post: PostModel
    //™•••••••••••••••••••••••••••••••••••«
    var showHeaderAndFooter: Bool
    var frameWidth: CGFloat = FULL_UI_SCREEN_WIDTH
    var frameHeight: CGFloat = 450
    ///™«««««««««««««««««««««««««««««««««««
}// MARK: END OF: PostSubView

/// ™•••••••••••••••••••••••••••• ([ extension(body) ]) ••••••••••••••••••••••••••••™

extension PostSubView {
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        //.............................
        VStack(alignment: .center, spacing: nil, content: {
            
            // MARK: -∆  headerComponent •••••••••
            if showHeaderAndFooter {
                //∆..........
                headerComponent
                //∆..........
            }
            
            // MARK: -∆  Post-Image •••••••••
            Image("heroes6")
                .resizable()
                .imageFormattedFrame(.fit, w: frameWidth, h: frameHeight)
            
            // MARK: -∆  footerComponent •••••••••
            if showHeaderAndFooter {
                //∆..........
                footerComponent
            }
            
            
        })// MARK: ||END__PARENT-VSTACK||
        
        //.............................
        
    }// MARK: |_End Of body_|
    
    
}// MARK: END OF: PostSubView

/// ™•••••••••••••••••••••••••••• ([ extension(Views+SubViews) ]) ••••••••••••••••••••••••••••™

extension PostSubView {
    
    /// @------------------- [Computed some-View Properties] -------------------
    
    // MARK: -∆  USERNAME-COMPONENT •••••••••
    var usernameComponent: some View {
        //∆..........
        Text(post.username)
            .font(.callout)
            .fontWeight(.medium)
            .foregroundColor(.primary)
    }
    /// ∆ END OF: usernameComponent
    
    // MARK: -∆  FOOTER-SFSYMBOLS-COMPONENT •••••••••
    var footerSFSymbolsComponent: some View {
        //∆..........
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
    }
    /// ∆ END OF: footerSFSymbolsComponent
    
    
    // MARK: -∆  HEADER-COMPONENT •••••••••
    var headerComponent: some View {
        //∆..........
        HStack {
            // MARK: -∆ Post Profile-Image •••••••••
            Image("heroes6")
                .circleImageFrame(aspectR: .fill, frameW: 30, frameH: 30)
            
            // MARK: -∆  User-Name •••••••••
            usernameComponent// Distinguishes from dark & light mode
            
            ///ººº..................................•••
            Spacer(minLength: 0) // Spaced Horizontally
            ///ººº..................................•••
            
            // MARK: -∆  SFSYMBOL-ellipsis •••••••••
            Image(systemName: "ellipsis")
                .font(.headline)
            
        }// MARK: END OF:--> HStack
        .padding(.all, 6)
        //∆ HANGER ™👕™ .................
    }
    /// ∆ END OF: headerComponent
    
    // MARK: -∆  footerComponent •••••••••
    var footerComponent: some View {
        //∆..........
        VStack(alignment: .center, spacing: nil, content: {
                
                // MARK: -∆  Footer •••••••••
                footerSFSymbolsComponent
                
                
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
        })
    }
    /// ∆ END OF: headerComponent
    
}// MARK: END OF: PostSubView
