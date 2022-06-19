using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;

namespace Hello_MultiScreen_iPhone
{
	public partial class HomeScreen : UIViewController
	{
        //Screens
		HelloWorldScreen helloWorldScreen;
		HelloUniverseScreen helloUniverseScreen;
        HomeScreen2 TodoScreen;
        ImageScreen imageScreen;

        //Variables
        public UITextView textView;
        public UITextView booktextView;
        public UITextView textView2;
        public UITextField editTextWrite;
        public UITextView textViewWrite;

        public UIButton Button1;
        public UIButton Button2;
        public UIButton ButtonTodoList;
        public UIButton Button3;
        public UIButton Buttonbackyourstory;
        public UIButton Buttonyourstoryscreen;
        public UIButton ButtonyourstoryscreenUpload;
        public UIButton ButtonDelete;
        public UIButton ButtonShare;
        public UITextView textTitle;
        public UIButton ButtonImageClick;

        //public UIImageView imageView3;
        public UIImageView imageViewPic;
        public UIImageView imageView3;
        public UIImageView imageViewTitle;
        public UIView View1;
        public UIView View2;
        public UIView View3;
        public UIScrollView scrollView;

        public UITextView readInfo;
        public static float viewScroll1Y = 0;
        public static float viewScroll2Y = 0;
        public nfloat ResponsiveWidthLeft = 300;
        public nfloat ResponsiveSizeX = 300;
        public nfloat ResponsiveSizeY = 35;

        //loads the HomeScreen.xib file and connects it to this object
        public HomeScreen () : base ("HomeScreen", null)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			ViewDidLoad1();
            View.BackgroundColor = UIColor.FromRGB(204, 204, 255);

            ResponsiveWidthLeft = View.Frame.Width/8;
            nfloat size = 30;
            if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                size = View.Frame.Width / 8;
            ResponsiveSizeX = View.Frame.Width - size;
     

            //---- when the hello world button is clicked
            this.btnHelloUniverse.SetTitle("Create Your Journal", UIControlState.Normal);
            this.btnHelloWorld.SetTitle("Click To Read", UIControlState.Normal);
            this.btnHelloUniverse.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            this.btnHelloWorld.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            this.Title = "Home";

            this.btnHelloWorld.Layer.CornerRadius = 10;
            this.btnHelloUniverse.Layer.CornerRadius = 10;


            this.btnHelloWorld.TouchUpInside += (sender, e) => {
				//---- instantiate a new hello world screen, if it's null (it may not be null if they've navigated
				// backwards from it
				if(this.helloWorldScreen == null) { this.helloWorldScreen = new HelloWorldScreen(); }
				//---- push our hello world screen onto the navigation controller and pass a true so it navigates
				this.NavigationController.PushViewController(this.helloWorldScreen, true);
			};

			//---- same thing, but for the hello universe screen
			this.btnHelloUniverse.TouchUpInside += (sender, e) => {
				if(this.helloUniverseScreen == null) { this.helloUniverseScreen = new HelloUniverseScreen(); }
				this.NavigationController.PushViewController(this.helloUniverseScreen, true);
			};



        }
		
        public void ViewDidLoad1()
        {

            //View Issue
            Title = "My Custom View Controller";
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(204, 204, 255);
            //View.LargeContentImage = imageView;
            ResponsiveWidthLeft = View.Frame.Width/8;
            nfloat size = 30;
            if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                size = View.Frame.Width / 8;
            ResponsiveSizeX = View.Frame.Width - size;

            imageViewPic = new UIImageView();
            UIImage img3 = new UIImage();
            if (EmailFileRead.FileExists(EmailFileRead.fileNameImage) && EmailFileRead.fileNameImage!="")
            {
                img3 = UIImage.FromFile(EmailFileRead.fileNameImage);
            }
            else
                img3 = UIImage.FromFile("TestPic.png");
            imageViewPic.Image = img3;


            UIImage viewer = new UIImage();
            viewer = UIImage.FromFile("pic5.jpg");
            textView = new UITextView();
  
            ButtonImageClick = new UIButton(UIButtonType.System);
            //ButtonImageClick.SetBackgroundImage(viewer,UIControlState.Normal);
            ButtonImageClick.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonImageClick.SetTitle("Image Calendar", UIControlState.Normal);
            ButtonImageClick.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            ButtonImageClick.Layer.CornerRadius = 10;


            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + View.Frame.Height / 3 + 300),
                BackgroundColor = UIColor.FromRGB(204, 204, 255),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            imageViewTitle = new UIImageView();


