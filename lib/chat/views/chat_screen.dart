import 'package:call_test_agora/chat/views/video_call_screen.dart';
import 'package:call_test_agora/chat/views/widgets/message_bubble.dart';
import 'package:call_test_agora/chat/views/widgets/message_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chat'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const VideoCallScreen()),
            ),
            icon: const Icon(Icons.video_camera_front),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (_, index) => _messages[index],
                separatorBuilder: (_, __) => const SizedBox(
                      height: 16,
                    )),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    profileImageUrl:
        'https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8',
    message: 'this could be good if app ska visas de som är inne',
    date: 'Apr 22, 8:59 PM',
  ),
  MessageBubble(
    message: 'Yes we can se what would be implmentade',
    date: 'Apr 22, 8:59 PM',
  ),
  MessageBubble(
    profileImageUrl:
        'https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8',
    message: 'I want to share this ',
    date: 'Apr 22, 8:59 PM',
  ),
];
