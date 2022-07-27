import 'package:flutter/material.dart';
import 'package:news_sorter/presentation/keyword/keyword_view_model.dart';
import 'package:provider/provider.dart';

class KeywordScreen extends StatefulWidget {
  const KeywordScreen({Key? key}) : super(key: key);

  @override
  State<KeywordScreen> createState() => _KeywordScreenState();
}

class _KeywordScreenState extends State<KeywordScreen> {
  static const List<String> _dropdownList = [
    '최신순',
    '이름순',
  ];

  String _dropdownValue = '최신순';

  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  static const double _dropdownWidth = 120;
  static const double _dropdownHeight = 38;

  void _createOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = _customDropdown();
      Overlay.of(context)?.insert(_overlayEntry!);
    } else {
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _overlayEntry?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<KeywordViewModel>();
    final state = viewModel.state;

    return GestureDetector(
      onTap: () {
        _removeOverlay();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '키워드',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '정렬: ',
                style: TextStyle(fontSize: 19),
              ),
              InkWell(
                onTap: () {
                  _createOverlay();
                },
                child: CompositedTransformTarget(
                  link: _layerLink,
                  child: Container(
                    width: _dropdownWidth,
                    height: _dropdownHeight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 선택값.
                        Text(
                          _dropdownValue,
                          style: const TextStyle(
                            fontSize: 16,
                            height: 22 / 16,
                            color: Colors.black,
                          ),
                        ),

                        // 아이콘.
                        const Icon(
                          Icons.arrow_downward,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ...state.keywords
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff75B0F4),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.close),
                        ),
                        Text(
                          e.keyword,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.dehaze),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  // 드롭다운.
  OverlayEntry _customDropdown() {
    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        width: _dropdownWidth,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: const Offset(0, _dropdownHeight),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                itemCount: _dropdownList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _dropdownValue = _dropdownList.elementAt(index);
                        });
                        _removeOverlay();
                      },
                      child: Text(
                        _dropdownList.elementAt(index),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
