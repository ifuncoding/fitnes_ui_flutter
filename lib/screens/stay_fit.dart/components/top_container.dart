import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.45,
      width: width * 1.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          alignment: Alignment(-0.7, 0.0),
          image: AssetImage('assets/images/Clip.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 50.0, 20.0, 0.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                      )
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.15,
                child: Text(
                  'Stay fit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
