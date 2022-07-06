using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;

namespace Hello_MultiScreen_iPhone
{
    public partial class HelloWorldScreen : UIViewController
    {
        public UITextField editText;
        public UITextView textView;
        public UITextView booktextView;
        public UITextView sta;
        public UITextView codes;

        public UITextView textView2;
        public UITextField editTextWrite;
        public UITextView textViewWrite;

        public UIButton Button1;
        public UIButton Button3;
        public UIButton ButtonShare;
        public UIButton Buttonbackyourstory;
        public UIButton Buttonyourstoryscreen;
        public UIButton ButtonyourstoryscreenUpload;
        public UIButton ButtonDelete;

        public UIImage imageView;
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
        public UIButton CloudLoginButton;
        public UITextField editTextDate;

        private NSObject keyBoardWillShow;
        private NSObject keyBoardWillHide;
        private nfloat scrollAmout;
        private double animDuration;
        private UIViewAnimationCurve animCurve;
        private bool keyboardShowing;
        private bool keyboardOpen = false;

        public StoryScreen storyScreen;

        //loads the HelloWorldScreen.xib file and connects it to this object
        public HelloWorldScreen() : base("HelloWorldScreen", null)
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
            //View Issue
            View.BackgroundColor = UIColor.FromRGB(178, 178, 227);
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(178, 178, 227);

            //Initialize Buttons
            Button3 = new UIButton(UIButtonType.System);
            CloudLoginButton = new UIButton(UIButtonType.System);
            booktextView = new UITextView()
            {
                Editable = false
            };
            hiddenbutton = new UIButton(UIButtonType.System);
            hiddenbuttoncode = new UITextField();

            var plist = NSUserDefaults.StandardUserDefaults;
            var p = plist.IntForKey("viewScroll1Y");

            ButtonShare = new UIButton(UIButtonType.RoundedRect)
            {

                BackgroundColor = HomeScreen.color;
            };

            editTextDate = new UITextField();
            ShareTodo = new UIButton(UIButtonType.System);

            ShareTodo.SetTitleColor(UIColor.White, UIControlState.Normal);
            ShareTodo.SetBackgroundImage(UIImage.FromBundle("mailicon.png"), UIControlState.Normal);

            editTextDate.BackgroundColor = UIColor.White;
            editTextDate.TextColor = UIColor.Purple;
            editTextDate.AccessibilityHint = "0 (days)";
            editTextDate.Text = "0";

            codes = new UITextView();
            codes.Editable = false;
            codes.TextColor = UIColor.Black;
            codes.Text = "";
            codes.BackgroundColor = UIColor.FromRGB(230, 230, 250);
            editTextDate.ShouldReturn = (textField) => { textField.ResignFirstResponder(); return true; };


            ButtonShare.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonShare.SetBackgroundImage(UIImage.FromBundle("mailicon.png"), UIControlState.Normal);

            booktextView.Text = "Enter your email to begin your story!";
            booktextView.BackgroundColor = UIColor.FromRGB(230, 230, 250);
            booktextView.TextColor = UIColor.Purple;
            booktextView.UserInteractionEnabled = true;
            booktextView.ScrollEnabled = true;

            hiddenbutton.SetTitle("Submit", UIControlState.Normal);
            hiddenbutton.BackgroundColor = UIColor.Blue;
            hiddenbutton.SetTitleColor(UIColor.White, UIControlState.Normal);
            hiddenbuttoncode.BackgroundColor = UIColor.FromRGB(100, 149, 240);

            hiddenbuttoncode.AccessibilityHint = "type 'help'";
            hiddenbuttoncode.Text = "help";
            hiddenbuttoncode.BackgroundColor = UIColor.White;
            hiddenbuttoncode.TextColor = UIColor.Black;

            //exit keyboard 
            hiddenbuttoncode.ShouldReturn = (textField) => { textField.ResignFirstResponder(); return true; };
            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5View.AddGestureRecognizer (g)

            var text1 = EmailFileRead.ReadText();
            booktextView.Text = text1;

            sta = new UITextView();
            sta.Editable = false;
            sta.TextColor = UIColor.Black;
            sta.Text = "Days Prior";
            sta.BackgroundColor = UIColor.FromRGB(230, 230, 250);

