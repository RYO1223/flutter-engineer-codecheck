# Github Repository Search

![ezgif-4-6b45a5b309](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/2f30ad7b-ea59-4952-86e1-d1a82dcfc40d)

## ページ一覧

### トップページ

英語 | 日本語
--|--
![IMG_7866003D1996-1](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/9d093a82-e7bc-466e-bc7e-3de0a28a5445) | ![8AD9232D-DB64-4277-B549-CF7EF0CBCB9C](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/1bceab93-ab56-4615-a2af-7f42b7dd0e35)

### 検索ページ

通常(light)| 通常(dark) | 0件 | エラー
--|--|--|--
![D19D5865-5526-4416-BA4E-CE227D956637](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/ae16c715-38e0-4010-98dd-9758d02399cf) | ![E6C9EF03-8772-4C95-93D6-D07CFEB59CE7](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/f91f4e1d-75bb-495c-a679-b1d986a004b1) | ![7E737C7A-E4A9-4559-8787-8407823D4E88](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/5f68468d-f2ae-4a0f-a188-1b37aff41a93) | ![IMG_BA37282E35A5-1](https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/4b5f27bc-0e6c-4fb5-8425-816dd22a4cca)

### 詳細ページ

<img src="https://github.com/RYO1223/flutter-engineer-codecheck/assets/70420716/99e7261e-ce9a-4185-9f56-b0238d129269" width="25%" />

## 技術スタック

