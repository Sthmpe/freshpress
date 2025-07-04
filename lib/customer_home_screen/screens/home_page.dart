import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freshpress/bloc/carousel_cubit.dart';
import 'package:freshpress/common/data/mock_agents.dart';
import 'package:freshpress/customer_home_screen/widgets/home/agent_container.dart';
import 'package:freshpress/customer_home_screen/widgets/home/home_appbar.dart';
import 'package:freshpress/customer_home_screen/widgets/home/promotional_banner.dart';
import 'package:freshpress/customer_home_screen/widgets/home/search_container.dart';
import 'package:freshpress/customer_home_screen/widgets/home/section_header.dart';
import 'package:freshpress/customer_home_screen/widgets/home/suggestion.dart';
import 'package:freshpress/util/constants/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> suggestions = [
    "Wash and fold",
    "Dry cleaning",
    "Iron only",
    "Pick up and delivery",
    "Stain removal",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocBuilder<CarouselCubit, int>(
            builder: (context, currentIndex) {
              return Column(
                children: [
                  HomeAppbar(),
                  SearchContainer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 12),
                    child: SizedBox(
                      height: 28,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: suggestions.length,
                        itemBuilder: (context, index) {
                          return Suggestions(suggestion: suggestions[index]);
                        },
                      ),
                    ),
                  ),
                  PromotionalBanner(),
                  SectionHeader(
                    title: "Most Frequently Used",
                    buttonText: "",
                    onTap: () {
                      // Handle see all action
                    },
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 148,
                      autoPlay: false,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      
                      enlargeFactor: 1,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        context.read<CarouselCubit>().changePage(index);
                      },
                    ),
                    items:
                        agents
                            .take(3)
                            .map(
                              (agent) => SingleChildScrollView(
                                physics: NeverScrollableScrollPhysics(),
                                child: AgentContainer(
                                  businessName: agent.businessName,
                                  profileImage: agent.profileImage,
                                  location: agent.location,
                                  ranking: agent.ranking,
                                  charges: agent.charge,
                                ),
                              ),
                            ).toList(),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        agents.asMap().entries.take(3).map((entry) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            width: currentIndex == entry.key ? 24 : 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color:
                                  currentIndex == entry.key
                                      ? FreshPressAppColors.primary
                                      : Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          );
                        }).toList(),
                  ),
                  SectionHeader(
                    title: "Top Rated Agents",
                    buttonText: "See All",
                    onTap: () {
                      // Handle see all action
                    },
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // if it's inside a scrollable parent
                    children:
                        agents
                            .take(5)
                            .map(
                              (agent) => AgentContainer(
                                businessName: agent.businessName,
                                profileImage: agent.profileImage,
                                location: agent.location,
                                ranking: agent.ranking,
                                charges: agent.charge,
                              ),
                            )
                            .toList(),
                  ),
                  // ...agents.map((agent) => AgentContainer(
                  //   businessName: agent.businessName,
                  //   profileImage: agent.profileImage,
                  //   location: agent.location,
                  //   ranking: agent.ranking,
                  //   charges: agent.charge, // Assuming charges is a property in your agent model
                  // )),
                  // ListView.builder(
                  //   itemCount: agents.length,
                  //   shrinkWrap: true, // so it fits inside SingleChildScrollView
                  //   physics: NeverScrollableScrollPhysics(), // so scroll doesn’t conflict
                  //   itemBuilder:(context, index) {
                  //     final agent = agents[index];
                  //     return AgentContainer(
                  //       businessName: agent.businessName,
                  //       profileImage: agent.profileImage,
                  //       location: agent.location,
                  //       ranking: agent.ranking,
                  //       charges: agent.charge,
                  //     );
                  //   }
                  // )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
