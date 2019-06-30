# 私生活向けorgmodeによるGTDの使い方

私は自宅PCでも会社PCでもorgmodeによるGTDを運用していますが、それぞれの使い方は異なります。

自宅でのorgmodeは私生活での大事なことや将来的な目標を整理して実現するために利用します。毎週末にレビューすることでGTDのリズムを作る事を重視します。平日はorgmodeの更新はしないため日々のTODOは登録せず中長期的な`TODOタスク`と`プロジェクト`と`目標`を管理します。また、平日は手帳・Googleカレンダー・OrgzlyでGTDの運用とorgmodeの参照を補完します。

会社でのorgmodeは業務のTODOタスクとプロジェクト課題を整理するために使います。週次レビューはしません。会社PC以外でorgmodeは参照しません。

今回は自宅でのorgmodeの使い方の説明ですので、**私生活向け**としています。

# 前提知識

次の知識があると理解しやすいです。
- Emacsとorgmode
- GTD

# 環境構築

## orgファイルを配置する

orgファイルは全て[github](https://github.com/rydeenworks/orgmode-gtd-visioning-system)で公開していますので使ってください。

orgファイルの内容は「`猫` が本システムを使った場合」を例に書いてます。



フォルダ構成は以下のとおり。

![org-directory](https://rydeenworks.github.io/assets/org-directory.png)

DropBoxで共有することでOrgzlyというAndroidアプリでorgファイルを参照できます。

## org-global.elをEmacsにロードさせる

```lisp
(load "~/Dropbox/org/org-global")
```
私はSpacemacsを使っているため以下の画像のように設定してます。ファイルパスは自身の環境に合わせてください。
![spacemacs-org-global-setting](https://rydeenworks.github.io/assets/spacemacs-org-global-setting.png)

## org-global.elファイルを修正する
ファイルパスは自身の環境に合わせてください。
![org-global-el](https://rydeenworks.github.io/assets/org-global-el.png)

# org-captureの使い方

org-captureを実行すると次の画面が出ます。(キー操作は`C-c c`)
![org-capture-template](https://rydeenworks.github.io/assets/org-capture-template.png)

`t` `p` `j` `r` それぞれのキーは、`todo.org` `plan.org` `journal.org` `review.org`それぞれのファイルへのエントリー作成に対応しています。
**私生活向け**では`plan.org`は使ってないので以降は割愛します。

# orgmodeによるGTDの運用の仕方

本システムは以下のファイルで構成します。

| ファイル名    | 内容                                         |
| ------------- | -------------------------------------------- |
| goal.org      | 私生活の大事な事や目標など実現したい事を書く |
| todo.org      | TODOタスクを書く                             |
| journal.org   | 週次レビューの時に振り返りを書く             |
| review.org    | 週次レビューのチェックリスト                 |
| proj_xxxx.org | goal実現のためのプロジェクト                 |

`goal.org` を実現するために `proj_xxxx.org` や`todo.org` があります。

そして、`goal.org` 実現に向かっているか確認するために `review.org` と `journal.org` で振り返ります。

システムの運用を始めるときは、`goal.org` の内容を自分なりに書き出すところから始めます。

# 私生活におけるGTDのポイント

Get Things Doneという言葉から集中してどんどんタスクを片付けるイメージを持つかもしれませんが、それでは単なるタスクマシーンになりがちです。そのような忙しい私生活は望まないため、`goal.org` を一番大事にします。

週末毎に次の手順を行います。
- org-captureで `review.org` へレビューチェック表を追加する
- org-captureで `journal.org` へ振り返りエントリーを追加する
- `review.org` のレビューチェックをつける事で本システムの整理・振り返り・フィードバックを行う
- 振り返りで気づいたことがあれば、 `journal.org` にメモする
- `proj_xxxx.org` と `todo.org` はレビューチェックをつける事で更新される
- 必要があれば `goal.org` の記述を見直す



# 週次レビュー

## review.org

org-captureで `r` キーを押すと次の画面が表示されます。
![org-capture-review](https://rydeenworks.github.io/assets/org-capture-review.png)
`C-c C-c` とキー入力すると `review.org` にレビューチェック表が挿入されます。

参考としてレビューチェック表の内容を以下に掲載します。

---


- クリアにする
	- 把握する―“気になること”のすべてを把握する
		- [ ] 紙の書類
		- [ ] コミュニケーションツール(メール、Slack)
		- [ ] 手帳(memopad)
		- [ ] アプリ(ブックマーク、メモ、etc..)

	- 頭を空っぽにする
		- 頭の中にある新規プロジェクト、活動、気になること、いつかやりたいこと、などを書き出す
		- [ ] タイマーを5分セットして頭の中のことを書き出す

	- 見極める―気になる事が何か解明する、整理する―あるべき場所に納める
		- [ ] 気になること -> 望んでいる結果(goal) or 次の具体的行動(TODO) ( or MAYBE/WAIT/PROJ/doc) へ変換する

- 現状に更新する 
	更新する―システムの機能を維持する
	- アクションリストを見直す
		- 完了したアクションは消す。振り返りとして、アクションを段階的に推進するための記述更新とリマインドを行う。
		- もう興味のないアイテムは削除する。
		- [ ] 完了タスクをDONEにする
		- [ ] 興味がなくなった MAYBE は SKIP にする
		- [ ] 必要があればリマインダーをセットする
		- [ ] アクションを推進するためのタスクを定義して追加する

	- カレンダーを見返す
		- [ ] アクションアイテム残件を思い出すために過去のカレンダーを詳細に振り返る。そしてorg-modeシステムに反映する
		- [ ] 長期・短期のカレンダー予定を確認し適切なアクションを登録する

	- 待ちタスクの振り返り
		- 受け取ったもののフォロー・チェックをして適切なアクションを登録する
		- [ ] WAIT タスクをチェックする
		- [ ] フォロータスクを登録する

- プロジェクト と ゴール を管理する
	- プロジェクトとその成果の振り返り
	- proj/goalの状態とそれぞれの成果について１つ１つ評価する、少なくともアクティブなアクションアイテム１つごとに確実に。
　プロジェクト計画書、補足資料、その他作成中の資料をみて新規アクション・完了・待ちタスクのトリガーとする。
	- [ ] 人生の目的とそのあり方
	- [ ] 長期的な構想リスト、１〜２年後の目標
	- [ ] 重点的に取り組む分野
	- [ ] 現在のプロジェクト

- 選択する―最善の行動を選ぶ
	- 関連するチェックリストを振り返る
	- 何か新しいアクションのためのトリガーとする
	- [ ] 先週のデイリープラン(TODO)がどのように良いパフォーマンスだったかチェックする
	- [ ] 先週の good & bad ポイントについて 簡潔な Jounal entry を作成する
	- [ ] ゴールに貢献した アクション( TODO / PROJ ) と価値のないアクションをチェックする
	- [ ] 日付のない アクション( TODO / PROJ ) を計画する
	- [ ] DONE/SKIPはアーカイブする

- 創造性を手に入れる
	- SOMEDAY/MAYBE リストを振り返る
	- アクティブになるかもしれないプロジェクトを振り返る。PROJ に登録する。
	- [ ] MAYBE は TODO / PROJ になるか？

- Be Creative and Couragous(夢を創造し勇気を持って挑戦する)
	- Any new, wonderful, hare-brained, creative, thought-provoking,
  risk-taking ideas to add into your system?
	- [ ] タイマーを５分セットして夢想する
	- [ ] その結果をorgmodeシステムに登録する

---

## journal.org

org-captureで `j` キーを押すと次の画面が表示されます。
![org-capture-journal](https://rydeenworks.github.io/assets/org-capture-journal.png)
`C-c C-c` とキー入力すると `journal.org` にレビューチェック表が挿入されます。

# 参照
- [orgmodeのページ](https://orgmode.org/ja/index.html)
- [GTDのWeekly Reviewのページ](https://gettingthingsdone.com/2018/08/episode-43-the-power-of-the-gtd-weekly-review/)と[GTDのFive Stepsのページ](https://gettingthingsdone.com/five-steps/)
- <a target="_blank" href="https://www.amazon.co.jp/%E5%85%A8%E9%9D%A2%E6%94%B9%E8%A8%82%E7%89%88-%E3%81%AF%E3%81%98%E3%82%81%E3%81%A6%E3%81%AEGTD-%E3%82%B9%E3%83%88%E3%83%AC%E3%82%B9%E3%83%95%E3%83%AA%E3%83%BC%E3%81%AE%E6%95%B4%E7%90%86%E8%A1%93-%E3%83%87%E3%83%93%E3%83%83%E3%83%89%E3%83%BB%E3%82%A2%E3%83%AC%E3%83%B3/dp/4576151878?&_encoding=UTF8&tag=dynamitecruis-22&linkCode=ur2&linkId=9327cd4b2c7d8ad114597dbdb499647c&camp=247&creative=1211">GTDの本</a><img src="//ir-jp.amazon-adsystem.com/e/ir?t=dynamitecruis-22&l=ur2&o=9" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" /> 

