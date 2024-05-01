import 'package:flutter/material.dart';
import 'package:omvoting/component/candidates.dart';

class MyWidgetHome extends StatelessWidget {
  const MyWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/bg.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Form(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Search',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                    fillColor: Color.fromARGB(255, 247, 227, 227),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  newCandidate(
                    candidateName: 'Mr Hamreen',
                    candidateParty: 'New Gerneration',
                    candidatenumber: '1',
                    candidateVote: '185',
                    candidatePic:
                        'https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Marewan',
                    candidateParty: 'Union Nation',
                    candidatenumber: '44',
                    candidateVote: '752',
                    candidatePic:
                        'https://media.istockphoto.com/id/1667318722/vector/young-man-shows-developed-muscles-of-the-torso-and-shoulder-girdle-flexing-his-muscle-with.jpg?s=1024x1024&w=is&k=20&c=_mWIhaVE7lw1fZsuPqYHnFFCWE2iOp_q7kI4fX6wo2E=',
                  ),
                  newCandidate(
                      candidateName: 'Mr Ismael',
                      candidateParty: 'Independent',
                      candidatenumber: '47',
                      candidateVote: '45',
                      candidatePic:
                          'https://cdn2.iconfinder.com/data/icons/covid-19-1/64/11-Sore_throat-256.png'),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                  newCandidate(
                    candidateName: 'Mr Salman',
                    candidateParty: 'Independent',
                    candidatenumber: '4',
                    candidateVote: '141',
                    candidatePic:
                        'https://cdn1.iconfinder.com/data/icons/user-avatar-20/64/04-man-256.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
