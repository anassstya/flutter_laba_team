import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A1209),
      ),
      home: const InboxScreen(),
    );
  }
}

class EmailItem {
  final String sender;
  final String subject;
  final String preview;
  final String time;
  final bool isUnread;
  final bool showStar;
  final Widget avatar;
  final Widget? badge;

  const EmailItem({
    required this.sender,
    required this.subject,
    required this.preview,
    required this.time,
    required this.isUnread,
    required this.showStar,
    required this.avatar,
    this.badge,
  });
}

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  bool _showTip = true;

  List<EmailItem> get _emails => [
        EmailItem(
          sender: 'GitLab',
          subject: 'gitlab.com sign-in from new location',
          preview: 'Someone signed in to your gitlab.com ac...',
          time: '10:14',
          isUnread: true,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: const Color(0xFF4A4A4A),
            child: const Icon(Icons.person, color: Colors.white70, size: 22),
          ),
        ),
        EmailItem(
          sender: 'Оповещения',
          subject: 'Оповещения о вакансиях Linked...',
          preview: '',
          time: '',
          isUnread: false,
          showStar: false,
          avatar: _CircleAvatar(
            backgroundColor: Colors.transparent,
            child: const Icon(Icons.info_outline,
                color: Color(0xFFE8823A), size: 26),
          ),
          badge: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFE8823A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              '75 нов.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        EmailItem(
          sender: 'App Store Connect',
          subject: 'The uploaded build for Diwo App has o...',
          preview: 'Hello, We noticed one or more issues wit...',
          time: '00:22',
          isUnread: true,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: Colors.black,
            child: const Icon(Icons.apple, color: Colors.white, size: 24),
          ),
        ),
        EmailItem(
          sender: 'LinkedIn',
          subject: 'Оповещение, связанное с безопасно...',
          preview: 'Оповещение, связанное с безопасност...',
          time: '9 апр.',
          isUnread: true,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: const Color(0xFF0A66C2),
            child: const Text(
              'in',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        EmailItem(
          sender: 'App Store Connect',
          subject: 'The uploaded build for Tel Med Doc ha...',
          preview: 'Hello, We noticed one or more issues wit...',
          time: '9 апр.',
          isUnread: true,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: Colors.black,
            child: const Icon(Icons.apple, color: Colors.white, size: 24),
          ),
        ),
        EmailItem(
          sender: 'App Store Connect',
          subject: 'The uploaded build for Pain Statistics...',
          preview: 'Hello, We noticed one or more issues wit...',
          time: '8 апр.',
          isUnread: true,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: Colors.black,
            child: const Icon(Icons.apple, color: Colors.white, size: 24),
          ),
        ),
        EmailItem(
          sender: 'LinkedIn',
          subject: 'Dominik Roszkowski и другие участн...',
          preview: 'Посмотрите, что происходит в вашей сети...',
          time: '7 апр.',
          isUnread: false,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: const Color(0xFF0A66C2),
            child: const Text(
              'in',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        EmailItem(
          sender: 'GitLab',
          subject: 'Your pipeline #1042 has succeeded',
          preview: 'Pipeline #1042 for branch main completed...',
          time: '6 апр.',
          isUnread: false,
          showStar: true,
          avatar: _CircleAvatar(
            backgroundColor: const Color(0xFF4A4A4A),
            child: const Icon(Icons.person, color: Colors.white70, size: 22),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1209),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _buildTopBar(),
                _buildSectionHeader(),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      if (_showTip) _buildTipBanner(),
                      ..._emails.map((e) => _buildEmailTile(e)),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
            _buildBottomBar(),
          ],
        ),
      ),
    );
  }


  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 8),
      child: Row(
        children: [
          const Icon(Icons.menu, color: Colors.white70, size: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2114),
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Поиск в почте',
                style: TextStyle(
                  color: Color(0xFF9E9E9E),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFF5A5A5A),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, color: Colors.white54, size: 22),
          ),
        ],
      ),
    );
  }


  Widget _buildSectionHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Несортированные',
          style: TextStyle(
            color: Colors.white.withOpacity(0.55),
            fontSize: 13,
          ),
        ),
      ),
    );
  }


  Widget _buildTipBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      color: const Color(0xFF261B0D),
      child: Row(
        children: [
          const Text('👆', style: TextStyle(fontSize: 22)),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Чтобы выбрать цепочку писем,\nнажмите на фото отправителя.',
              style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.4),
            ),
          ),
          TextButton(
            onPressed: () => setState(() => _showTip = false),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Скрыть',
              style: TextStyle(
                color: Color(0xFFE8823A),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildEmailTile(EmailItem email) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.white10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF2A1F0F), width: 0.5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 44, height: 44, child: email.avatar),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          email.sender,
                          style: TextStyle(
                            color: email.isUnread
                                ? Colors.white
                                : Colors.white70,
                            fontWeight: email.isUnread
                                ? FontWeight.w700
                                : FontWeight.w400,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (email.badge != null) ...[
                        const SizedBox(width: 8),
                        email.badge!,
                      ] else if (email.time.isNotEmpty) ...[
                        const SizedBox(width: 8),
                        Text(
                          email.time,
                          style: TextStyle(
                            color: email.isUnread
                                ? const Color(0xFFE8823A)
                                : Colors.white54,
                            fontSize: 12,
                          ),
                        ),
                        if (email.isUnread) ...[
                          const SizedBox(width: 6),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFF5B9CF6),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ],
                    ],
                  ),
                  if (email.subject.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            email.subject,
                            style: TextStyle(
                              color: email.isUnread
                                  ? Colors.white
                                  : Colors.white70,
                              fontWeight: email.isUnread
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              fontSize: 13.5,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (email.showStar) ...[
                          const SizedBox(width: 8),
                          const Icon(Icons.star_border,
                              color: Colors.white38, size: 20),
                        ],
                      ],
                    ),
                  ],
                  if (email.preview.isNotEmpty) ...[
                    const SizedBox(height: 1),
                    Text(
                      email.preview,
                      style: const TextStyle(
                          color: Colors.white38, fontSize: 12.5),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBottomBar() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: const Color(0xFF1A1209),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2114),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.mail_outline,
                      color: Colors.white70, size: 24),
                ),
                Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8823A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '99+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2114),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.videocam_outlined,
                  color: Colors.white70, size: 24),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined, size: 18),
              label: const Text(
                'Написать',
                style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE8823A),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _CircleAvatar extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  const _CircleAvatar({
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: backgroundColor == Colors.transparent
            ? null
            : Border.all(color: Colors.white10, width: 0.5),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}