- Git ブランチモデル - [git-flow](https://nvie.com/posts/a-successful-git-branching-model/)
- アーキテクチャ - Clean Architectureを元に少しアレンジ
- リンター
  - デフォルトの[flutter_lints](https://pub.dev/packages/flutter_lints)をさらに厳しめにした[pedantic_mono](https://pub.dev/packages/pedantic_mono)を導入してます。
  - 追加で[custom_lint](https://pub.dev/packages/custom_lint)を導入して[riverpod_lint](https://pub.dev/packages/riverpod_lint)を追加してます。
- フォーマッター - デフォルトのものを使用
- モデル - [freezed](https://pub.dev/packages/freezed)
- 多言語対応 - [flutter_localizations](https://pub.dev/packages/flutter_localization)
- 環境変数
  - dart-define-from-file を導入  [こちらの記事](https://zenn.dev/altiveinc/articles/separating-environments-in-flutter#ios%E3%82%A2%E3%83%97%E3%83%AA%E3%81%AB%E7%92%B0%E5%A2%83%E3%82%92%E5%8F%8D%E6%98%A0%E3%81%95%E3%81%9B%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E3%81%93%E3%81%A8)を参考
  - GithubAPIトークンのために[dotenv]()を導入
- テスト
  - [mocktail]()を使用したUI・Widgetテスト
  - [golden_test]()を使用したゴールデンテスト
- ルーティング - [go_router]() & [go_router_builder]()
- CI/CD - Github Actionsでテスト、ビルド、デプロイ対応
- 横画面対応
- ローディング中にshimmerを表示
- iOS/Android/Web対応

### 対応できていないこと

- [一部のCI/CD](https://github.com/RYO1223/flutter-engineer-codecheck/issues/10)
- [様々な環境でのゴールデンテスト](https://github.com/RYO1223/flutter-engineer-codecheck/issues/9)
- [テストコードの共通化](https://github.com/RYO1223/flutter-engineer-codecheck/issues/2)
- [アニメーションやリッチな表示](https://github.com/RYO1223/flutter-engineer-codecheck/issues/11)

## このアプリ特有の命名

### Repo

こちらは、gitのRepositoryのことを指します。
アーキテクチャのRepositoryと混同するのでRepoと呼びます。

また、Github APIの返り値のjsonに含まれるRepositoryとは明確に区別します。アプリ内のRepoとはgitのRepositoryの概念そのものを指します。

## デバッグ方法

1. v3.13.9のFlutter環境を用意する
2. Githubで[fine-grained personal access tokenを取得する](https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#fine-grained-personal-access-token-1)
3. `.env.sample`をコピーして`.env`にリネームし、GITHUB_TOKENに入れる。
4. 起動
   1. VSCodeの場合はデバッグタブからDebug devを押してください
   2. それ以外の場合はターミナルから`flutter run --dart-define-from-file=dart_defines/dev.json`を実行してください


## アーキテクチャ詳細

元のflutter-architecture-blueprintからの変更点は[こちら](https://github.com/RYO1223/flutter-engineer-codecheck/pull/36)

こちらには私の見解が含まれています。間違ったことを言っていれば指摘してください😄

Clean Architectureを参考に、依存する方向を意識しています。
大枠として、domain, application, infrastructure, presentationで分けています。

### フォルダ構成

```
lib/
├── domain/
│   └── entity/
│       └── [entity_name].dart
├── application/
│   ├── [service_name]/
│   │   ├── [service_name]_service.dart
│   │   └── [service_name]_service_state.dart
│   └── [repository_name]_repository.dart
├── infrastructure/
│   ├── repository/
│   │   └── [repository_name]_repository_impl.dart
│   └── remote/
│       ├── base_dio.dart
│       └── [data_source_name]/
│           ├── [data_source_name]_dio.dart
│           ├── [datasource_name]_data_source.dart
│           └── dto/
│               └── [dto_name].dart
├── presentation/
│   ├── component/
│   └── [page_name]/
│       └── [page_name]_page.dart
├── app.dart
└── main.dart
```

### Domainのルール

アプリ内で最も重要なEntityを定義します
domainから別のレイヤーに依存してはいけません

### Entity

- アプリ内で使用するモデルを定義します
- json変換機能をつけないでください

### Applicationのルール

アプリ内でのビジネスルールをここにおきます。
domainには依存していいですが、他の層には依存しないでください

### Service

- RiverpodのProviderで作成してください
- ステートが複雑な場合は同じフォルダに`[service_name]_service_state.dart`を作成してください。ステートはfreezedで作成してください
- リポジトリを使用する場合はapplication内にあるリポジトリのインターフェイスをDIしてください
- 各関数はデータを直接返さないようにしてください。必ずstateを更新して、Notifierを通してPageをリビルドさせてください。

### Repository

- application層で抽象クラスを作成して、infrastructure層で具象クラスを作成してください
- 関数名、返り値はinfrastructure層に依存しないようにしてください

### Infrastructureのルール

こちらはアプリ内外を繋ぐ役目です。

### Repository Implementation

- Application層で定義したRepositoryを実装します。
- アプリ外のオブジェクトをアプリ内のオブジェクトに変換する役目があります。
- RemoteやLocalのデータソースを呼び出します。

### Remote

- 外部APIをここに書きます。
- Retrofitを使用して、jsonをDTO(Data Transfer Object)に変換します。
- DTOは同じファイル内のdtoの下に置いてください。@freezedアノテーションをつけてjson変換機能をつけてください。Entityには置かないでください

### Presentationのルール

各ページやコンポーネントをここに置きます。

### Page

- 各ページは`ConsumerWidget`か`ConsumerStatefulWidget`を継承します
- 各ページのbuild()の一番上に依存しているServiceを書きます。基本的にページ以下のコンポーネントからServiceに依存しないでください。（ページ毎にリビルドされるが、パフォーマンスに問題がある場合はコンポーネントから呼び出して良いものとする）
- 他のページに遷移する場合は引数は最小限にしてください（例えば、インスタンスを直接渡すのではなくidのみ渡すようにして、遷移先でServiceからインスタンスを取得する）
- 特定のページでしか使用しないコンポーネントはページフォルダに作っても良い

## めちゃくちゃ参考にさせていただきました

https://github.com/wasabeef/flutter-architecture-blueprints/tree/main

https://github.com/susatthi/github-search/tree/develop

https://gist.github.com/mpppk/609d592f25cab9312654b39f1b357c60

以下オリジナルのまま

---

# 株式会社ゆめみ Flutter エンジニアコードチェック課題

本プロジェクトは株式会社ゆめみ（以下弊社）が、弊社に Flutter エンジニアを希望する方に出す課題用のプロジェクトです。 本課題が与えられた方は、以下を詳しく読んだ上で課題に取り組んでください。

## 概要

以下の要件を満たす、Android・iOS で動作するアプリを Flutter で作成してください。

## 要件

### 環境

- IDE・SDK・プログラミング言語については、基本的に最新の安定版を利用すること
- 最新の安定版以外を利用する場合は、理由も含めて README に記載すること
- 状態管理パッケージには Provider/Riverpod のいずれかを使うこと
- サードパーティーライブラリについては、オープンソースのものに限り制限しない

### 対象 OS バージョン

基本的に Flutter プロジェクト作成時のバージョンにすること

|         | OS Version |
| ------- | ---------- |
| iOS     | 9.0 ~ 15.2 |
| Android | 4.1 ~ 12   |

※ 本プロジェクト更新時点

### 動作

- 何かしらのキーワードを入力できる
- 入力したキーワードで GitHub のリポジトリを検索できる
- GitHub のリポジトリを検索する際、GitHub API（[`search/repositories`](https://docs.github.com/ja/rest/reference/search#search-repositories)）を利用する
  - [github | Dart Package](https://pub.dev/packages/github) のようなパッケージは利用せず、API を呼ぶ処理を自分で実装すること
- 検索結果は一覧で概要（リポジトリ名）を表示する
- 検索結果のアイテムをタップしたら、該当リポジトリの詳細（リポジトリ名、オーナーアイコン、プロジェクト言語、Star 数、Watcher 数、Fork 数、Issue 数）を表示する

### デザイン

マテリアルデザインに準拠すること

## 提出方法

- GitHub の public リポジトリの URL をお知らせください
- 別の方法で提出する場合はご相談ください（Git のコミット履歴が分かる形式が望ましいです）
- この課題とは別のコード(ご自身で公開されている OSS 等)をもって課題の提出とすることをご希望の場合はご相談ください

## 評価ポイント

- レビューのしやすさ
  - README の充実
  - 適切なコメント
  - GitHub のプルリクエスト機能などの利用
- Git
  - 適切な gitignore の設定
  - 適切なコミット粒度
  - 適切なブランチ運用
- 簡潔性・可読性・安全性・保守性の高いコード
- Dart の言語機能を適切に使いこなせているか
- テスト
  - テストが導入しやすい構成
  - Unit・UI テストがある
- UI/UX
  - エラー発生時の処理
  - 画面回転・様々な画面サイズ対応
  - Theme の適切な利用・ダークモードの対応
  - 多言語対応
  - アニメーションなど
- CI/CD
  - ビルド
  - テスト
  - リント
  - フォーマット
  - 仮のデプロイ環境

上記以外でも高く評価できるポイントがあれば同等に考慮します。

アピールする点があれば、README に箇条書きなどで記載してください。

## 参考記事

評価ポイントについて詳しくまとめた記事がありますので、ぜひご覧ください。

- [私が（iOS エンジニアの）採用でコードチェックする時何を見ているのか](https://qiita.com/lovee/items/d76c68341ec3e7beb611)
- [ゆめみの Android の採用コーディング試験を公開しました](https://qiita.com/blendthink/items/aa70b8b3106fb4e3555f)

## AI サービスの利用について

ChatGPT 等の AI サービスを利用することは、禁止しておりません。

利用にあたって工夫したプロンプトやソースコメント等をご提出頂くことで、加点評価する場合もあります。(減点評価はありません)

また、弊社コードチェック担当者も AI サービスを利用させていただく場合があります。
AI サービスの利用は差し控えてもらいたい等のご要望があれば、お気軽にお知らせください。

## Mac をお持ちでない場合について

Mac をお持ちでない場合は課題提出時にその旨お伝えください。
iOS に関連するコード、動作をレビュー対象から除外いたします。
