import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inActiveCardColor = Color(0xff111328);

enum Gender {
  male,
  female,
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  dynamic selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseCard(
                      childCard: IconContent(
                        genderIcon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseCard(
                      childCard: IconContent(
                        genderIcon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              childCard: Container(),
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    childCard: Container(),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    childCard: Container(),
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Colors.red,
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
