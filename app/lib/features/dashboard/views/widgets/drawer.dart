import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';
import 'package:smart_gpt/core/services/extensions.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/gap.dart';
import 'package:smart_gpt/features/auth/providers/auth_provider.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';
import 'package:smart_gpt/features/chat/models/chat_model.dart';
import 'package:smart_gpt/features/chat/providers/chat_history_provider.dart';

class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({super.key});

  @override
  ConsumerState<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<AppDrawer> {
  final TextEditingController searchController = TextEditingController();
  final whiteColor = const Color(0xffe6e6e6);
  final Map<String, List<ChatHistory>> categorizedHistory = {};

  void categorizeHistory(List<ChatHistory> data) {
    categorizedHistory.clear();
    for (var i = 0; i < data.length; i++) {
      if (DateTime.now().difference(data[i].createdAt!).inDays < 1) {
        if (categorizedHistory.containsKey('Today')) {
          categorizedHistory['Today']!.add(data[i]);
        } else {
          categorizedHistory.addAll({
            'Today': [data[i]],
          });
        }
      } else if (DateTime.now().difference(data[i].createdAt!).inDays < 2) {
        if (categorizedHistory.containsKey('Yesterday')) {
          categorizedHistory['Yesterday']!.add(data[i]);
        } else {
          categorizedHistory.addAll({
            'Yesterday': [data[i]],
          });
        }
      } else if (DateTime.now().difference(data[i].createdAt!).inDays < 7) {
        if (categorizedHistory.containsKey('Previous 7 days')) {
          categorizedHistory['Previous 7 days']!.add(data[i]);
        } else {
          categorizedHistory.addAll({
            'Previous 7 days': [data[i]],
          });
        }
      } else if (DateTime.now().difference(data[i].createdAt!).inDays < 365) {
        if (categorizedHistory
            .containsKey(DateFormat('MMMM').format(data[i].createdAt!))) {
          categorizedHistory[DateFormat('MMMM').format(data[i].createdAt!)]!
              .add(data[i]);
        } else {
          categorizedHistory.addAll({
            DateFormat('MMMM').format(data[i].createdAt!): [data[i]],
          });
        }
      } else {
        if (categorizedHistory
            .containsKey(data[i].createdAt!.year.toString())) {
          categorizedHistory[data[i].createdAt!.year.toString()]!.add(data[i]);
        } else {
          categorizedHistory.addAll({
            '${data[i].createdAt!.year}': [data[i]],
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final histories = ref.watch(chatHistoryProvider);
    final user = ref.watch(userDetailProvider);
    return histories.onSuccess(
      (data) {
        categorizeHistory(data);
        return Drawer(
          backgroundColor: UIColors.backgroundPrimary,
          child: SafeArea(
            child: user.onSuccess((data) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: ListView(
                      padding: const EdgeInsets.only(bottom: 60),
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: TextField(
                            controller: searchController,
                            onTap: () {},
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 15),
                              hintText: 'Search',
                              hintStyle: TextStyle(color: whiteColor),
                              prefixIcon: const Icon(Icons.search),
                              fillColor: const Color(0xff242424),
                              filled: true,
                              prefixIconColor: whiteColor,
                              disabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                borderSide: BorderSide.none,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const VGap(20),
                        ListTile(
                          iconColor: Colors.white,
                          titleTextStyle: TextStyle(color: whiteColor),
                          title: const Text(
                            'SmartGPT',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          leading: Image.asset(
                            'assets/logo.png',
                            width: 24,
                          ),
                        ),
                        ListTile(
                          iconColor: Colors.white,
                          titleTextStyle: TextStyle(color: whiteColor),
                          title: const Text(
                            'Explore GPTs',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          leading: const Icon(Ionicons.apps),
                        ),
                        ...categorizedHistory.entries.map(
                          (chat) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Divider(
                                    height: 0.5,
                                    color: Color(0xff565656),
                                  ),
                                ),
                                ListTile(
                                  titleTextStyle: TextStyle(color: whiteColor),
                                  dense: true,
                                  title: Text(
                                    chat.key,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                ...chat.value.map((conversation) {
                                  return ListTile(
                                    iconColor: Colors.white,
                                    titleTextStyle:
                                        TextStyle(color: whiteColor),
                                    title: Text(
                                      conversation.prompt ?? 'No Title',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: () {
                                      ref
                                          .read(
                                            currentMessageIdProvider.notifier,
                                          )
                                          .state = conversation.typeId;
                                      final chats = <Chat>[
                                        Chat(
                                          user: data?.user?.name ?? 'User',
                                          message: conversation.prompt!,
                                        ),
                                        Chat(
                                          user: 'SmartGPT',
                                          message: conversation.response!,
                                        ),
                                      ];
                                      for (final followup
                                          in conversation.followUp!) {
                                        chats
                                          ..add(
                                            Chat(
                                              user: data?.user?.name ?? 'User',
                                              message: followup.prompt!,
                                            ),
                                          )
                                          ..add(
                                            Chat(
                                              user: 'SmartGPT',
                                              message: followup.response!,
                                            ),
                                          );
                                      }
                                      ref
                                          .read(chatListProvider.notifier)
                                          .state = chats;
                                      Navigator.pop(context);
                                    },
                                  );
                                }).toList() as List<Widget>,
                              ],
                            );
                          },
                        ).toList() as List<Widget>,
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 60,
                      width: mediaWidth(context),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      color: const Color(0xff0D0D0D),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                            ),
                          ),
                          const HGap(10),
                          Text(
                            data?.user?.name ?? 'User',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
