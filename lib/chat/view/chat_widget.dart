import 'package:flutter/material.dart';
import 'package:gabriel_profile/chat/widgets/textfield_widget.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  bool expanded = false;

  expandirContainer() {
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: 370,
      height: expanded ? 500 : 52,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 38,
                              height: 38,
                              decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle),
                              child: Image.asset(
                                'assets/foto_perfil_gabriel.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Chat com Gabriel',
                            style: TextStyle(
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5B5555)),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            expandirContainer();
                          },
                          icon: Icon(
                            expanded
                                ? Icons.keyboard_arrow_down_rounded
                                : Icons.keyboard_arrow_up_rounded,
                            size: 28,
                            color: const Color(0xFF5B5555),
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (expanded == true)
                    const Divider(
                      height: 1,
                    ),
                ],
              ),
            ),
            if (expanded == true)
              const Align(alignment: Alignment.bottomCenter, child: BottomBar())
          ],
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFieldWidget(),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.photo_library_outlined,
                        color: Color(0xFF828690))),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file,
                        color: Color(0xFF828690))),
              ],
            ),
            Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFF0A66C2)),
              child: const Center(
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
