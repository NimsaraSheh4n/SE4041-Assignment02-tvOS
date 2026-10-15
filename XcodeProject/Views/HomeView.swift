import SwiftUI

struct HomeView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(
                    alignment: .leading,
                    spacing: AppTheme.sectionSpacing
                ) {

                    // MARK: - Header

                    VStack(
                        alignment: .leading,
                        spacing: 10
                    ) {

                        Text("CampusView TV")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(
                                AppTheme.primaryTextColor
                            )

                        Text(
                            "Campus announcements, events and information in one place."
                        )
                        .font(.title3)
                        .foregroundStyle(
                            AppTheme.secondaryTextColor
                        )
                    }


                    // MARK: - Featured Content

                    if let featured =
                        SampleContent.featuredContent {

                        VStack(
                            alignment: .leading,
                            spacing: 20
                        ) {

                            Text("Featured")
                                .tvSectionTitleStyle()


                            NavigationLink {

                                DetailView(
                                    item: featured
                                )

                            } label: {

                                FeaturedContentCard(
                                    item: featured
                                )
                            }
                            .buttonStyle(.plain)
                        }
                    }


                    // MARK: - Quick Access

                    VStack(
                        alignment: .leading,
                        spacing: 22
                    ) {

                        Text("Explore")
                            .tvSectionTitleStyle()


                        HStack(spacing: 30) {

                            NavigationLink {

                                AnnouncementsView()

                            } label: {

                                HomeNavigationCard(
                                    title:
                                        "Announcements",
                                    subtitle:
                                        "Latest campus updates",
                                    icon:
                                        "megaphone.fill"
                                )
                            }
                            .buttonStyle(.plain)


                            NavigationLink {

                                EventsView()

                            } label: {

                                HomeNavigationCard(
                                    title:
                                        "Events",
                                    subtitle:
                                        "Upcoming activities",
                                    icon:
                                        "calendar"
                                )
                            }
                            .buttonStyle(.plain)


                            NavigationLink {

                                FacilitiesView()

                            } label: {

                                HomeNavigationCard(
                                    title:
                                        "Facilities",
                                    subtitle:
                                        "Campus services",
                                    icon:
                                        "building.2.fill"
                                )
                            }
                            .buttonStyle(.plain)
                        }
                    }


                    // MARK: - Upcoming Events

                    VStack(
                        alignment: .leading,
                        spacing: 20
                    ) {

                        HStack {

                            Text("Upcoming Events")
                                .tvSectionTitleStyle()

                            Spacer()

                            NavigationLink(
                                "View All"
                            ) {

                                EventsView()
                            }
                            .font(.headline)
                        }


                        ScrollView(
                            .horizontal,
                            showsIndicators: false
                        ) {

                            LazyHStack(
                                spacing:
                                    AppTheme.cardSpacing
                            ) {

                                ForEach(
                                    SampleContent.events
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
                                }
                            }
                            .padding(.vertical, 20)
                        }
                    }


                    // MARK: - Campus Facilities

                    VStack(
                        alignment: .leading,
                        spacing: 20
                    ) {

                        HStack {

                            Text("Campus Facilities")
                                .tvSectionTitleStyle()

                            Spacer()

                            NavigationLink(
                                "View All"
                            ) {

                                FacilitiesView()
                            }
                            .font(.headline)
                        }


                        ScrollView(
                            .horizontal,
                            showsIndicators: false
                        ) {

                            LazyHStack(
                                spacing:
                                    AppTheme.cardSpacing
                            ) {

                                ForEach(
                                    SampleContent.facilities
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
                                }
                            }
                            .padding(.vertical, 20)
                        }
                    }
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
        }
    }
}


// MARK: - Featured Content Card

private struct FeaturedContentCard: View {

    let item: CampusContent

    @Environment(\.isFocused)
    private var isFocused


    var body: some View {

        HStack(spacing: 40) {

            Image(
                systemName: item.symbolName
            )
            .font(
                .system(size: 76)
            )
            .foregroundStyle(.white)
            .frame(
                width: 180,
                height: 180
            )
            .background(

                RoundedRectangle(
                    cornerRadius:
                        AppTheme.largeCornerRadius
                )
                .fill(
                    AppTheme.accentColor
                )
            )
            .accessibilityHidden(true)


            VStack(
                alignment: .leading,
                spacing: 16
            ) {

                Text(
                    "FEATURED \(item.type.rawValue.uppercased())"
                )
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(
                    AppTheme.accentColor
                )


                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)


                Text(item.subtitle)
                    .font(.title3)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )


                if let dateText =
                    item.dateText {

                    Label(
                        dateText,
                        systemImage:
                            "calendar"
                    )
                    .font(.headline)
                    .foregroundStyle(
                        AppTheme.secondaryTextColor
                    )
                }
            }


            Spacer()
        }
        .padding(40)
        .frame(
            maxWidth: .infinity,
            minHeight:
                AppTheme.featuredCardHeight,
            alignment: .leading
        )
        .background(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.largeCornerRadius
            )
            .fill(
                isFocused
                ? AppTheme
                    .elevatedSurfaceColor
                : AppTheme.surfaceColor
            )
        )
        .overlay(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.largeCornerRadius
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
            isFocused ? 1.02 : 1.0
        )
        .animation(
            .easeOut(duration: 0.18),
            value: isFocused
        )
        .accessibilityElement(
            children: .combine
        )
        .accessibilityLabel(
            "Featured \(item.type.rawValue), \(item.title)"
        )
    }
}


// MARK: - Home Navigation Card

private struct HomeNavigationCard: View {

    let title: String
    let subtitle: String
    let icon: String

    @Environment(\.isFocused)
    private var isFocused


    var body: some View {

        VStack(
            alignment: .leading,
            spacing: 16
        ) {

            Image(
                systemName: icon
            )
            .font(.system(size: 42))
            .foregroundStyle(
                isFocused
                ? .white
                : AppTheme.accentColor
            )
            .accessibilityHidden(true)


            Spacer()


            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)


            Text(subtitle)
                .font(.headline)
                .foregroundStyle(
                    AppTheme.secondaryTextColor
                )
        }
        .padding(28)
        .frame(
            maxWidth: .infinity,
            minHeight: 210,
            alignment: .leading
        )
        .background(

            RoundedRectangle(
                cornerRadius:
                    AppTheme.cardCornerRadius
            )
            .fill(
                isFocused
                ? AppTheme
                    .elevatedSurfaceColor
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
            isFocused ? 1.05 : 1.0
        )
        .animation(
            .easeOut(duration: 0.18),
            value: isFocused
        )
        .accessibilityElement(
            children: .combine
        )
        .accessibilityLabel(
            "\(title), \(subtitle)"
        )
    }
}
