require "slack-notify"
require 'clockwork'

# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。

require 'active_support/time'

module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
  handler do |notify|
    puts "Running #{notify}"
  end
  client = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
  every(3.minutes, client.notify("Hello There!"))
end
# client = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
# client.test
# client.notify("Hello There!")