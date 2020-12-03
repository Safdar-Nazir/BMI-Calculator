import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'contants.dart';

enum Gender {
  male,
  female,
}
int height = 120;

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                    
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    Slider(value: height.toDouble(), 
                    min: 120.0,
                    max: 220.0,
                    activeColor: Colors.deepOrange,
                    inactiveColor: Colors.blueGrey,
                    onChanged: (double newValue){
                      setState(() {
                        height = newValue.round();
                      });
                    })
                  ],),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          width: double.infinity,
          height: 70.0,
          decoration: BoxDecoration(
            color: bottomContainerButton,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ]),
    );
  }
}
