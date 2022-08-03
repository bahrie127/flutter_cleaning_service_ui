import 'package:flutter/material.dart';
import 'package:flutter_cleaning_service_ui/color_schema.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedType = "bersih";
  String selectedFrequency = "monthly";

  void onChangePaketType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Paket Langganan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Pilih Paket",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangePaketType("bersih");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: deepPurple50,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/img1.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Paket Bersih",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == "bersih"
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.pink[400],
                                size: 30,
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangePaketType("mengkilap");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          color: deepPurple50, //Color(0xffdfdeff),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/img2.png'),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Paket Mengkilap",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == "mengkilap"
                            ? Icon(
                                Icons.check_circle,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Pilih Langganan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    changeFrequency("weekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "weekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Mingguan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "weekly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("biweekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "biweekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "2-Mingguan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "biweekly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("monthly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "monthly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Bulanan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "monthly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pilih Tambahan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("es", "Dapur", true),
                extraWidget("belanja", "Memasak", false),
                extraWidget("tirai", "Tirai Kecil", true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Teras", false),
                extraWidget("belanja", "Belanja", true),
                extraWidget("tirai", "Tirai Besar", true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: deepPurple400,
              ),
              child: Container(
                margin: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/icons/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: isSelected == true
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink400,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
