import 'package:bmicalc/Icon_content.dart';
import 'package:bmicalc/Reusable_card.dart';
import 'package:bmicalc/calculator_brain.dart';
import 'package:bmicalc/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/constant.dart';
import 'bottom_button.dart';
import 'round_button.dart';
import 'main.dart';

enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  // @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //We will have to mention the type of the selectedGender variable because then only we will be able to access the contents of the enum named gender
  Gender selectedGender = Gender.other;
  //Note:The selectedGender is a single variable so if its value becomes Gender.male then the female card will get automatically assigned the inactiveCardColour
  final Function onPressed = () {};

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColourScaffold,
      appBar: AppBar(
        backgroundColor: backColourAppbar,
        title: Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColor,
                      IconContent('MALE', FontAwesomeIcons.mars),
                      //Note:IconContent is a widget which is replacing the cardChild in the Reusable card
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColor,
                      IconContent('FEMALE', FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: numberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color.fromARGB(255, 76, 35, 237),
                            activeTrackColor: Color.fromARGB(255, 76, 35, 237),
                            inactiveTrackColor: Color(0x3B232CFF),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0,
                            ),
                            overlayColor: Color(0xFF23EDFF),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              //newValue is the value generated when the slider's position is changed
                              setState(() {
                                //the round function converts the respective double value to int
                                height = newValue.round();
                              });
                            },
                            min: 120.0,
                            max: 220.0,
                            // inactiveColor: Color.fromARGB(255, 98, 102, 198),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          //alphabetic aligns the text in such a way that the lowercase letters sit on the baseline
                          children: [
                            Text(
                              weight.toString(),
                              style: numberTextStyle,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(Icons.remove, () {
                              setState(() {
                                weight--;
                                print("Weight decremented");
                              });
                            }),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(Icons.add, () {
                              setState(() {
                                weight++;
                                print("Weight incremented");
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    cardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          //alphabetic aligns the text in such a way that the lowercase letters sit on the baseline
                          children: [
                            Text(
                              age.toString(),
                              style: numberTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(Icons.remove, () {
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(Icons.add, () {
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    calc.GetResult(),
                    calc.GetDescription(),
                    calc.GetInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 35, 237),
                // borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Calculate BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
