import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';

class DownloadedPage extends StatefulWidget {
  const DownloadedPage({super.key});

  @override
  State<DownloadedPage> createState() => _DownloadedPageState();
}

class _DownloadedPageState extends State<DownloadedPage>
    with AutomaticKeepAliveClientMixin<DownloadedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 22,
                  right: 25,
                ),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        16,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const DownloadedItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