            //PLEASE COMMENT OUT BELOW IF THIS doesn't work
            ButtonTodoList = new UIButton(UIButtonType.System);
            ButtonTodoList.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            ButtonTodoList.SetTitle("Create To Do List", UIControlState.Normal);
            ButtonTodoList.SetTitleColor(UIColor.White,UIControlState.Normal);
            ButtonTodoList.Layer.CornerRadius = 10;
            imageView3 = new UIImageView();

            //ButtonTodoList.SetImage(img4, UIControlState.Normal);

            UIImage img2 = new UIImage();
            img2 = UIImage.FromFile(EmailFileRead.fileNameImage1);
            imageViewTitle.Image = img2;

            ButtonTodoList.TouchUpInside += (sender, e) => {
                if (this.TodoScreen == null) { this.TodoScreen = new HomeScreen2(); }
                this.NavigationController.PushViewController(this.TodoScreen, true);
            };

            ButtonImageClick.TouchUpInside += (sender, e) => {
                if (this.imageScreen == null) { this.imageScreen = new ImageScreen(); }
                this.NavigationController.PushViewController(this.imageScreen, true);
            };

            scrollView.ScrollRectToVisible(imageViewTitle.Frame,true);

            scrollView.Add(ButtonTodoList);
            scrollView.Add(imageView3);
            scrollView.Add(imageViewPic);
            scrollView.Add(ButtonImageClick);
            scrollView.Add(imageViewTitle);
            scrollView.Add(btnHelloUniverse);
            scrollView.Add(btnHelloWorld);
            View.AddSubview(scrollView);

