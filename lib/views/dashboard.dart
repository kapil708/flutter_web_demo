import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_web_demo/controllers/about_controller.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';
import 'package:flutter_web_demo/widgets/custom_button.dart';

extension TestStyle on TextStyle {
  /// Shortcut for italic
  TextStyle get italic => style(FontStyle.italic);

  /// Shortcut for underline
  TextStyle get underline => textDecoration(TextDecoration.underline);

  /// Shortcut for linethrough
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough);

  /// Shortcut for overline
  TextStyle get overline => textDecoration(TextDecoration.overline);

  /// Shortcut for color
  TextStyle textColor(Color v) => copyWith(color: v);

  /// Shortcut for backgroundColor
  TextStyle textBackgroundColor(Color v) => copyWith(backgroundColor: v);

  /// Shortcut for fontSize
  TextStyle size(double v) => copyWith(fontSize: v);

  /// Scales fontSize up or down
  TextStyle scale(double v) => copyWith(fontSize: (fontSize ?? 0) * v);

  /// Shortcut for fontWeight
  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  /// Shortcut for FontStyle
  TextStyle style(FontStyle v) => copyWith(fontStyle: v);

  /// Shortcut for letterSpacing
  TextStyle letterSpace(double v) => copyWith(letterSpacing: v);

  /// Shortcut for wordSpacing
  TextStyle wordSpace(double v) => copyWith(wordSpacing: v);

  /// Shortcut for textBaseline
  TextStyle baseline(TextBaseline v) => copyWith(textBaseline: v);

  /// Shortcut for height
  TextStyle textHeight(double v) => copyWith(height: v);

  /// Shortcut for locale
  TextStyle textLocale(Locale v) => copyWith(locale: v);

  /// Shortcut for foreground
  TextStyle textForeground(Paint v) => copyWith(foreground: v);

  /// Shortcut for background
  TextStyle textBackground(Paint v) => copyWith(background: v);

  /// Shortcut for shadows
  TextStyle textShadows(List<Shadow> v) => copyWith(shadows: v);

  /// Shortcut for fontFeatures
  TextStyle textFeatures(List<FontFeature> v) => copyWith(fontFeatures: v);

  /// Shortcut for decoration
  TextStyle textDecoration(TextDecoration v, {Color? color, TextDecorationStyle? style, double thickness = 0}) => copyWith(decoration: v, decorationColor: color, decorationStyle: style, decorationThickness: thickness);
}

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  var aboutCtrl = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    DataTableSource _data = MyData();

    return GetBuilder<AboutController>(
      builder: (_) => Expanded(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                  title: "Pick Image",
                  onTap: () => aboutCtrl.pickImage(),
                ),
                if (aboutCtrl.imagePath != null)
                  Image.network(
                    aboutCtrl.imagePath!,
                    height: 100,
                    width: 100,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Added",
                      //style: TextStyle().size(12.sp).textColor(Colors.red).textBackgroundColor(Colors.green),
                      style: appCss.h1,
                      //style: appCss.bodyStyle1.copyWith(color: appColor.textSecondaryColor),
                    ),
                    Text(
                      "See All",
                      style: appCss.h3,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              helper.imageNetwork(
                                url: "https://www.oberlo.com/media/1603970279-pexels-photo-3.jpg?fit=max&fm=jpg&w=1824",
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Kapil Singh",
                                style: appCss.bodyStyle3,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "3 Days ago",
                                style: appCss.bodyStyle5.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Statistics",
                      style: appCss.bodyStyle1.copyWith(color: appColor.textSecondaryColor),
                    ),
                    Text(
                      "See All",
                      style: appCss.h3,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Wrap(
                  children: [
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.file_copy_outlined),
                                Text(
                                  "400",
                                  style: appCss.h1.copyWith(color: appColor.textSecondaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Documents",
                              style: appCss.bodyStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );

    return PaginatedDataTable(
      source: _data,
      header: Text('My Products'),
      columns: [
        DataColumn(label: Text('ID')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Price')),
      ],
      //columnSpacing: 100,
      //horizontalMargin: 10,
      rowsPerPage: 10,
      showCheckboxColumn: false,
      showFirstLastButtons: true,
    );

    return Container(
      child: Column(
        children: [
          Text(
            "Dashboard",
            style: appCss.bodyStyle1,
          ),
        ],
      ),
    );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
    200,
    (index) => {"id": index, "title": "Item $index", "price": Random().nextInt(10000)},
  );

  bool get isRowCountApproximate => false;
  int get rowCount => _data.length;
  int get selectedRowCount => 0;
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }
}
