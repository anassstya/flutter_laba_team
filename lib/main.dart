import 'package:flutter/material.dart';
import 'screens/letters_screen.dart';

void main() {
  runApp(const MyApp());
}

const Color pageBackground = Color(0xFF24160D);
const Color cardBackground = Color(0xFF140C07);
const Color panelBackground = Color(0xFF3B2618);
const Color softBrown = Color(0xFF8E623C);
const Color lightButton = Color(0xFFD6B89D);
const Color mainText = Color(0xFFF1E5D8);
const Color secondaryText = Color(0xFFCDB8A5);
const Color subtleText = Color(0xFFA18773);
const Color darkMailBlock = Color(0xFF0E1015);
const Color dividerColor = Color(0xFF4B3426);


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

class GmailMessageScreen extends StatelessWidget {
  const GmailMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackground,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 145,
              ),
              children: [
                const HeaderActionRow(),

                const SizedBox(height: 26),

                const Text(
                  'gitlab.com sign-in from new\nlocation',
                  style: TextStyle(
                    color: mainText,
                    fontSize: 23,
                    height: 1.15,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: softBrown,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text(
                        'Входящие',
                        style: TextStyle(
                          color: mainText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star_border,
                      color: secondaryText,
                      size: 28,
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: cardBackground,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MailSenderHeader(),

                      const SizedBox(height: 18),

                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: panelBackground,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xFF65432B),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(
                                Icons.translate,
                                color: secondaryText,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Похоже, что язык письма: английский',
                                    style: TextStyle(
                                      color: mainText,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Перевести на русский',
                                    style: TextStyle(
                                      color: Color(0xFFE6BF8E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.close,
                              color: secondaryText,
                              size: 24,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 18),

                      Container(
                        decoration: BoxDecoration(
                          color: darkMailBlock,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: const Color(0xFF2B1A14),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 3,
                              color: const Color(0xFF7A4BE6),
                            ),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(
                                top: 20,
                                right: 18,
                                left: 18,
                                bottom: 14,
                              ),
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    width: 48,
                                    height: 48,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: const Icon(
                                      Icons.code,
                                      color: Color(0xFFFF8B5E),
                                      size: 42,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 18,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              color: const Color(0xFF2A2115),
                              child: const Text(
                                'Someone signed in to your gitlab.com account from a new location.',
                                style: TextStyle(
                                  color: Color(0xFFEAEAEA),
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            const SizedBox(height: 16),

                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 18,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF2B2F38),
                                  width: 1,
                                ),
                              ),
                              child: const Column(
                                children: [
                                  InfoRow(
                                    label: 'Hostname',
                                    value: 'gitlab.com',
                                  ),
                                  InfoRow(
                                    label: 'User',
                                    value: 'Егор Чуриков (echurikov2001)',
                                  ),
                                  InfoRow(
                                    label: 'IP Address',
                                    value: '185.88.140.55',
                                  ),
                                  InfoRow(
                                    label: 'Location',
                                    value: 'Lelystad, Netherlands',
                                  ),
                                  InfoRow(
                                    label: 'Time',
                                    value: '2026-04-10 07:14:53 UTC',
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 24),

                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: Text(
                                'If you recently signed in and recognize the IP address, you can ignore this email.\n\nIf you did not recently sign in, you should immediately change your password.\n\nTo further protect your account, consider configuring a two-factor authentication method.',
                                style: TextStyle(
                                  color: Color(0xFFC9CDD5),
                                  fontSize: 12,
                                  height: 1.6,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            const SizedBox(height: 24),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              color: const Color(0xFF171A20),
                              child: const Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.code,
                                        color: Color(0xFFFF8B5E),
                                        size: 22,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        'GitLab',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'You’re receiving this email because of your account on gitlab.com',
                                    style: TextStyle(
                                      color: Color(0xFF96A0B0),
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 74,
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 12,
                  top: 10,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: pageBackground,
                  border: Border(
                    top: BorderSide(
                      color: dividerColor,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: ActionBottomButton(
                        icon: Icons.reply,
                        text: 'Ответить',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: ActionBottomButton(
                        icon: Icons.forward,
                        text: 'Переслать',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4A3629),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: secondaryText,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMailNavigation(),
    );
  }
}

class HeaderActionRow extends StatelessWidget {
  const HeaderActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: secondaryText,
          size: 32,
        ),
        Spacer(),
        Icon(
          Icons.archive_outlined,
          color: secondaryText,
          size: 28,
        ),
        SizedBox(width: 24),
        Icon(
          Icons.delete_outline,
          color: secondaryText,
          size: 28,
        ),
        SizedBox(width: 24),
        Icon(
          Icons.mark_email_unread_outlined,
          color: secondaryText,
          size: 28,
        ),
        SizedBox(width: 24),
        Icon(
          Icons.more_vert,
          color: secondaryText,
          size: 28,
        ),
      ],
    );
  }
}

class MailSenderHeader extends StatelessWidget {
  const MailSenderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
            color: Color(0xFF84888F),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
            size: 34,
          ),
        ),
        const SizedBox(width: 14),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'GitLab',
                    style: TextStyle(
                      color: mainText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    '10:14',
                    style: TextStyle(
                      color: subtleText,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    'кому: мне',
                    style: TextStyle(
                      color: secondaryText,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: secondaryText,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Icon(
          Icons.emoji_emotions_outlined,
          color: secondaryText,
          size: 27,
        ),
        const SizedBox(width: 18),
        const Icon(
          Icons.reply,
          color: secondaryText,
          size: 28,
        ),
        const SizedBox(width: 18),
        const Icon(
          Icons.more_vert,
          color: secondaryText,
          size: 26,
        ),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF2B2F38),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 110,
            padding: const EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFFB9BDC8),
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                value,
                style: const TextStyle(
                  color: Color(0xFFE8EBF2),
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActionBottomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const ActionBottomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: lightButton,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: pageBackground,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: pageBackground,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomMailNavigation extends StatelessWidget {
  const BottomMailNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      decoration: const BoxDecoration(
        color: pageBackground,
        border: Border(
          top: BorderSide(
            color: dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 44,
                      height: 32,
                      decoration: BoxDecoration(
                        color: panelBackground,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.mail_outline,
                        color: lightButton,
                        size: 22,
                      ),
                    ),
                    Positioned(
                      right: -6,
                      top: -4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF816B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          '99+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: Icon(
              Icons.videocam_outlined,
              color: secondaryText,
              size: 27,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}