# エモート画像について

エモートのサムネイル画像は、このフォルダには置かず、`index.html` の
`EMOTES_DATA` 内で各エモートの `img` フィールドに Sky Wiki
（`https://sky-children-of-the-light.fandom.com/wiki/Expressions`）の
画像URLを直接指定する方式に変更しました。ローカルに画像ファイルを
保存・同梱しないことで、ゲーム内アセットの複製を避けています。

画像を読み込めなかった場合は 🎭 のフォールバック表示になります
（`onerror` で自動的に切り替わります）。

新しいエモートを追加するときは、Sky Wikiの該当画像URLを調べて
`EMOTES_DATA` の `img` フィールドに設定してください。
