import SwiftUI

struct DetailView: View {

    let item: CampusContent


    var body: some View {

        ScrollView {

            VStack(
                alignment: .leading,
                spacing: 40
            ) {

                // MARK: - Header

                HStack(
                    alignment: .top,
                    spacing: 36
                ) {

                    Image(
                        systemName: item.symbolName
                    )
                    .font(
                        .system(size: 72)
                    )
                    .foregroundStyle(
                        AppTheme.accentColor
                    )
                    .frame(
                        width: 150,
                        height: 150
                    )
                    .background(

                        RoundedRectangle(
                            cornerRadius:
                                AppTheme.largeCornerRadius
                        )
                        .fill(
                            AppTheme.surfaceColor
                        )
                    )
                    .accessibilityHidden(true)


                    VStack(
                        alignment: .leading,
                        spacing: 14
                    ) {

                        Text(
                            item.type
                                .rawValue
                                .uppercased()
                        )
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(
                            AppTheme.accentColor
                        )


                        Text(item.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(
                                AppTheme.primaryTextColor
                            )


                        Text(item.subtitle)
                            .font(.title3)
                            .foregroundStyle(
                                AppTheme.secondaryTextColor
                            )
                    }


                    Spacer()
                }


                // MARK: - Information

                HStack(spacing: 30) {

                    if let dateText =
                        item.dateText {

                        DetailInfoCard(
                            title: "Date",
                            value: dateText,
                            icon: "calendar"
                        )
                    }


                    if let location =
                        item.location {

                        DetailInfoCard(
                            title: "Location",
                            value: location,
                            icon: "location.fill"
                        )
                    }
                }


                // MARK: - Description

                VStack(
                    alignment: .leading,
                    spacing: 18
                ) {

                    Text("About")
                        .tvSectionTitleStyle()


                    Text(item.description)
                        .font(.title3)
                        .foregroundStyle(
                            AppTheme.secondaryTextColor
                        )
                        .lineSpacing(8)
                }
                .tvCardStyle()
            }
            .padding(
                .horizontal,
                AppTheme.horizontalPadding
            )
            .padding(.vertical, 50)
        }
        .background(
            AppTheme.backgroundColor
                .ignoresSafeArea()
        )
        .navigationTitle(
            item.type.rawValue
        )
        .accessibilityElement(
            children: .contain
        )
    }
}


// MARK: - Detail Information Card

private struct DetailInfoCard: View {

    let title: String
    let value: String
    let icon: String


    var body: some View {

        HStack(spacing: 18) {

            Image(
                systemName: icon
            )
            .font(.system(size: 30))
            .foregroundStyle(
                AppTheme.accentColor
            )
            .accessibilityHidden(true)


            VStack(
                alignment: .leading,
                spacing: 6
            ) {

                Text(title)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )


                Text(value)
                    .font(.headline)
                    .foregroundStyle(
                        AppTheme.primaryTextColor
                    )
            }
        }
        .padding(24)
        .frame(
            minWidth: 300,
            alignment: .leading
        )
        .background(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.cardCornerRadius
            )
            .fill(
                AppTheme.surfaceColor
            )
        )
        .accessibilityElement(
            children: .combine
        )
        .accessibilityLabel(
            "\(title), \(value)"
        )
    }
}
