import SwiftUI

struct FacilitiesView: View {

    private let facilities =
        SampleContent.facilities


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
                            systemName: "building.2.fill"
                        )
                        .font(
                            .system(size: 38)
                        )
                        .foregroundStyle(
                            AppTheme.accentColor
                        )
                        .accessibilityHidden(true)


                        Text("Campus Facilities")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(
                                AppTheme.primaryTextColor
                            )
                    }


                    Text(
                        "Explore important campus facilities and student services."
                    )
                    .font(.title3)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )
                }


                // MARK: - Facility Cards

                ScrollView(
                    .horizontal,
                    showsIndicators: false
                ) {

                    LazyHStack(
                        spacing:
                            AppTheme.cardSpacing
                    ) {

                        ForEach(
                            facilities
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


                // MARK: - Facility Information

                HStack(spacing: 18) {

                    Image(
                        systemName:
                            "location.circle.fill"
                    )
                    .font(.title2)
                    .foregroundStyle(
                        AppTheme.accentColor
                    )
                    .accessibilityHidden(true)


                    Text(
                        "Browse campus facilities using the Apple TV remote and select a location to view detailed information."
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
            "Facilities"
        )
    }
}
