class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    label_frame = [[0, 120], [320, 80]]
    @leftController = UIViewController.alloc.init.tap do |c|
      c.view.backgroundColor = UIColor.redColor
      label = UILabel.alloc.initWithFrame label_frame
      label.text = " Left View "
      c.view.addSubview label
    end
    @rightController = UIViewController.alloc.init.tap do |c|
      c.view.backgroundColor = UIColor.blueColor
      label = UILabel.alloc.initWithFrame label_frame
      label.text = " Right View "
      label.textAlignment = UITextAlignmentRight
      c.view.addSubview label
    end
    @centerController = UIViewController.alloc.init.tap do |c|
      c.view.backgroundColor = UIColor.orangeColor
      label = UILabel.alloc.initWithFrame label_frame
      label.text = "Swipe Left or Right"
      label.textAlignment = UITextAlignmentCenter
      c.view.addSubview label
    end

    deckController = IIViewDeckController.alloc.initWithCenterViewController(
      @centerController,
      leftViewController:@leftController,
      rightViewController:@rightController
    )
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = deckController
    @window.makeKeyAndVisible
    true
  end
end
