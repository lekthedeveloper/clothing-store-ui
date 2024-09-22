import 'package:description_widgt/business_logic/models/color_model.dart';
import 'package:description_widgt/business_logic/models/icon_model.dart';
import 'package:description_widgt/business_logic/providers/cart_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  double _containerHeight = 25.h;
  void _toggleContainerHeight() {
    setState(() {
      _containerHeight = _containerHeight == 25.h ? 270.h : 25.h;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40.h,
            left: 10.w,
            child: Container(
              height: 380.h,
              width: 340.w,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/1.jpg',
                      )),
                  color: ColorModel.boxColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
              top: 50.h,
              left: 20.w,
              child: SizedBox(
                height: 30.h,
                width: 30.w,
                child: const Icon(Icons.arrow_back),
              )),
          Positioned(
              top: 50.h,
              left: 300.w,
              child: SizedBox(
                height: 30.h,
                width: 40.w,
                child: const Icon(Icons.favorite),
              )),
          //TODO:Add animation
          Positioned(
            top: 110.h,
            left: 260.w,
            child: GestureDetector(
              onTap: _toggleContainerHeight,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _containerHeight,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedOpacity(
                      opacity: _containerHeight == 25.h ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          IconPath.arrowDown, // Ensure this path is correct
                          height: 15.h,
                          width: 15.w,
                        ),
                      ),
                    ),
                    if (_containerHeight != 25.h)
                      AnimatedOpacity(
                        opacity: _containerHeight == 270.h ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceOut,
                        child: ListView(
                          padding:
                              EdgeInsets.only(left: 5.w, right: 5.w, top: 20.h),
                          children: [
                            Container(
                              height: 50.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/5.jpeg',
                                    )),
                                border: Border.all(
                                  color: ColorModel.bottonColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/2.jpeg',
                                    )),
                                border: Border.all(
                                  color: ColorModel.bottonColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/3.jpeg',
                                    )),
                                border: Border.all(
                                  color: ColorModel.bottonColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/4.jpeg',
                                    )),
                                border: Border.all(
                                  color: ColorModel.bottonColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 430.h,
              left: 20.w,
              child: SizedBox(
                width: 400.w,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Bomber Jacket',
                        style:
                            TextStyle(fontSize: 22.sp, fontFamily: 'Gummybear'),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        '\$100',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: ColorModel.bottonColor),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 460.h,
              left: 10.w,
              child: SizedBox(
                height: 50.h,
                width: 340.w,
                child: Text(
                  textAlign: TextAlign.justify,
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.',
                  style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                ),
              )),
          Positioned(
              top: 520.h,
              left: 10.w,
              child: Container(
                height: 150.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h),
                          child: Text(
                            'Color',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 170.w, top: 10.h),
                          child: Text(
                            'Size',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    //TODO: wrap the sizedBox below with listview
                    SizedBox(
                      height: 50.h,
                      width: 400.w,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              top: 5.h,
                              left: 10.w,
                              child: Consumer<CartProvider>(
                                builder: (context, value, child) => SizedBox(
                                  width: 130.w,
                                  height: 30.h,
                                  child: ListView.separated(
                                    itemCount: value.productColor.length,
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: 10.w,
                                    ),
                                    itemBuilder: (context, index) => Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            value.changeOutLine(index);
                                          },
                                          child: Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                color:
                                                    value.productColor[index],
                                                border: Border.all(
                                                    width: 2,
                                                    color: value
                                                        .outLineColor[index]),
                                                shape: BoxShape.circle),
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Positioned(
                                                    left: 15.w,
                                                    child:
                                                        value.currentColorIndex ==
                                                                index
                                                            ? Container(
                                                                height: 7.h,
                                                                width: 7.w,
                                                                decoration: const BoxDecoration(
                                                                    color: Colors
                                                                        .black,
                                                                    shape: BoxShape
                                                                        .circle),
                                                              )
                                                            : Container())
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          Positioned(
                              top: 5.h,
                              left: 210.w,
                              child: Consumer<CartProvider>(
                                builder: (context, value, child) => SizedBox(
                                  width: 120.w,
                                  height: 40.h,
                                  child: ListView.separated(
                                    itemCount: value.size.length,
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: 5.h,
                                    ),
                                    itemBuilder: (context, index) => Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            value.changeSizeColor(index);
                                          },
                                          child: Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: value.sizeColor[index],
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: Center(
                                                child: Text(
                                              value.size[index],
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.sp,
                                                  fontWeight:
                                                      value.currentSizeIndex ==
                                                              index
                                                          ? FontWeight.bold
                                                          : null,
                                                  color:
                                                      value.currentSizeIndex ==
                                                              index
                                                          ? Colors.white
                                                          : Colors.black),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 600.h,
              left: 20.w,
              child: Container(
                height: 40.h,
                width: 320.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff6f6f6),
                ),
                child: Consumer<CartProvider>(
                  builder: (context, value, child) => Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  height: 10.h,
                                  width: 10.w,
                                  child: GestureDetector(
                                      onTap: value.increaseQuantity,
                                      child: Image.asset(IconPath.plus))),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.w),
                                child: Text(
                                  value.quantity.toString(),
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: GestureDetector(
                                  onTap: value.decreaseQuantity,
                                  child: Image.asset(IconPath.minus)),
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: Container(
                          height: 50.h,
                          width: 167.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorModel.bottonColor,
                          ),
                          child: Center(
                              child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
