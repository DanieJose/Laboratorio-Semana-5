import 'package:http/http.dart' as http;

import 'package:main/type/post.dart';

void main(List<String> arguments) async {
  var url = Uri.https('https://api.spacexdata.com/v4/launches', '/latest');

  try {
    var jsonPost = await http.get(url);
    if (jsonPost.statusCode == 200) {
      final latest = postFromJson(jsonPost.body);
      for (var post in latest) {
        print("campaign: ${post.campaign}");
        print("launch: ${post.launch}");
        print("media: ${post.media}");
        print("recovery: ${post.recovery}");
        print("======================================");

        print("fairings: ${post.fairings}");
        print("links: ${post.links}");
        print("static_fire_date_utc: ${post.static_fire_date_utc}");
        print("static_fire_date_unix: ${post.static_fire_date_unix}");
        print("tdb: ${post.tdb}");
        print("net: ${post.net}");
        print("window: ${post.window}");
        print("rocket: ${post.rocket}");
        print("success: ${post.success}");
        print("failures: ${post.failures}");
        print("details: ${post.details}");
        print("crew: ${post.crew}");
        print("ships: ${post.ships}");
        print("capsules: ${post.capsules}");
        print("payloads: ${post.payloads}");
        print("launchpad: ${post.launchpad}");
        print("auto_update: ${post.auto_update}");
        print("flight_number: ${post.flight_number}");
        print("name: ${post.name}");
        print("date_utc: ${post.date_utc}");
        print("date_unix: ${post.date_unix}");
        print("date_local: ${post.date_local}");
        print("date_precision: ${post.date_precision}");
        print("upcoming: ${post.upcoming}");
        print("cores: ${post.cores}");
        print("id: ${post.id}");
        print("======================================");

        print("core: ${post.core}");
        print("flight: ${post.flight}");
        print("gridfins: ${post.gridfins}");
        print("legs: ${post.legs}");
        print("reused: ${post.reused}");
        print("landing_attempt: ${post.landing_attempt}");
        print("landing_success: ${post.landing_success}");
        print("landing_type: ${post.landing_type}");
        print("landpad: ${post.landpad}");
        print("======================================");

        print("patch: ${post.patch}");
        print("reddit: ${post.reddit}");
        print("flickr: ${post.flickr}");
        print("presskit: ${post.presskit}");
        print("webcast: ${post.webcast}");
        print("youtube_id: ${post.youtube_id}");
        print("article: ${post.article}");
        print("webcast: ${post.webcast}");
        print("wikipedia: ${post.wikipedia}");
        print("======================================");

        print("small: ${post.small}");
        print("large: ${post.large}");
        print("======================================");
        print("small: ${post.small}");
        print("original: ${post.original}");
        print("======================================");
      }
    } else {
      print("No se pudo conectar con el servidor");
    }
  } catch (e) {
    print(e.toString());
  }
}
