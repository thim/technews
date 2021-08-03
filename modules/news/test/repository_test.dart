import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:news/common/exception.dart';
import 'package:news/domain/repository/news_repository.dart';
import 'package:news/news_module.dart';

class NetMock extends Mock implements Network {}

class EnvMock extends Mock implements Env {}

class FakeUri extends Fake implements Uri {}

void main() {
  final netMock = NetMock();
  final envMock = EnvMock();

  setUpAll(() {
    registerFallbackValue(FakeUri());
    useModules([NewsModule()]);

    registerDependency<Network>(() => netMock);
    registerDependency<Env>(() => envMock);
  });

  test("request with zero data return zero objects", () async {
    when(() => netMock.get(url: any(named: 'url'), headers: any(named: 'headers')))
        .thenAnswer((invocation) async => NetworkResponse(200, emptyMock));
    final repository = inject<NewsRepository>();
    final result = await repository.getData();

    expect(result.length, 0);
  });

  test("request with only 1 data returns list with 1 object", () async {
    when(() => netMock.get(url: any(named: 'url'), headers: any(named: 'headers')))
        .thenAnswer((invocation) async => NetworkResponse(200, singleMock));
    final repository = inject<NewsRepository>();
    final result = await repository.getData();

    expect(result.length, 1);
  });

  test("request with error returns a DataException", () {
    when(() => netMock.get(url: any(named: 'url'), headers: any(named: 'headers'))).thenThrow(Exception());
    final repository = inject<NewsRepository>();
    final result = repository.getData();

    expect(result, throwsA(isA<DataException>()));
  });

  test("request with empty returns a DataException", () {
    when(() => netMock.get(url: any(named: 'url'), headers: any(named: 'headers')))
        .thenAnswer((invocation) async => NetworkResponse(0, ""));
    final repository = inject<NewsRepository>();
    final result = repository.getData();

    expect(result, throwsA(isA<DataException>()));
  });

  test("request with statusCode invalid returns a DataException", () {
    when(() => netMock.get(url: any(named: 'url'), headers: any(named: 'headers')))
        .thenAnswer((invocation) async => NetworkResponse(0, singleMock));
    final repository = inject<NewsRepository>();
    final result = repository.getData();

    expect(result, throwsA(isA<DataException>()));
  });
}

String singleMock = ''' 
{
"status": "ok",
"totalResults": 1,
"articles":[{
    "source": {
        "id": null,
        "name": "24/7 Wall St."
    },
    "author": "247chrislange",
    "title": "Cathie Wood’s ARK Invest Buys for 7/21",
    "description": "Here's a look at the ARK Invest buys for July 21, 2021.",
    "url": "https://247wallst.com/investing/2021/07/21/cathie-woods-ark-invest-buys-for-7-21/",
    "urlToImage": "https://247wallst.com/wp-content/uploads/2021/03/imageForEntry14-hQk.jpg",
    "publishedAt": "2021-07-22T00:46:29Z",
    "content": "ARK Invest funds rallied again on Wednesday after a somewhat slow start to the week, Tuesday was a a bounce back and Wednesday the hits kept coming. ARKF performed the best out of the group, up 2.1% … [+6017 chars]"
   }]
}
''';

String emptyMock = ''' 
{
"status": "ok",
"totalResults": 0,
"articles":[]
}
''';
