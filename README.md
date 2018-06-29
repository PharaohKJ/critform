# これは何か

ITビジネスプラザ武蔵への申請書を作成して送付、その申請内容のスクショがとれるスクリプトです。

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
