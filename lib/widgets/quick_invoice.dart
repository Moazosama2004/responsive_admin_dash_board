import 'package:flutter/material.dart';
import 'package:responsive_admin_dash_board/models/user_info_model.dart';
import 'package:responsive_admin_dash_board/utils/app_images.dart';
import 'package:responsive_admin_dash_board/utils/app_styles.dart';
import 'package:responsive_admin_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_admin_dash_board/widgets/latest_transactions.dart';
import 'package:responsive_admin_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_admin_dash_board/widgets/title_text_field.dart';
import 'package:responsive_admin_dash_board/widgets/user_info_list_tile.dart';

import 'app_custom_button.dart';
import 'custom_text_field.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      color: Colors.white,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransactions(),
          Divider(
            thickness: 1,
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
          
        ],
      ),
    );
  }
}
