# これは何か

yamlの内容にそってChromeをヘッドレスモードで動かし、Code for Kanazawa Civic Hack Night 実施時、ITビジネスプラザ武蔵への申請書を作成して送付、その申請内容のスクショがとれる Ruby スクリプトです。

好きにforkして別イベントでも使ってください。

# HOW TO USE

Ruby と Chrome と brew のはいっているmacOSしか想定してないです。

```
# brew cask brew cask install chromedriver
# git clone <this-url>
# cd <this>
# emacs inputs.yml # a: の部分が回答ですので編集してください
# bundle install --path vendor/bundle
# bundle exec ruby main.rb # ここではプレビューのpngができるだけです
# bundle exec ruby main.rb CONFIRM # この引数をつけることで申請確定します
```

