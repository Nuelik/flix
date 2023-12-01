import '../downloading_page/widgets/downloading_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flix/core/app_export.dart';
import 'package:flix/presentation/delete_popup_dialog/delete_popup_dialog.dart';

class DownloadingPage extends StatefulWidget {
  const DownloadingPage({super.key});

  @override
  State<DownloadingPage> createState() => _DownloadingPageState();
  onTapImgVolume(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: DeletePopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}

class _DownloadingPageState extends State<DownloadingPage>
    with AutomaticKeepAliveClientMixin<DownloadingPage> {
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
                          padding: getPadding(left: 25, top: 22, right: 25),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return DownloadingItemWidget(
                                    onTapImgVolume: () {
                                  onTapImgVolume(context);
                                });
                              }))
                    ]))));
  }

  onTapImgVolume(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: DeletePopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
