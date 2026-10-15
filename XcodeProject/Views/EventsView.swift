import SwiftUI

struct EventsView: View {

    private let events =
        SampleContent.events


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
                            systemName: "calendar"
                        )
                        .font(
                            .system(size: 38)
                        )
                        .foregroundStyle(
                            AppTheme.accentColor
                        )
                        .accessibilityHidden(true)


                        Text("Upcoming Events")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(
                                AppTheme.primaryTextColor
                            )
                    }


                    Text(
                        "Discover upcoming activities, sessions and university events."
                    )
                    .font(.title3)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )
                }


                // MARK: - Event Cards

                ScrollView(
                    .horizontal,
                    showsIndicators: false
                ) {

                    LazyHStack(
                        spacing:
                            AppTheme.cardSpacing
                    ) {

                        ForEach(events) { item in

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


                // MARK: - Event Information

                HStack(spacing: 18) {

                    Image(
                        systemName:
                            "calendar.badge.clock"
                    )
                    .font(.title2)
                    .foregroundStyle(
                        AppTheme.accentColor
                    )
                    .accessibilityHidden(true)


                    Text(
                        "Browse upcoming events using the Apple TV remote and select an event to view the date, location and full details."
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
            "Events"
        )
    }
}
