import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itr_course_app/homework/facundo_pineda/ui/bloc/home_bloc.dart';

class UserDetailsFPScreen extends StatefulWidget {
  const UserDetailsFPScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  State<UserDetailsFPScreen> createState() => _UserDetailsFPScreenState();
}

class _UserDetailsFPScreenState extends State<UserDetailsFPScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(FetchSingleUsersEvent(
          userId: widget.userId,
        )); //${widget.userId},));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Details'),
          backgroundColor: Colors.blueAccent,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.selectedUser == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                // child: ListView.separated(
                // shrinkWrap: true,
                // separatorBuilder: (context, index) => const SizedBox(
                // height: 24,
                // ),
                // itemCount: state.users!.length,
                // itemBuilder: (context, index) {
                // final curr = state.users![index];
                //final curr = users[index];
                //return UserListTile(curr: curr);
                child: DataTable(columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Field',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Data',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ], rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Name')),
                      DataCell(Text('${state.selectedUser?.name}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Adress')),
                      DataCell(Text('${state.selectedUser?.address}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Email')),
                      DataCell(Text('${state.selectedUser?.email}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('ID')),
                      DataCell(Text('${state.selectedUser?.id}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Company Data')),
                        DataCell(SingleChildScrollView(
                            child: 
                              Text('Name:${state.selectedUser?.company?.name}\n'
                              'Bs:${state.selectedUser?.company?.bs}\n'
                              'Phrase:${state.selectedUser?.company?.catchPhrase}'),
                          ),
                        ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Phone')),
                      DataCell(Text('${state.selectedUser?.phone}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('UserName')),
                      DataCell(Text('${state.selectedUser?.username}')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      const DataCell(Text('Website')),
                      DataCell(Text('${state.selectedUser?.website}')),
                    ],
                  ),

                  // 'Name: ${state.selectedUser?.name}\n'
                  // 'Adress: ${state.selectedUser?.address}\n'
                  // 'Email: ${state.selectedUser?.email}\n'
                  // 'ID: ${state.selectedUser?.id}\n'
                  // 'Compania: ${state.selectedUser?.company?.toJson().toString()}\n'
                  // 'Phone: ${state.selectedUser?.phone}\n'
                  // 'Username: ${state.selectedUser?.username}\n'
                  // 'WebSite: ${state.selectedUser?.website}\n'
                  // )
                  // }
                ]));
          },
        ));
  }
}
