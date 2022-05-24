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

        //loads the HomeScreen.xib file and connects it to this object
        public HomeScreen () : base ("HomeScreen", null)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			ViewDidLoad1();
            ResponsiveWidthLeft = View.Frame.Width/8;
            nfloat size = 30;
            if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                size = View.Frame.Width / 8;
            ResponsiveSizeX = View.Frame.Width - size;

            //---- when the hello world button is clicked
            this.btnHelloUniverse.SetTitle("Create Your Journal", UIControlState.Normal);
            this.btnHelloWorld.SetTitle("Click To Read", UIControlState.Normal);
            this.btnHelloWorld.Frame = new CGRect(ResponsiveWidthLeft, 540+10, ResponsiveSizeX, 35);
            this.btnHelloUniverse.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            this.btnHelloWorld.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            this.Title = "Home";

            this.btnHelloUniverse.Frame = new CGRect(ResponsiveWidthLeft, 125, ResponsiveSizeX, 35);
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
            user.View.BackgroundColor = UIColor.FromRGB(255,153,255);
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
            imageViewPic.Frame = new CGRect(ResponsiveWidthLeft, 235+20, ResponsiveSizeX, 280);


            UIImage viewer = new UIImage();
            viewer = UIImage.FromFile("pic5.jpg");
            textView = new UITextView();
  
            UIButton ButtonImageClick = new UIButton(UIButtonType.System);
            //ButtonImageClick.SetBackgroundImage(viewer,UIControlState.Normal);
            ButtonImageClick.Frame = new CGRect(ResponsiveWidthLeft, 595+15, ResponsiveSizeX, 35);
            ButtonImageClick.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonImageClick.SetTitle("Image Calendar", UIControlState.Normal);
            ButtonImageClick.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            ButtonImageClick.Layer.CornerRadius = 10;


            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 200),
                BackgroundColor = UIColor.FromRGB(204, 204, 255),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            imageViewTitle = new UIImageView();
      
            imageViewTitle.Frame = new CGRect(ResponsiveWidthLeft-20, 20, ResponsiveSizeX+60, 80);

            //PLEASE COMMENT OUT BELOW IF THIS doesn't work
            UIButton ButtonTodoList = new UIButton(UIButtonType.System);
            ButtonTodoList.Frame = new CGRect(ResponsiveWidthLeft, 180+5, ResponsiveSizeX, 35);
            ButtonTodoList.BackgroundColor = UIColor.FromRGB(100, 149, 240);
            ButtonTodoList.SetTitle("Create To Do List", UIControlState.Normal);
            ButtonTodoList.SetTitleColor(UIColor.White,UIControlState.Normal);
            ButtonTodoList.Layer.CornerRadius = 10;
            var imageView3 = new UIImageView();
            imageView3.Frame= new CGRect(imageViewTitle.Frame.Left-20, imageViewTitle.Frame.Top-20
                +20, 70, 70);
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

        /*
        void Button1Click(object sender, EventArgs eventArgs)
        {
            //UIViewController viewController2 = this.Storyboard.InstantiateViewController("ViewController2");
            //if (viewController2 != null)
            //    this.NavigationController.PushViewController(viewController2,false);

           UIViewController view2 = new HelloWorldScreen();
           NavigationController.PushViewController(view2, true);
        }
        */

       /* void ButtonyourstoryscreenClick(object sender, EventArgs eventArgs)
        {
           // ViewController3 view3 = new ViewController3();
           // NavigationController.PushViewController(view3, false);
        }
       */
       
		/// <summary>
		/// Is called when the view is about to appear on the screen. We use this method to hide the
		/// navigation bar.
		/// </summary>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
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