            //View.AddSubview(Button1);
            //View.AddSubview(Buttonyourstoryscreen);           
        }
       
		/// <summary>
		/// Is called when the view is about to appear on the screen. We use this method to hide the
		/// navigation bar.
		/// </summary>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            {
                scrollView.Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height);
                scrollView.ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 200);
                scrollView.BackgroundColor = UIColor.FromRGB(204, 204, 255);
                scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight;
            }
            Foundation.NSNotificationCenter.DefaultCenter.AddObserver(new NSString("UIDeviceOrientationDidChangeNotification"), DeviceRotated);
            ResponsiveWidthLeft = View.Frame.Width / 9;
            ResponsiveSizeX = View.Frame.Width - ResponsiveWidthLeft * 2;
            int expander = 25;
            if (View.Frame.Height >= 670)
            {
                expander = 35;
            }
            if (View.Frame.Height == 812)
                expander = 28;


            //this.NavigationController.SetNavigationBarHidden (true, animated);
            UIImage img3 = new UIImage();
            if (EmailFileRead.FileExists(EmailFileRead.fileNameImage) && EmailFileRead.fileNameImage != "")
            {
                img3 = UIImage.FromFile(EmailFileRead.fileNameImage);
            }
            else
                img3 = UIImage.FromFile("TestPic.png");
            imageViewPic.Image = img3;
            imageViewPic.Frame = new CGRect(ResponsiveWidthLeft, 235+10, ResponsiveSizeX, 280);
            UIImage img2 = new UIImage();
            img2 = UIImage.FromFile(EmailFileRead.fileNameImage1);
            imageViewTitle.Image = img2;
            this.NavigationController.SetNavigationBarHidden(true, animated);
            imageViewTitle.Frame = new CGRect(ResponsiveWidthLeft - 20, View.Frame.Top + 10, ResponsiveSizeX + 40, 80);
            btnHelloUniverse.Frame = new CGRect(ResponsiveWidthLeft, imageViewTitle.Frame.Bottom + expander, ResponsiveSizeX, ResponsiveSizeY);
            ButtonTodoList.Frame = new CGRect(ResponsiveWidthLeft, btnHelloUniverse.Frame.Bottom + expander, ResponsiveSizeX, ResponsiveSizeY);
            imageView3.Frame = new CGRect(imageViewTitle.Frame.Left - 20, imageViewTitle.Frame.Top - 20
            + 20, 70, 70);
            imageViewPic.Frame = new CGRect(ResponsiveWidthLeft, ButtonTodoList.Frame.Bottom + expander, ResponsiveSizeX, 280);
            btnHelloWorld.Frame = new CGRect(ResponsiveWidthLeft, imageViewPic.Frame.Bottom + expander, ResponsiveSizeX, ResponsiveSizeY);
            ButtonImageClick.Frame = new CGRect(ResponsiveWidthLeft, btnHelloWorld.Frame.Bottom + expander, ResponsiveSizeX, ResponsiveSizeY);

            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            {
                int expandipad = 10;
                imageViewTitle.Frame = new CGRect(ResponsiveWidthLeft - 20, View.Frame.Top + 10, ResponsiveSizeX + 40, 80 + 30 + expandipad);
                btnHelloUniverse.Frame = new CGRect(ResponsiveWidthLeft, imageViewTitle.Frame.Bottom + expander + expandipad, ResponsiveSizeX, ResponsiveSizeY + expandipad);
                ButtonTodoList.Frame = new CGRect(ResponsiveWidthLeft, btnHelloUniverse.Frame.Bottom + expander + expandipad, ResponsiveSizeX, ResponsiveSizeY + expandipad);
                imageView3.Frame = new CGRect(imageViewTitle.Frame.Left - 20, imageViewTitle.Frame.Top - 20
                + 20, 70, 70);
                imageViewPic.Frame = new CGRect(ResponsiveWidthLeft, ButtonTodoList.Frame.Bottom + expander + expandipad, ResponsiveSizeX, ResponsiveSizeX-50);
                btnHelloWorld.Frame = new CGRect(ResponsiveWidthLeft, imageViewPic.Frame.Bottom + expander + expandipad, ResponsiveSizeX, ResponsiveSizeY + expandipad);
                ButtonImageClick.Frame = new CGRect(ResponsiveWidthLeft, btnHelloWorld.Frame.Bottom + expander + expandipad, ResponsiveSizeX, ResponsiveSizeY + expandipad);

            }
            
        }


        void DeviceRotated(NSNotification notification)
        {
            if (UIDevice.CurrentDevice.Orientation == UIDeviceOrientation.LandscapeLeft || UIDevice.CurrentDevice.Orientation == UIDeviceOrientation.LandscapeRight)
            {
                scrollView.Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height);
                scrollView.ContentSize = new CGSize(View.Frame.Width + 400, View.Frame.Height + 400);
                scrollView.BackgroundColor = UIColor.FromRGB(204, 204, 255);
                scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleDimensions;
            }
            else
            {
                scrollView.Frame = new CGRect(0, 0, View.Frame.Width, View.Frame.Height);
                scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height + 200);
                scrollView.BackgroundColor = UIColor.FromRGB(204, 204, 255);
                scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight;
            }

        }

        /// <summary>
        /// Is called when the another view will appear and this one will be hidden. We use this method
        /// to show the navigation bar again.
        /// </summary>
        public override void ViewWillDisappear (bool animated)
		{
			base.ViewWillDisappear (animated);
			this.NavigationController.SetNavigationBarHidden (false, animated);
		}
	}
}
