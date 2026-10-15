import SwiftUI

struct AnnouncementsView: View {

    private let announcements =
        SampleContent.announcements


    var body: some View {

        ScrollView {

            VStack(
                alignment: .leading,
                spacing: AppTheme.sectionSpacing
            ) {

                // MARK: - Header

                VStack(
                    alignment: .leading,
                    spacing: 12
                ) {

                    HStack(spacing: 16) {

                        Image(
                            systemName:
                                "megaphone.fill"
                        )
                        .font(
                            .system(size: 38)
                        )
                        .foregroundStyle(
                            AppTheme.accentColor
                        )
                        .accessibilityHidden(true)


                        Text("Announcements")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(
                                AppTheme.primaryTextColor
                            )
                    }


                    Text(
                        "Latest university notices and important campus updates."
                    )
                    .font(.title3)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )
                }


                // MARK: - Announcement Cards

                ScrollView(
                    .horizontal,
                    showsIndicators: false
                ) {

                    LazyHStack(
                        spacing:
                            AppTheme.cardSpacing
                    ) {

                        ForEach(
                            announcements
                        ) { item in

                            NavigationLink {

                                DetailView(
                                    item: item
                                )

                            } label: {

                                FocusCard(
                                    item: item
                                )
                            }
                            .buttonStyle(.plain)
                            .accessibilityLabel(
                                "Open \(item.title)"
                            )
                        }
                    }
                    .padding(.vertical, 20)
                }


                // MARK: - Information

                HStack(spacing: 18) {

                    Image(
                        systemName:
                            "info.circle.fill"
                    )
                    .font(.title2)
                    .foregroundStyle(
                        AppTheme.accentColor
                    )
                    .accessibilityHidden(true)


                    Text(
                        "Use the Apple TV remote to move between announcements and select an item to view more information."
                    )
                    .font(.headline)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )
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
            "Announcements"
        )
    }
}
