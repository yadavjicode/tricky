import 'package:flutter/material.dart';
import 'package:tricky/constant/color.dart';
import 'package:video_player/video_player.dart';

class CustomTabBar3 extends StatefulWidget {
  const CustomTabBar3({super.key});

  @override
  State<CustomTabBar3> createState() => _CustomTabBar3State();
}

class _CustomTabBar3State extends State<CustomTabBar3>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: TabBar(
          controller: _tabController,
          dividerHeight: 0,
          labelColor: AppColors.purple,
          unselectedLabelColor: Colors.black,
          indicator: const BoxDecoration(),
          tabs: const [
            Tab(text: 'For You'),
            Tab(text: 'Moments'),
            Tab(text: 'Follow'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController, // Pass the TabController here
        children: [
          VideoFeedPage(),
          const DiscoverPage(),
          const FriendsPage(),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}

class VideoFeedPage extends StatefulWidget {
  const VideoFeedPage({super.key});

  @override
  _VideoFeedPageState createState() => _VideoFeedPageState();
}
class _VideoFeedPageState extends State<VideoFeedPage> {
  final List<String> _videoUrls = [
    'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
    'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6745671851688692998_tiktok.mp4?alt=media&token=e6c76be2-9d8e-4be6-aedc-89ddd4985871',
    'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6842407707551599878_carlos-barrios%20(1).mp4?alt=media&token=965f5080-2771-4477-bd9d-defc7b581c5d',
    'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
    'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6745671851688692998_tiktok.mp4?alt=media&token=e6c76be2-9d8e-4be6-aedc-89ddd4985871'
  ];

  int _currentIndex = 0;
  List<VideoPlayerController> _controllers = [];
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeAllVideos();
  }

  Future<void> _initializeAllVideos() async {
    for (String url in _videoUrls) {
      VideoPlayerController controller = VideoPlayerController.network(url);
      await controller.initialize();
      controller.setLooping(true);
      _controllers.add(controller);
    }
    setState(() {
      _isInitialized = true;
    });
    _controllers[_currentIndex].play(); // Start the first video
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _controllers[_currentIndex].pause(); // Pause the previous video
      _currentIndex = index;
      _controllers[_currentIndex].play(); // Play the new video
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: _videoUrls.length,
            scrollDirection: Axis.vertical,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return _isInitialized
                  ? AspectRatio(
                      aspectRatio: _controllers[index].value.aspectRatio,
                      child: VideoPlayer(_controllers[index]),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
          _buildRightPanel(),
        ],
      ),
    );
  }

  Widget _buildRightPanel() {
    return const Positioned(
      right: 20,
      bottom: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.thumb_up, color: Colors.white, size: 30),
          SizedBox(height: 5),
          Text("20", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          Icon(Icons.comment, color: Colors.white, size: 30),
          SizedBox(height: 5),
          Text("20", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          Icon(Icons.share, color: Colors.white, size: 30),
        ],
      ),
    );
  }
}

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Discover Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Friends Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
