import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class FeaturedNewsLayoutPlaceholder extends StatelessWidget {
  const FeaturedNewsLayoutPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.placeholderColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  height: 16,
                  decoration: BoxDecoration(
                    color: AppColors.placeholderColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                )),
          ],
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                'assets/placeholders/branded_placeholder.png',
                fit: BoxFit.cover,
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.placeholderColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 16,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppColors.placeholderColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(height: 8),
        ...List.generate(
            6,
            (_) => Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 16, bottom: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.placeholderColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 16,
                                  width: 200,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 0, bottom: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.placeholderColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 16,
                                  width: 200,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/placeholders/branded_placeholder.png',
                                fit: BoxFit.cover,
                                height: 80,
                                width: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                )),
      ],
    );
  }
}
