import SwiftUI

struct FocusCard: View {

    let item: CampusContent

    @Environment(\.isFocused)
    private var isFocused


    var body: some View {

        VStack(
            alignment: .leading,
            spacing: 18
        ) {

            // MARK: - Icon

            Image(
                systemName: item.symbolName
            )
            .font(
                .system(size: 46)
            )
            .foregroundStyle(
                isFocused
                ? .white
                : AppTheme.accentColor
            )
            .accessibilityHidden(true)


            Spacer()


            // MARK: - Type

            Text(
                item.type.rawValue.uppercased()
            )
            .font(.caption)
            .fontWeight(.bold)
            .foregroundStyle(
                isFocused
                ? Color.white.opacity(0.85)
                : AppTheme.secondaryTextColor
            )


            // MARK: - Title

            Text(item.title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(
                    AppTheme.primaryTextColor
                )
                .lineLimit(2)


            // MARK: - Subtitle

            Text(item.subtitle)
                .font(.subheadline)
                .foregroundStyle(
                    isFocused
                    ? Color.white.opacity(0.90)
                    : AppTheme.secondaryTextColor
                )
                .lineLimit(2)


            // MARK: - Additional Information

            if let dateText = item.dateText {

                Label(
                    dateText,
                    systemImage: "calendar"
                )
                .font(.caption)
                .foregroundStyle(
                    AppTheme.secondaryTextColor
                )
            }
        }
        .padding(26)
        .frame(
            width: AppTheme.standardCardWidth,
            height: AppTheme.standardCardHeight,
            alignment: .leading
        )
        .background(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.cardCornerRadius
            )
            .fill(
                isFocused
                ? AppTheme.elevatedSurfaceColor
                : AppTheme.surfaceColor
            )
        )
        .overlay(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.cardCornerRadius
            )
            .stroke(
                isFocused
                ? AppTheme.accentColor
                : Color.white.opacity(0.08),
                lineWidth:
                    isFocused ? 4 : 1
            )
        )
        .scaleEffect(
            isFocused ? 1.06 : 1.0
        )
        .shadow(
            color:
                Color.black.opacity(
                    isFocused ? 0.45 : 0.15
                ),
            radius:
                isFocused ? 20 : 8,
            y:
                isFocused ? 10 : 4
        )
        .animation(
            .easeOut(duration: 0.18),
            value: isFocused
        )
        .accessibilityElement(
            children: .combine
        )
        .accessibilityLabel(
            "\(item.type.rawValue), \(item.title), \(item.subtitle)"
        )
    }
}
