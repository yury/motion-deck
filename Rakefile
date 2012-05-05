$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  app.name = 'deck'

  app.pods do
    dependency 'ViewDeck' # 1. rake failed without --trace https://gist.github.com/2603468
    # dependency 'JSONKit' # 2. uncomment and get https://gist.github.com/2603456
  end
end
