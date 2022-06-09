using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;

namespace Hello_MultiScreen_iPhone
{
    public partial class StoryScreen : UIViewController
    {
        public UITextField editText;
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
        public UITextView codes;

        public UIImageView imageView3;
        public UIView View1;
        public UIView View2;
        public UIView View3;
        public UIScrollView scrollView;//ps

        public UITextField hiddenbuttoncode;
        public UIButton hiddenbutton;

        public UITextView readInfo;

        HomeScreen homeScreen; //MAY NEED TO BE COMMENTED OUT
        public nfloat ResponsiveWidthLeft = 300;
        public nfloat ResponsiveSizeX = 300;
        public nfloat ResponsiveWidthRight = 300;
        public UIButton ShareTodo;
        public UITextField editTextDate;

        private NSObject keyBoardWillShow;
        private NSObject keyBoardWillHide;
        private nfloat scrollAmout;
        private double animDuration;
        private UIViewAnimationCurve animCurve;
        private bool keyboardShowing;
        private bool keyboardOpen = false;

        //loads the HelloWorldScreen.xib file and connects it to this object
        public StoryScreen() : base("StoryScreen", null)
        {

        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            this.Title = "";
            ViewDidLoad1();
        }

        //Read your journal page
        public void ViewDidLoad1()
        {
            ResponsiveWidthLeft = View.Frame.Width / 8 - 10;
            nfloat size = 30;
            if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                size = View.Frame.Width / 8;
            ResponsiveSizeX = View.Frame.Width - size + 25;
            ResponsiveWidthRight = View.Frame.Width - 80;

            if (View.Frame.Width >= 400)
            {
                ResponsiveWidthLeft = View.Frame.Width / 8 - 10;
                if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                    size = View.Frame.Width / 8;
                ResponsiveSizeX = View.Frame.Width - size + 50;
                ResponsiveWidthRight = View.Frame.Width - 60;
            }
            //View Issue
            View.BackgroundColor = UIColor.FromRGB(178, 178, 227);
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(178, 178, 227);

            //Initialize Buttons
            Button3 = new UIButton(UIButtonType.System);
            //UIScrollView scrollView = new UIScrollView();
            booktextView = new UITextView()
            {
                Editable = false
            };
            hiddenbutton = new UIButton(UIButtonType.System);
            hiddenbuttoncode = new UITextField();

            booktextView.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 260, ResponsiveSizeX, 410);
            //scrollView.BackgroundColor = UIColor.SystemPink;

            var plist = NSUserDefaults.StandardUserDefaults;
            var p = plist.IntForKey("viewScroll1Y");

            // ViewController view1 = new ViewController();
            //if (null != p)
            //    booktextView.y.Y = p;
            var ButtonShare = new UIButton(UIButtonType.RoundedRect)
            {

                //Frame = UIScreen.MainScreen.Bounds,
                BackgroundColor = UIColor.FromRGB(204, 204, 255)
            };

            imageView3 = new UIImageView();
            imageView3.Image = UIImage.FromBundle("pinkflower.png");
            imageView3.Frame = new CGRect(ResponsiveWidthLeft+50, ButtonShare.Frame.Top+50, 175, 175);


            ButtonShare.Frame = new CGRect(View.Frame.Right-30, View.Frame.Top+675, 35, 35);

            //ButtonShare.SetTitle("Share Journal", UIControlState.Normal);
            ButtonShare.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonShare.SetBackgroundImage(UIImage.FromBundle("mailicon.png"), UIControlState.Normal);

            //booktextView.Frame = new CGRect(25, 150, 300, 150); ;
            booktextView.Text = "Enter your email to begin your story!";
            booktextView.BackgroundColor = UIColor.FromRGB(230, 230, 250);
            booktextView.TextColor = UIColor.SystemPurple;
            booktextView.UserInteractionEnabled = true;
            booktextView.ScrollEnabled = true;


            var text1 = EmailFileRead.ReadText();
            booktextView.Text = text1;
            //HomeScreen.viewScroll1Y = ((float)booktextView.ContentOffset.Y);

            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 300),
                BackgroundColor = UIColor.FromRGB(204, 204, 255),
                //BackgroundColor = UIColor.FromRGB(178, 178, 227),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            ButtonShare.Layer.CornerRadius = 10;
            ButtonShare.AddTarget(ShareButtonClick, UIControlEvent.TouchUpInside);

            scrollView.Add(imageView3);
            scrollView.AddSubview(booktextView);
            scrollView.Add(ButtonShare);
            View.AddSubview(scrollView);//ps
        }

        void ShareButtonClick(object sender, EventArgs eventArgs)
        {
            String txt2 = booktextView.Text;
            var item = NSObject.FromObject(txt2);
            var activityItems = new NSObject[] { item };
            UIActivity[] applicationActivities = null;
            var activityController = new UIActivityViewController(activityItems, applicationActivities);
            PresentViewController(activityController, true, null);
        }

        //Back to home view
        void Button3Click(object sender, EventArgs eventArgs)
        {
            //back to home screen
            if (this.homeScreen == null) { this.homeScreen = new HomeScreen(); }
            this.NavigationController.PushViewController(this.homeScreen, true);
        }


        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            booktextView.Text = EmailFileRead.ReadText();
            booktextView.TextColor = UIColor.Purple;
            if (EmailFileRead.code.ToLower() == EmailFileRead.CodeList[0])
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Story1", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("chapter1.png");
            }
            else if (EmailFileRead.code.ToLower() == "help")
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Reflections2", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("TestPic.png");
            }
             else if (EmailFileRead.code.ToLower() == "secret_code")
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Halbook", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("pinkflower.png");
            }
             else if (EmailFileRead.code.ToLower() == EmailFileRead.CodeList[2])
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Story25", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("chapter3.png");
            }
            else if (EmailFileRead.code.ToLower() == EmailFileRead.CodeList[1])
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Story10", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("chapter2.png");
            }
            else if (EmailFileRead.code.ToLower() == EmailFileRead.CodeList[4] ||
                EmailFileRead.code.ToLower() == EmailFileRead.CodeList[5]
                || EmailFileRead.code.ToLower() == EmailFileRead.CodeList[6])
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("WinText", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("chapter5.png");
            }
            else if (EmailFileRead.code.ToLower() == EmailFileRead.CodeList[3])
            {
                booktextView.Text = "Enter your email to begin your story!";
                var v = NSBundle.MainBundle.PathForResource("Story50", "txt");
                var text1 = EmailFileRead.ReadText(v);

                booktextView.Text = text1;
                imageView3.Image = UIImage.FromBundle("chapter4.png");
            }
            scrollView.ScrollRectToVisible(booktextView.Frame, true);
      
        }

    }
}