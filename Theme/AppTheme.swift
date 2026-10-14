import SwiftUI

enum AppTheme {

    // MARK: - Colours

    static let backgroundColor =
        Color.black

    static let surfaceColor =
        Color.white.opacity(0.08)

    static let elevatedSurfaceColor =
        Color.white.opacity(0.14)

    static let accentColor =
        Color.blue

    static let primaryTextColor =
        Color.white

    static let secondaryTextColor =
        Color.white.opacity(0.72)


    // MARK: - Corner Radius

    static let cardCornerRadius:
        CGFloat = 28

    static let largeCornerRadius:
        CGFloat = 36


    // MARK: - Spacing

    static let horizontalPadding:
        CGFloat = 70

    static let sectionSpacing:
        CGFloat = 48

    static let cardSpacing:
        CGFloat = 28


    // MARK: - Card Sizes

    static let standardCardWidth:
        CGFloat = 360

    static let standardCardHeight:
        CGFloat = 230

    static let featuredCardHeight:
        CGFloat = 360
}


// MARK: - Standard TV Card Modifier

struct TVCardModifier: ViewModifier {

    func body(
        content: Content
    ) -> some View {

        content
            .padding(24)
            .background(

                RoundedRectangle(
                    cornerRadius:
                        AppTheme.cardCornerRadius
                )
                .fill(
                    AppTheme.surfaceColor
                )
            )
            .overlay(

                RoundedRectangle(
                    cornerRadius:
                        AppTheme.cardCornerRadius
                )
                .stroke(
                    Color.white.opacity(0.08),
                    lineWidth: 1
                )
            )
    }
}


extension View {

    func tvCardStyle()
        -> some View {

        modifier(
            TVCardModifier()
        )
    }
}


// MARK: - Section Title Modifier

struct TVSectionTitleModifier:
    ViewModifier {

    func body(
        content: Content
    ) -> some View {

        content
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(
                AppTheme.primaryTextColor
            )
    }
}


extension View {

    func tvSectionTitleStyle()
        -> some View {

        modifier(
            TVSectionTitleModifier()
        )
    }
}
