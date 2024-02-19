import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PostRequestScreen extends StatefulWidget {
  const PostRequestScreen({super.key});

  @override
  State<PostRequestScreen> createState() => _PostRequestScreenState();
}

class _PostRequestScreenState extends State<PostRequestScreen> {
  late TextEditingController titleCon;
  late TextEditingController bodyCon;

  @override
  void initState() {
    super.initState();
    titleCon = TextEditingController();
    bodyCon = TextEditingController();
  }

  @override
  void dispose() {
    titleCon.dispose();
    bodyCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Column(
        children: [
          TextField(
            controller: titleCon,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          const Gap(20),
          TextField(
            controller: bodyCon,
            decoration: const InputDecoration(
              hintText: 'Body',
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
