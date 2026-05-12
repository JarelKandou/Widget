import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Profile UI',
      home: Scaffold(
        backgroundColor: const Color(0xFFF4F7FA),

        body: Stack(
          children: [
            // Background atas
            Container(
              height: 280,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00897B),
                    Color(0xFF26A69A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),

            SafeArea(
              child: Column(
                children: [
                  // AppBar custom
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Card Profile
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              // Foto
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.teal,
                                    width: 4,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage(
                                    "assets/images/fotosaya.jpg",
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Nama
                              const Text(
                                "Jarel Joy Hizkia Kandou",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 8),

                              // Role
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.teal.shade50,
                                  borderRadius:
                                      BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: const Text(
                                  "Mobile App Developer",
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 30),

                              // Info Card
                              Container(
                                padding:
                                    const EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius:
                                      BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.teal,
                                        ),
                                        SizedBox(width: 12),
                                        Text(
                                          "S22310660@gmail.com",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 15),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.teal,
                                        ),
                                        SizedBox(width: 12),
                                        Text(
                                          "+62 812-xxxx-xxxx",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              const Spacer(),

                              // Button
                              SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    print(
                                      "Tombol pesan ditekan",
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    "Kirim Pesan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight:
                                          FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style:
                                      ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.teal,
                                    shape:
                                        RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius
                                              .circular(18),
                                    ),
                                    elevation: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}