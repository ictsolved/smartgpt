import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';
import 'package:smart_gpt/core/services/extensions.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/gap.dart';
import 'package:smart_gpt/features/auth/providers/auth_provider.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';
import 'package:smart_gpt/features/chat/models/chat_model.dart';
import 'package:smart_gpt/features/chat/providers/chat_completion_provider.dart';
import 'package:smart_gpt/features/chat/providers/chat_history_provider.dart';
import 'package:smart_gpt/features/dashboard/views/widgets/chat_message_widget.dart';
import 'package:smart_gpt/features/dashboard/views/widgets/drawer.dart';
import 'package:smart_gpt/features/dashboard/views/widgets/home_popup_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final Color backgroundColor = const Color(0xff080808);
  bool buttonsVisible = true;
  final TextEditingController _prompt = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  ChatHistory? chatHistory;

  void _scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  List<Map<String, String>> suggestions = [
    {
      'title': 'Write a message',
      'body': 'to HR Manager asking for a sick leave',
    },
    {
      'title': 'Write a text',
      'body': 'asking a friend to be my plus-one at a wedding',
    },
    {
      'title': 'Tell me a fun fact',
      'body': 'about the roman empire',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final chats = ref.watch(chatListProvider);
    final currenMessageId = ref.watch(currentMessageIdProvider);
    final user = ref.watch(userDetailProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: UIColors.white,
        actions: [
          IconButton(
            onPressed: currenMessageId == null
                ? null
                : () {
                    ref.read(currentMessageIdProvider.notifier).state = null;
                    ref.read(chatListProvider.notifier).state = [];
                  },
            icon: const Icon(Icons.post_add),
          ),
          const HomePopupButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Builder(
          builder: (context) {
            return user.onSuccess((data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: chats.isEmpty
                        ? Center(
                            child: Image.asset(
                              'assets/logo.png',
                              width: 48,
                            ),
                          )
                        : ListView.builder(
                            controller: _scrollController,
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 2,
                            ),
                            itemCount: chats.length,
                            itemBuilder: (context, index) {
                              if (chats[index].user != 'SmartGPT') {
                                return ChatMessage(
                                  icon: const CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    child: Icon(
                                      Icons.person,
                                    ),
                                  ),
                                  user: chats[index].user,
                                  message: chats[index].message,
                                );
                              } else {
                                return ChatMessage(
                                  icon: CircleAvatar(
                                    child: Image.asset('assets/logo.png'),
                                  ),
                                  user: 'SmartGPT',
                                  message: chats[index].message,
                                );
                              }
                            },
                          ),
                  ),
                  if (currenMessageId == null)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Row(
                          children: suggestions.map((e) {
                            return Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    chats.add(
                                      Chat(
                                        message: "${e['title']} ${e['body']}",
                                        user: data?.user?.name ?? 'User',
                                      ),
                                    );

                                    setState(() {
                                      Future<void>.delayed(
                                        const Duration(
                                          milliseconds: 400,
                                        ),
                                      ).then((_) {
                                        _scrollDown();
                                      });
                                    });

                                    final res = await ref.read(
                                      chatCompletionProvider(
                                        ChatCompletion(
                                          message: "${e['title']} ${e['body']}",
                                          messageId: currenMessageId,
                                        ),
                                      ).future,
                                    );

                                    if (currenMessageId == null) {
                                      ref
                                          .read(
                                            currentMessageIdProvider.notifier,
                                          )
                                          .state = res.id;
                                    }

                                    chats.add(
                                      Chat(
                                        message: res.choices?.first.message
                                                ?.content ??
                                            '',
                                        user: 'SmartGPT',
                                      ),
                                    );

                                    _prompt.clear();

                                    setState(() {
                                      Future<void>.delayed(
                                        const Duration(milliseconds: 400),
                                      ).then((_) {
                                        _scrollDown();
                                      });
                                    });
                                  },
                                  child: Container(
                                    width: mediaWidth(context) - 60,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 14,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff181818),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title']!,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          e['body']!,
                                          maxLines: 1,
                                          style: const TextStyle(fontSize: 13),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const HGap(14),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      children: [
                        if (buttonsVisible) ...[
                          IconButton(
                            icon: const Icon(Ionicons.camera),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Ionicons.image_outline),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Ionicons.folder_outline),
                            onPressed: () {},
                          ),
                        ] else
                          GestureDetector(
                            onTap: () {
                              if (!buttonsVisible) {
                                setState(() {
                                  buttonsVisible = true;
                                });
                              }
                            },
                            child: Container(
                              height: 38,
                              width: 38,
                              margin: const EdgeInsets.only(right: 7),
                              decoration: const BoxDecoration(
                                color: Color(0xff666666),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.add),
                            ),
                          ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            height: 42,
                            child: TextField(
                              controller: _prompt,
                              autofocus: true,
                              onTap: () {
                                if (buttonsVisible) {
                                  setState(() {
                                    buttonsVisible = false;
                                  });
                                }
                              },
                              onChanged: (value) {
                                if (buttonsVisible) {
                                  setState(() {
                                    buttonsVisible = false;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 15),
                                hintText: 'Message',
                                fillColor: const Color(0xff242424),
                                filled: true,
                                suffixIconColor: const Color(0xffe6e6e6),
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
                                suffixIcon: buttonsVisible
                                    ? IconButton(
                                        icon: const Icon(
                                          Ionicons.mic,
                                          color: Color(0xffe6e6e6),
                                          size: 19,
                                        ),
                                        onPressed: () {},
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        if (_prompt.text.isEmpty && buttonsVisible)
                          IconButton(
                            icon: const Icon(Ionicons.headset),
                            onPressed: () {},
                          )
                        else
                          GestureDetector(
                            onTap: () async {
                              final query = _prompt.text;
                              _prompt.clear();
                              if (query.isNotEmpty) {
                                chats.add(
                                  Chat(
                                    message: query,
                                    user: data?.user?.name ?? 'User',
                                  ),
                                );

                                setState(() {
                                  Future<void>.delayed(
                                    const Duration(milliseconds: 400),
                                  ).then((_) {
                                    _scrollDown();
                                  });
                                });

                                final res = await ref.read(
                                  chatCompletionProvider(
                                    ChatCompletion(
                                      message: query,
                                      messageId: currenMessageId,
                                    ),
                                  ).future,
                                );

                                if (currenMessageId == null) {
                                  ref
                                      .read(currentMessageIdProvider.notifier)
                                      .state = res.id;
                                }

                                chats.add(
                                  Chat(
                                    message:
                                        res.choices?.first.message?.content ??
                                            '',
                                    user: 'SmartGPT',
                                  ),
                                );

                                setState(() {
                                  Future<void>.delayed(
                                    const Duration(milliseconds: 400),
                                  ).then((_) {
                                    _scrollDown();
                                  });
                                });
                              }
                            },
                            child: Container(
                              height: 38,
                              width: 38,
                              margin: const EdgeInsets.only(left: 7),
                              decoration: const BoxDecoration(
                                color: Color(0xffE6E6E6),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Colors.black,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