            //ScrollView

            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + View.Frame.Height / 3 + 300),
                BackgroundColor = HomeScreen.color;,
                //BackgroundColor = UIColor.FromRGB(178, 178, 227),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            ButtonShare.Layer.CornerRadius = 10;
            curveRadius();
            hiddenbutton.AddTarget(HiddenClick, UIControlEvent.TouchUpInside);
            Button3.AddTarget(Button3Click, UIControlEvent.TouchUpInside);
            ButtonShare.AddTarget(ShareButtonClick, UIControlEvent.TouchUpInside);
            ShareTodo.AddTarget(ButtonShareClick, UIControlEvent.TouchUpInside);

            scrollView.Add(codes);
            scrollView.Add(ShareTodo);
            scrollView.Add(editTextDate);
            scrollView.Add(sta);
            scrollView.AddSubview(booktextView);
            scrollView.Add(hiddenbutton);
            scrollView.Add(ButtonShare);
            scrollView.Add(hiddenbuttoncode);
            scrollView.Add(Button3);
            View.AddSubview(scrollView);//ps
            keyboardOpen = false;
            keyBoardWillShow = UIKeyboard.Notifications.ObserveWillShow(KeyboardWillShow);

            keyBoardWillHide = UIKeyboard.Notifications.ObserveWillHide(KeyboardWillHide);


        }

        private void ButtonShareClick(object sender, EventArgs eventArgs)
        {
            UIApplication.SharedApplication.KeyWindow.EndEditing(true);
            keyboardOpen = false;
            int i = 0;
            Int32.TryParse(editTextDate.Text, out i);
            String txt2 = EmailReader.EmailFileRead.ReadFileFromDate(EmailFileRead.fileName1, i);
            var item = NSObject.FromObject(txt2);
            var activityItems = new NSObject[] { item };
            UIActivity[] applicationActivities = null;
            var activityController = new UIActivityViewController(activityItems, applicationActivities);
            PresentViewController(activityController, true, null);
        }

        public void curveRadius()
        {
            hiddenbutton.Layer.CornerRadius = 10;
            Button3.Layer.CornerRadius = 10;
            CloudLoginButton.Layer.CornerRadius = 10;
        }


        void ShareButtonClick(object sender, EventArgs eventArgs)
        {
            String txt2 = "\n Your story: \n" + EmailFileRead.ReadText();
            var item = NSObject.FromObject(txt2);
            var activityItems = new NSObject[] { item };
            UIActivity[] applicationActivities = null;
            var activityController = new UIActivityViewController(activityItems, applicationActivities);
            PresentViewController(activityController, true, null);
        }

        void KeyboardWillShow(object sender, UIKeyboardEventArgs args)
        {
            keyboardShowing = hiddenbuttoncode.Focused;
            if (!keyboardOpen)
            {
                keyboardShowing = true;
                animDuration = args.AnimationDuration;
                animCurve = args.AnimationCurve;

                var r = UIKeyboard.FrameBeginFromNotification(args.Notification);
                //if (r.Left >= hiddenbuttoncode.Frame.Right || r.Top >= hiddenbuttoncode.Frame.Bottom || r.Right <= hiddenbuttoncode.Frame.Left || r.Bottom <= hiddenbuttoncode.Frame.Top)
                if (r.Top >= hiddenbuttoncode.Frame.Bottom)
                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - hiddenbuttoncode.Frame.Bottom) + r.Height / 4;
                    ScrollTheView(true);
                    keyboardOpen = true;
                }
            }
        }

        void KeyboardWillHide(object sender, UIKeyboardEventArgs args)
        {
            if (keyboardOpen)
            {
                keyboardShowing = false;
                animDuration = args.AnimationDuration;
                animCurve = args.AnimationCurve;

                var r = UIKeyboard.FrameBeginFromNotification(args.Notification);
                //if (r.Left >= hiddenbuttoncode.Frame.Right || r.Top >= hiddenbuttoncode.Frame.Bottom || r.Right <= hiddenbuttoncode.Frame.Left || r.Bottom <= hiddenbuttoncode.Frame.Top)
                if (r.Top >= hiddenbuttoncode.Frame.Bottom)
                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - hiddenbuttoncode.Frame.Bottom) + r.Height / 4;
                    ScrollTheView(false);
                    keyboardOpen = false;
                }
            }

        }

        private void ScrollTheView(bool scale)
        {
            UIView.BeginAnimations(string.Empty, IntPtr.Zero);
            UIView.SetAnimationDuration(animDuration);
            UIView.SetAnimationCurve(animCurve);

            var frame = View.Frame;

            if (scale)
            {
                //if (Math.Abs(frame.Y + scrollAmout) <= scrollAmout)
                if (frame.Y - scrollAmout <= 0)
                    frame.Y -= scrollAmout;
            }
            else
            {
                if (frame.Y + scrollAmout <= 0)
                    frame.Y += scrollAmout;
            }

            View.Frame = frame;
            UIView.CommitAnimations();
        }


        //Back to home view
        void Button3Click(object sender, EventArgs eventArgs)
        {
            //back to home screen
            if (this.homeScreen == null) { this.homeScreen = new HomeScreen(); }
            this.NavigationController.PushViewController(this.homeScreen, true);
        }

        //Hint
        public void HiddenClick(object sender, EventArgs eventArgs)
        {
            UIApplication.SharedApplication.KeyWindow.EndEditing(true);
            keyboardOpen = false;
            String str = hiddenbuttoncode.Text;

            if (EmailFileRead.CodeList.Contains(str.ToLower()) || str.ToLower() == "help" || str.ToLower() == "secret_code")
            {
                EmailFileRead.code = str.ToLower();
                //back to home screen
                if (this.storyScreen == null) { this.storyScreen = new StoryScreen(); }
                this.NavigationController.PushViewController(this.storyScreen, true);
            }
            else
            {
                hiddenbuttoncode.AccessibilityHint = "type 'hint'";
            }

        }


        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

        public override void ViewDidAppear(bool animated)
        {

            base.ViewDidAppear(animated);

            ResponsiveWidthLeft = View.Frame.Width / 10;
            ResponsiveSizeX = View.Frame.Width - ResponsiveWidthLeft * 2;
            ResponsiveWidthRight = View.Frame.Width - ResponsiveWidthLeft * 2 - 65;

            booktextView.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 30, ResponsiveSizeX, 410);
            booktextView.Text = EmailFileRead.ReadText();
            UIApplication.SharedApplication.KeyWindow.EndEditing(true);
            keyboardOpen = false;


            booktextView.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 30, ResponsiveSizeX, 410);

            ButtonShare.Frame = new CGRect(ResponsiveWidthLeft, booktextView.Frame.Bottom + 10, 35, 35);
            hiddenbutton.Frame = new CGRect(ResponsiveWidthRight, 500, 100, 30);
            hiddenbuttoncode.Frame = new CGRect(ResponsiveWidthLeft, 500, 170, 30);
            codes.Frame = new CGRect(ResponsiveWidthLeft, hiddenbuttoncode.Frame.Bottom + 20, 100, 50);

            editTextDate.Frame = new CGRect(ResponsiveWidthRight - 60, hiddenbuttoncode.Frame.Bottom + 20, 35, 35);
            sta.Frame = new CGRect(editTextDate.Frame.Right, editTextDate.Frame.Top, 75, 35);

            ShareTodo.Frame = new CGRect(sta.Frame.Right + 5, hiddenbuttoncode.Frame.Bottom + 20, 35, 35);

            var cgFrame = new CGRect(ResponsiveWidthLeft, View.Frame.Top, ResponsiveSizeX, 340);
            scrollView.ScrollRectToVisible(cgFrame, true);
            String str = "Unlocked Codes!";
            if (EmailFileRead.FileCountDays(EmailFileRead.fileName1, 1))
            {
                //edit
                str = str + "\n" + EmailFileRead.CodeList[0];
            }
            if (EmailFileRead.FileCountDays(EmailFileRead.fileName1, 7))
            {
                //edit
                str = str + "\n" + EmailFileRead.CodeList[1];
            }
            if (EmailFileRead.FileCountDays(EmailFileRead.fileName1, 14))
            {
                //edit
                str = str + "\n" + EmailFileRead.CodeList[2];
            }
            if (EmailFileRead.FileCountDays(EmailFileRead.fileName1, 21))
            {
                str = str + "\n" + EmailFileRead.CodeList[3];
            }
            codes.Text = str;
        }
    }
}