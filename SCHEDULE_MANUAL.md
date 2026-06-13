# たまにたまヨガ — OPEN日更新マニュアル

---

## どのファイルを編集するか

```
tamaclaude/
  └── schedule.js   ← このファイルだけを編集します
```

**index.html や style.css は編集不要です。**  
`schedule.js` を保存するだけで、カレンダーに自動反映されます。

---

## schedule.js の各項目の意味

```js
const SCHEDULE = {

  year: 2026,           // 西暦年。新年になったら 2027 などに変更
  month: 6,             // 月。1〜12 の数字で入力（6 = 6月）
  monthName: "水無月",  // 和風月名（カレンダー上部に表示される飾り文字）

  openHours: {
    default:   "08:00 - 20:00",  // 通常のオープン時間（水曜以外）
    wednesday: "08:00 - 18:00"   // 水曜日のオープン時間
  },

  openDays: [1, 3, 4, 5, 9, 10, 11, 17, 21, 22, 24, 26, 27, 28, 30]
  //         ↑ OPEN日の日付を数字で並べます。カンマで区切ること。

};
```

### 和風月名の一覧（monthName に使う）

| month | monthName |
|-------|-----------|
| 1     | 睦月      |
| 2     | 如月      |
| 3     | 弥生      |
| 4     | 卯月      |
| 5     | 皐月      |
| 6     | 水無月    |
| 7     | 文月      |
| 8     | 葉月      |
| 9     | 長月      |
| 10    | 神無月    |
| 11    | 霜月      |
| 12    | 師走      |

---

## 毎月の更新手順（GitHub上で編集）

1. **GitHubにログイン**  
   https://github.com/ を開き、自分のアカウントでログインします。

2. **リポジトリを開く**  
   `https://github.com/tamanitamayoga-svg/tamaclaude` を開きます。  
   ※ `tamanitamayoga-svg` は自分のGitHubユーザー名に置き換えてください。

3. **schedule.js を開く**  
   ファイル一覧から `schedule.js` をクリックします。

4. **編集モードに入る**  
   右上の鉛筆アイコン（Edit this file）をクリックします。

5. **数値を書き換える**  
   - `month:` の数字を翌月の数字に変更  
   - `monthName:` を上の表に合わせて変更  
   - `openDays:` をその月のOPEN日に変更

6. **保存（コミット）する**  
   ページ下部の「Commit changes」ボタンをクリックします。  
   コメント欄には `7月スケジュール更新` などと入力します。

7. **1〜2分待つ**  
   GitHub Pagesが自動で更新を反映します。  
   公開URL `https://tamanitamayoga-svg.github.io/tamaclaude/` を開いて確認してください。

---

## よくあるミス

### ミス① カンマを忘れる

```js
// 間違い（3と4の間にカンマがない）
openDays: [1, 3 4, 5, 9]

// 正しい
openDays: [1, 3, 4, 5, 9]
```

### ミス② 文字列に " " を忘れる

```js
// 間違い（文字列に引用符がない）
monthName: 文月,

// 正しい
monthName: "文月",
```

### ミス③ 最後の項目にカンマをつける（つけなくても動くが念のため）

```js
// 問題ない書き方
openDays: [1, 3, 4, 5]   // 末尾カンマなし
openDays: [1, 3, 4, 5],  // 末尾カンマあり（どちらでも動く）
```

### ミス④ 全角数字を使う

```js
// 間違い（全角）
month: ６,

// 正しい（半角）
month: 6,
```

---

## 保存後の確認方法

1. GitHubのリポジトリ画面を開く
2. `Actions` タブをクリックし、緑のチェックマーク ✓ が付いていることを確認
3. `https://tamanitamayoga-svg.github.io/tamaclaude/` を開いてカレンダーを確認
4. スマホのブラウザでも確認するとより安心です

---

## 編集・公開に使うリポジトリ名と公開URL

| 項目             | 内容                                                     |
|------------------|----------------------------------------------------------|
| GitHubユーザー名 | `tamanitamayoga-svg`（初回設定時に決めたもの）                |
| リポジトリ名     | `tamaclaude`                                             |
| 編集するファイル | `tamaclaude/schedule.js`                                 |
| 公開URL          | `https://tamanitamayoga-svg.github.io/tamaclaude/`        |

**他にも似た名前のリポジトリがある場合は、`tamaclaude` を編集してください。**

---

## 初回：GitHub Pagesの公開設定

1. GitHubで `tamaclaude` リポジトリを作成
2. `Settings` → `Pages` を開く
3. `Source` を `Deploy from a branch` に設定
4. `Branch` を `main` / `/ (root)` に設定して Save
5. 数分後に公開URLが表示されます

---

## LINEのURLを変更したいとき

`main.js` を開き、1行目を変更します：

```js
const LINE_URL = "https://line.me/R/ti/p/@XXXXXXXX"; // ← ここを書き換え
```

保存するだけでページ上の全LINEボタンに反映されます。

---

## 写真を追加したいとき（ギャラリー）

1. 写真ファイルを `images/` フォルダにアップロード（例: `yoga2.jpg`）
2. `index.html` のギャラリーセクションで、`gph-*` クラスを持つ `<div>` を探す
3. クラス名を削除し、`style="background-image: url('images/yoga2.jpg');"` を追加

```html
<!-- 変更前 -->
<div class="gallery-item gph-1">

<!-- 変更後 -->
<div class="gallery-item" style="background-image: url('images/yoga2.jpg');">
```
