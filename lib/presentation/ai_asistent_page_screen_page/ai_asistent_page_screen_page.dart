import 'widgets/warp_item_widget.dart';
import 'models/warp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_screen_controller.dart';
import 'models/ai_asistent_page_screen_model.dart';

class AiAsistentPageScreenPage extends StatelessWidget {
  AiAsistentPageScreenPage({Key? key})
      : super(
          key: key,
        );

  AiAsistentPageScreenController controller =
      Get.put(AiAsistentPageScreenController(AiAsistentPageScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildWarp(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWarp() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 187.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .aiAsistentPageScreenModelObj.value.warpItemList.value.length,
          itemBuilder: (context, index) {
            WarpItemModel model = controller
                .aiAsistentPageScreenModelObj.value.warpItemList.value[index];
            return WarpItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
