import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_scanner/src/core/presentation/custom_scaffold.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/widgets/footer_links.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/widgets/header_close_button.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/widgets/plan_option_section.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/widgets/start_trial_button.dart';
import 'package:pdf_scanner/src/features/subsribe/presentation/widgets/subscription_Info_section.dart';

class SubsCribeView extends StatelessWidget {
  const SubsCribeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const HeaderCloseButton(),
            const SubscriptionInfoSection(),
            SizedBox(height: 32.h),
            const PlanOptionsSection(),
            SizedBox(height: 24.h),
            const StartTrialButton(),
            const Spacer(),
            const FooterLinks(),
          ],
        ),
      ),
    );
  }
}
