using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;

namespace Hello_MultiScreen_iPhone
{
    public partial class LoginScreen : UIViewController
    {
        public UITextField loginemail;
        public UITextField loginpassword;
        public UITextView LoginInstructions;
        public UITextView Usernamelabel;
        public UITextView Passwordlabel;

        public UIButton LoginButton;
        public UIButton UploadCloud;
        public UIButton DownloadCloud;
        public UIButton DeleteCloud;
        public UIButton Logout;

        public UIImageView imageView3;
        public UIScrollView scrollView;

        HomeScreen homeScreen; //MAY NEED TO BE COMMENTED OUT
        public nfloat ResponsiveWidthLeft = 300;
        public nfloat ResponsiveSizeX = 300;
        public nfloat ResponsiveWidthRight = 300;

        private NSObject keyBoardWillShow;
        private NSObject keyBoardWillHide;
        private nfloat scrollAmout;
        private double animDuration;
        private UIViewAnimationCurve animCurve;
        private bool keyboardShowing;
        private bool keyboardOpen = false;

        //loads the HelloWorldScreen.xib file and connects it to this object
        public LoginScreen() : base("LoginScreen", null)
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
            ResponsiveWidthLeft = View.Frame.Width / 8;
            nfloat size = 30;
            if (View.Frame.Width / 8 >= View.Frame.Width - 30)
                size = View.Frame.Width / 8;
            ResponsiveSizeX = View.Frame.Width - size;
            ResponsiveWidthRight = View.Frame.Width - 90;

            //View Issue
            View.BackgroundColor = UIColor.FromRGB(178, 178, 227);
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(178, 178, 227);

            //Initialize Buttons
            LoginButton = new UIButton(UIButtonType.System);
            LoginInstructions = new UITextView()
            {
                Editable = false
            };
            Usernamelabel = new UITextView()
            {
                Editable = false
            };
            Passwordlabel = new UITextView()
            {
                Editable = false
            };

            loginemail = new UITextField();
            loginpassword = new UITextField();
            DownloadCloud = new UIButton(UIButtonType.System);
            DeleteCloud = new UIButton(UIButtonType.System);
            UploadCloud = new UIButton(UIButtonType.System);
            Logout = new UIButton(UIButtonType.System);

            LoginInstructions.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 160, ResponsiveSizeX, 50);
            LoginInstructions.Text = "Login to Sync Cloud";

