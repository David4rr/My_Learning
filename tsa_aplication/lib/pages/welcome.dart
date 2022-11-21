part of 'pages.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfrimPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 300,
              width: 300,
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              "Selamat Datang",
              style: selamatdatangTextStyle.copyWith(fontSize: 36),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "TSA END GAME bertujuan untuk meningkatkan keterampilan dan daya saing, \nproduktivitas, profesionalisme SDM bidang teknologi informasi dan komunikasi bagi angkatan kerja \nmuda Indonesia, masyarakat umum, dan aparatur sipil negara.",
              style: deskripsiTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 51,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  //* Bagian Modal
                                  Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: backgroundColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultmargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //jarak
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Registrasi",
                                                        style:
                                                            registrasiTextStyle
                                                                .copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        //!Ketika Icon di tekan maka popup akan close
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                          'assets/images/close.png',
                                                          height: 24,
                                                          width: 24),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Your Username",
                                                labelText: "Username",
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Your Telepone",
                                                labelText: "Nomor Telepon",
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "Password",
                                                    labelText: "Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(_isHiddenPassword
                                                            ? Icons
                                                                .visibility_off
                                                            : Icons.visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenPassword =
                                                                !_isHiddenPassword;
                                                          });
                                                        }),
                                                  )),
                                              SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenConfrimPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        "Confirm Password",
                                                    labelText:
                                                        "Confirm Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(
                                                            _isHiddenConfrimPassword
                                                                ? Icons
                                                                    .visibility_off
                                                                : Icons
                                                                    .visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenConfrimPassword =
                                                                !_isHiddenConfrimPassword;
                                                          });
                                                        }),
                                                  )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultmargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Registrasi',
                                                        style: deskripsiTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    backgroundColor),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))))),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Sudah punya Akun? ",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color: guestColor,
                                                              fontSize: 14)),
                                                  Text("Login",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14))
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultmargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Register',
                      style: deskripsiTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  //* Bagian Modal
                                  Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: backgroundColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultmargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //jarak
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Login",
                                                        style:
                                                            registrasiTextStyle
                                                                .copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        //!Ketika Icon di tekan maka popup akan close
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                          'assets/images/close.png',
                                                          height: 24,
                                                          width: 24),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "Your Username",
                                                labelText: "Username",
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),

                                              TextField(
                                                  obscureText:
                                                      _isHiddenPassword,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: "Password",
                                                    labelText: "Password",
                                                    suffixIcon: IconButton(
                                                        icon: Icon(_isHiddenPassword
                                                            ? Icons
                                                                .visibility_off
                                                            : Icons.visibility),
                                                        onPressed: () {
                                                          setState(() {
                                                            _isHiddenPassword =
                                                                !_isHiddenPassword;
                                                          });
                                                        }),
                                                  )),

                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(children: [
                                                Container(
                                                  child:
                                                      Text("Forgot Password ?"),
                                                )
                                              ]),

                                              SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultmargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Login',
                                                        style: deskripsiTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    backgroundColor),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))))),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Belum punya Akun? ",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color: guestColor,
                                                              fontSize: 14)),
                                                  Text("Registrasi",
                                                      style: deskripsiTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14))
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultmargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Login',
                      style: deskripsiTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: secondaryColor, width: 3),
                            borderRadius: BorderRadius.circular(15))))),
          ],
        ),
      ),
    );
  }
}
