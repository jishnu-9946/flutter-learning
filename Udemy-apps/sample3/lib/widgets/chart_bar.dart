import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String chartday;
  final double chartDaySpend;
  final double ChartSpendPerc;

  const ChartBar(
      {Key key, this.chartday, this.chartDaySpend, this.ChartSpendPerc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          height: constrains.maxHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text("\$${chartDaySpend.toStringAsFixed(0)}"),
              SizedBox(
                height: constrains.maxHeight * .05,
              ),
              Container(
                height: constrains.maxHeight * .6,
                width: 10,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: constrains.maxHeight * 0.6,
                      child: FractionallySizedBox(
                        heightFactor: ChartSpendPerc,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: .05,
              ),
              Container(
                
                height: constrains.maxHeight * .15,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(chartday),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
