# Flutter x Hasura

## システム要件

- [Flutter](https://docs.flutter.dev/get-started/install)
- [Hasura](https://hasura.io/)
- [Docker](https://www.docker.com/products/docker-desktop/)
- [Yarn](https://yarnpkg.com/)

## 始め方

```sh
git clone https://github.com/Cohey0727/flutter_codelabs_lt.git
cd flutter_codelabs_lt
# Hasura準備
cd hasura
yarn install
docker-compose up -d
npx hasura migrate apply --envfile .env.gqlengine --database-name default

# アプリ準備
# Androidまたは、iOSのエミュレーターを立ち上げて実行して下さい。
cd ../app
yarn install
flutter pub get
flutter run
```

## コード自動生成

`app/lib/graphql/x`下の

```sh
# Hasura起動状態で
cd app
yarn codegen
```

## 利用した資料

[Flutter & Hasura](https://docs.google.com/presentation/d/1UpG50JZ2yR1H03n2B25ylyWkUpac1yLfPOWGi3KONns/edit#slide=id.g145eef0e10b_0_92)
