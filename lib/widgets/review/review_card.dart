import 'package:flutter/material.dart';
import 'package:myapp/widgets/rating/rating.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    //? Review Card Starts -------------------------------------
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 21,
              backgroundImage: NetworkImage(
                  'https://evolve2023.in/wp-content/uploads/2014/10/speaker-3.jpg'),
            ),
            title: Text(
              "Haylie Aminoff",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "32 minutes ago",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xFF868889),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Divider(
              color: Color(0xFFEBEBEB),
            ),
          ),
          //? Rating Section Starts -------------------------------------
          Rating(),
          //? Rating Section Ends -------------------------------------
          SizedBox(
            height: 4,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam nonumy",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF868889),
            ),
          ),
        ],
      ),
    );
    //? Review Card Ends -------------------------------------
  }
}
