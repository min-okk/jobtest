# 適職診断

<div id="top"></div>

1. [プロジェクトについて](#プロジェクトについて)
2. [環境](#環境)
3. [デモ画面](#デモ画面)
4. [実行準備](#実行準備)

<!-- プロジェクトについて -->

## プロジェクトについて
SBキャリアカレッジ梅田校「Javaプログラマー養成科」の授業の一環として
ジョブリッジ企業実習を実施。
求職者が自分の適性を活かした職業を知ることができる
適職診断のWEBアプリを作成しました。<br>

<p><a href="https://docs.google.com/presentation/d/15rMce1udQwQxlyrMgUyP_a2rBEle0wuQ/edit?usp=sharing&ouid=116792697741895314082&rtpof=true&sd=true">プロジェクト詳細・アプリ概要資料</a></p>

<p align="right">(<a href="#top">トップへ</a>)</p>

## 環境
<!-- シールド一覧 -->
<!-- 該当するプロジェクトの中から任意のものを選ぶ-->
<p style="display: inline">
  <!-- バックエンドの言語一覧 -->
  <img src="https://img.shields.io/badge/-java-F2C63C.svg?logo=java&style=for-the-badge">
</p>

<!-- 言語、フレームワーク、ミドルウェア、インフラの一覧とバージョンを記載 -->
- バックエンド
    - java
    - H2 Database
    - Apache Tomcat (Tomcat9_Java17)
- フロントエンド
    - HTML
    - CSS

<p align="right">(<a href="#top">トップへ</a>)</p>

## デモ画面
![TOP](shindan_top_ss.jpg)<br>
【トップ画面】診断結果や表示に使用するニックネームを入力<br>

![TEST](shindan_q_ss.jpg)<br>
【質問画面】はいorいいえの二択問題を表示。回答によって次の質問が変わる<br>

![RESULT](shindan_result_ss.jpg)<br>
【診断結果画面】回答から適職を導きだし表示。資質や具体的な職種を提案。 <br>

<p align="right">(<a href="#top">トップへ</a>)</p>


## 実行準備
1.Githubからリポジトリをクローン<br>
2.Eclipseに「jobtest」をインポート<br>
3.H2 Databaseで「obtest.mv.db」を読み込み<br>
4.Tomcat9_Java17で「WelcomeServlet」を実行<br>

<p align="right">(<a href="#top">トップへ</a>)</p>