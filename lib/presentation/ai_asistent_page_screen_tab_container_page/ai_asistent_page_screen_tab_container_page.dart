import 'package:ai_chatclone/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:ai_chatclone/widgets/app_bar/appbar_subtitle.dart';
import 'package:ai_chatclone/presentation/ai_asistent_page_screen_page/ai_asistent_page_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:ai_chatclone/core/app_export.dart';
import 'controller/ai_asistent_page_screen_tab_container_controller.dart';
import 'models/ai_asistent_page_screen_tab_container_model.dart';

class AiAsistentPageScreenTabContainerPage extends StatelessWidget {
  AiAsistentPageScreenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  AiAsistentPageScreenTabContainerController controller = Get.put(
      AiAsistentPageScreenTabContainerController(
          AiAsistentPageScreenTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              _buildTabview(),
              SizedBox(
                height: 539.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    AiAsistentPageScreenPage(),
                    AiAsistentPageScreenPage(),
                    AiAsistentPageScreenPage(),
                    AiAsistentPageScreenPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 95.v,
      leadingWidth: 69.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgMingcuteOpenaiFill,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_ai_assistant".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 41.v,
      width: 340.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray300,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            20.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.blueGray80054,
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                10,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_design".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_creative".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_student".tr,
            ),
          ),
        ],
      ),
    );
  }
}