            Usernamelabel.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 260, 100, 50);
            Usernamelabel.Text = "Username: ";

            Passwordlabel.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 360, 100, 50);
            Passwordlabel.Text = "Password: ";

            loginemail.Frame = new CGRect(Usernamelabel.Frame.X+100, View.Frame.Top + 260, ResponsiveSizeX-100, 50);
            loginemail.BackgroundColor = UIColor.FromRGB(230, 230, 250);
            loginemail.TextColor = UIColor.SystemPurple;
            loginemail.KeyboardType = UIKeyboardType.ASCIICapable;
            loginemail.ReturnKeyType = UIReturnKeyType.Done;

            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5View.AddGestureRecognizer (g);

            loginpassword.Frame = new CGRect(Passwordlabel.Frame.X+100, View.Frame.Top + 360, ResponsiveSizeX-100, 50);
            loginpassword.BackgroundColor = UIColor.FromRGB(230, 230, 250);
            loginpassword.TextColor = UIColor.SystemPurple;
            loginpassword.KeyboardType = UIKeyboardType.ASCIICapable;
            loginpassword.ReturnKeyType = UIReturnKeyType.Done;

            LoginButton.BackgroundColor = UIColor.SystemPurple;
            LoginButton.SetTitle("Login", UIControlState.Normal);
            LoginButton.Frame = new CGRect(ResponsiveWidthLeft+30, View.Frame.Top + 460, ResponsiveSizeX, 30);

            DownloadCloud.BackgroundColor = UIColor.SystemPurple;
            DownloadCloud.SetTitle("Download Cloud Data", UIControlState.Normal);
            DownloadCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 260, ResponsiveSizeX, 30);

            UploadCloud.BackgroundColor = UIColor.SystemPurple;
            UploadCloud.SetTitle("Upload Cloud Data", UIControlState.Normal);
            UploadCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 360, ResponsiveSizeX, 30);

            Logout.BackgroundColor = UIColor.SystemPurple;
            Logout.SetTitle("Logout", UIControlState.Normal);
            Logout.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 460, ResponsiveSizeX, 30);

            DeleteCloud.BackgroundColor = UIColor.SystemPurple;
            DeleteCloud.SetTitle("Delete Cloud Files", UIControlState.Normal);
            DeleteCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 560, ResponsiveSizeX, 30);

            FireBaseRead.cloudservices = false;
            FireBaseRead.phoneID = "";

            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 300),
                BackgroundColor = UIColor.FromRGB(204, 204, 255),
                //BackgroundColor = UIColor.FromRGB(178, 178, 227),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            curveRadius();
            LoginButton.AddTarget(LoginButtonClick, UIControlEvent.TouchUpInside);
            DownloadCloud.AddTarget(DownloadToCloud, UIControlEvent.TouchUpInside);
            UploadCloud.AddTarget(UploadToCloud, UIControlEvent.TouchUpInside);
            Logout.AddTarget(LogoutCloud, UIControlEvent.TouchUpInside);
            DeleteCloud.AddTarget(DeleteCloudClick, UIControlEvent.TouchUpInside);

            scrollView.Add(Logout);
            scrollView.Add(loginemail);
            scrollView.AddSubview(LoginInstructions);
            scrollView.AddSubview(Usernamelabel);
            scrollView.AddSubview(Passwordlabel);
            scrollView.Add(LoginButton);
            scrollView.Add(DeleteCloud);
            scrollView.Add(loginpassword);
            scrollView.Add(DownloadCloud);
            scrollView.Add(UploadCloud);
            View.AddSubview(scrollView);
        }

        void KeyboardWillShow(object sender, UIKeyboardEventArgs args)
        {
            keyboardShowing = loginpassword.Focused;
            if (!keyboardOpen)
            {
                keyboardShowing = true;
                animDuration = args.AnimationDuration;
                animCurve = args.AnimationCurve;

                var r = UIKeyboard.FrameBeginFromNotification(args.Notification);
                //if (r.Left >= editTextWrite.Frame.Right || r.Top >= editTextWrite.Frame.Bottom || r.Right <= editTextWrite.Frame.Left || r.Bottom <= editTextWrite.Frame.Top)
                if (r.Top >= loginpassword.Frame.Bottom)
                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - loginpassword.Frame.Bottom) + r.Height / 5;
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
                //if (r.Left >= editTextWrite.Frame.Right || r.Top >= editTextWrite.Frame.Bottom || r.Right <= editTextWrite.Frame.Left || r.Bottom <= editTextWrite.Frame.Top)
                if (r.Top >= loginpassword.Frame.Bottom)
                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - loginpassword.Frame.Bottom) + r.Height / 5;
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
                frame.Y -= scrollAmout;
            }
            else
            {
                frame.Y += scrollAmout;
            }

            View.Frame = frame;
            UIView.CommitAnimations();
        }

        public void curveRadius()
        {
            LoginButton.Layer.CornerRadius = 10;
            DownloadCloud.Layer.CornerRadius = 10;
            UploadCloud.Layer.CornerRadius = 10;
            Logout.Layer.CornerRadius = 10;
            DeleteCloud.Layer.CornerRadius = 10;
            LoginButton.SetTitleColor(UIColor.White, UIControlState.Normal);
            DownloadCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
            UploadCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
            Logout.SetTitleColor(UIColor.White, UIControlState.Normal);
            DeleteCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
        }

        void LoginButtonClick(object sender, EventArgs eventArgs)
        {
            LoginInstructions.Text = "Welcome " + loginemail.Text + "!";
            FireBaseRead.cloudservices = true;
            FireBaseRead.phoneID = loginemail.Text + loginpassword.Text;
            LoginButton.Hidden = true;
            loginemail.Hidden = true;
            loginpassword.Hidden = true;
            DownloadCloud.Hidden = false;
            UploadCloud.Hidden = false;
            Logout.Hidden = false;
            Usernamelabel.Hidden = true;
            Passwordlabel.Hidden = true;
            DeleteCloud.Hidden = false;
            UIApplication.SharedApplication.KeyWindow.EndEditing(true);
            keyboardOpen = false;
            scrollView.ScrollRectToVisible(LoginInstructions.Frame, true);
        }

        void UploadToCloud(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Uploading to the cloud, all files,will overwrite other changes so please share the files before! This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    FireBaseRead.UploadFile(EmailFileRead.fileName1);
                    FireBaseRead.UploadFile(EmailFileRead.fileName2);
                    FireBaseRead.UploadSyncImages();
                }
            };


        }

        void DeleteCloudClick(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Deleting from the cloud, all files,will be deleted, This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    FireBaseRead.DeleteFile(EmailFileRead.fileName1);
                    FireBaseRead.DeleteFile(EmailFileRead.fileName2);
                    FireBaseRead.DeleteSyncFiles();
                }
            };

        }

        void DownloadToCloud(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Downloading from the cloud, all files,will overwrite other changes so please share the files before! This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    FireBaseRead.DownloadFile(EmailFileRead.fileName1);
                    FireBaseRead.DownloadFile(EmailFileRead.fileName2);
                    FireBaseRead.DownloadSyncFiles();
                }
            };
        }

        void LogoutCloud(object sender, EventArgs eventArgs)
        {
            LoginInstructions.Text = "Login";
            FireBaseRead.cloudservices = false;
            FireBaseRead.phoneID = "";
            LoginButton.Hidden = false;
            loginemail.Hidden = false;
            loginpassword.Hidden = false;
            DownloadCloud.Hidden = true;
            UploadCloud.Hidden = true;
            Logout.Hidden = true;
            Usernamelabel.Hidden = false;
            Passwordlabel.Hidden = false;
            DeleteCloud.Hidden = true;
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            if (FireBaseRead.cloudservices)
            {
                LoginButton.Hidden = true;
                loginemail.Hidden = true;
                loginpassword.Hidden = true;
                DownloadCloud.Hidden = false;
                UploadCloud.Hidden = false;
                Logout.Hidden = false;
                Usernamelabel.Hidden = true;
                Passwordlabel.Hidden = true;
                DeleteCloud.Hidden = false;
            }
            else
            {
                LoginButton.Hidden = false;
                loginemail.Hidden = false;
                loginpassword.Hidden = false;
                DownloadCloud.Hidden = true;
                UploadCloud.Hidden = true;
                Logout.Hidden = true;
                Usernamelabel.Hidden = false;
                Passwordlabel.Hidden = false;
                DeleteCloud.Hidden = true;
            }


        }

    }
}