# icons フォルダ内にある「拡張子なし」のファイルすべてに、まとめて .png を付けるスクリプト
#
# 使い方:
#   1. 画像作成ツールから書き出したファイル（例: emote_001, emote_002, ...）を
#      拡張子なしのまま、このフォルダ（icons）に入れる
#   2. このフォルダで右クリック →「PowerShellで開く」（または「ターミナルで開く」）
#   3. 次のコマンドを実行する
#        .\add_png_extension.ps1
#      もし「実行できません」と表示された場合は、代わりに次を実行してください
#        powershell -ExecutionPolicy Bypass -File .\add_png_extension.ps1
#
# 既に拡張子が付いているファイル（app-icon-192.png など）には触れません。

$targetDir = $PSScriptRoot
$files = Get-ChildItem -Path $targetDir -File | Where-Object { $_.Extension -eq '' }

if ($files.Count -eq 0) {
    Write-Host "拡張子なしのファイルは見つかりませんでした。"
} else {
    foreach ($f in $files) {
        $newName = "$($f.Name).png"
        Rename-Item -Path $f.FullName -NewName $newName
        Write-Host "$($f.Name)  ->  $newName"
    }
    Write-Host ""
    Write-Host "$($files.Count) 件のファイルに .png を付けました。"
}
