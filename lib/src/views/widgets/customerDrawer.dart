import 'package:bonappetit/src/data/data.dart';
import 'package:bonappetit/src/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 160,
                        height: 40,
                        child: MaterialButton(
                          onPressed: () {
                            print("Log out");
                          },
                          color: KPrimary,
                          child: Row(
                            children: [
                              const SizedBox(width: 3),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color: kWhiteGreyColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: KPrimary,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Log out",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: kWhiteGreyColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: CircleAvatar(
                        backgroundColor: KPrimary.withOpacity(.5),
                        child: const SizedBox(
                          height: 90.0,
                          width: 90.0,
                          child: CircleAvatar(
                            backgroundColor: kWhiteGreyColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "pascalkasichiza@gmail.com",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: kGreyColor.withOpacity(.6),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            builDrawerItems(context),
          ],
        ),
      );
  builDrawerItems(BuildContext context) => Column(
        children: DrawerData.all
            .map(
              (e) => ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                leading: Icon(
                  e.icon,
                  color: kGreyColor,
                ),
                title: Text(
                  "${e.title}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: kGreyColor),
                ),
                onTap: () {},
              ),
            )
            .toList(),
      );
}
