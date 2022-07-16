using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;

namespace Hello_MultiScreen_iPhone
{
	public partial class EditJournalScreen : UIViewController
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

        public UIImage imageView;
        public UIView View1;
        public UIView View2;
        public UIView View3;
        public UIScrollView scrollView;//ps

        public UITextField hiddenbuttoncode;
        public UIButton hiddenbutton;
        public UIButton EditJournalButton;

        public UITextView readInfo;

        HelloUniverseScreen hellouniversescreen; //MAY NEED TO BE COMMENTED OUT
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
        public EditJournalScreen() : base ("EditJournalScreen", null)
	{
		//this.Title = "Read Journal!";
		ViewDidLoad1();
	}

        //Read your journal page
        public void ViewDidLoad1()
        {

            //View Issue
            View.BackgroundColor = UIColor.FromRGB(178,178,227);
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(178, 178, 227);
            this.View.LargeContentTitle = "";

            //Initialize Buttons
            Button3 = new UIButton(UIButtonType.System);
            booktextView = new UITextView()
            {
                Editable = true
            };

            ButtonDelete = new UIButton(UIButtonType.System);
            ButtonDelete.SetTitleColor(UIColor.White, UIControlState.Normal);

            ButtonDelete.BackgroundColor = UIColor.FromRGB(255, 69, 103);
            ButtonDelete.SetTitle("Start Over", UIControlState.Normal);
            ButtonDelete.Layer.CornerRadius = 10;


            booktextView.Text = EmailFileRead.ReadText();
            booktextView.BackgroundColor = UIColor.White;
            booktextView.TextColor = UIColor.Black;
            booktextView.UserInteractionEnabled = true;
            booktextView.ScrollEnabled = true;
            booktextView.KeyboardType = UIKeyboardType.ASCIICapable;
            booktextView.ReturnKeyType = UIReturnKeyType.Done;

            var gestureToCloseKeyboard = new UITapGestureRecognizer(() => View.EndEditing(true));
            booktextView.ShouldChangeText = (text, range, replacementString) =>
            {
                if (replacementString.Equals("\n"))
                {
                    booktextView.EndEditing(true);
                    keyboardShowing = false;
                    return false;
                }
                else
                {
                    return true;
                }
            };
            //booktextView.KeyboardType = UIKeyboardType.EmailAddress;
            //booktextView.ReturnKeyType = UIReturnKeyType.Send;
  
            Button3.SetTitle("Save", UIControlState.Normal);
            Button3.BackgroundColor = UIColor.SystemBlue;
            Button3.SetTitleColor(UIColor.White, UIControlState.Normal);
            Button3.Layer.CornerRadius = 10;

            //ScrollView
 
            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 250),
                BackgroundColor = HomeScreen.color,
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            {
                scrollView = new UIScrollView();
            }
          

            Button3.AddTarget(Button3Click, UIControlEvent.TouchUpInside);
            ButtonDelete.AddTarget(ButtonDeleteClick, UIControlEvent.TouchUpInside);


            //Add to view
            scrollView.Add(Button3);
            scrollView.Add(ButtonDelete);
            scrollView.Add(booktextView);
            View.AddSubview(scrollView);
            keyboardOpen = false;
            keyBoardWillShow = UIKeyboard.Notifications.ObserveWillShow(KeyboardWillShow);

            keyBoardWillHide = UIKeyboard.Notifications.ObserveWillHide(KeyboardWillHide);


        }

        //Delete everything your story
        private void ButtonDeleteClick(object sender, EventArgs eventArgs)
        {

            var Confirm = new UIAlertView("Confirmation", "This will delete everything in the journal, are you sure? This will return to the journal when complete!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    EmailFileRead.DeleteText();
                    booktextView.Text = String.Empty;
                    booktextView.Text = EmailFileRead.ReadText();
                    if (this.hellouniversescreen == null) { this.hellouniversescreen = new HelloUniverseScreen(); }
                    this.NavigationController.PushViewController(this.hellouniversescreen, true);
                }
            };
        }

        void KeyboardWillShow(object sender, UIKeyboardEventArgs args)
        {
            keyboardShowing = booktextView.Focused;
            if (!keyboardOpen)
            {
                keyboardShowing = true;
                animDuration = args.AnimationDuration;
                animCurve = args.AnimationCurve;
                int i = 200;
                if (View.Frame.Height >= 670)
                    i = 30;
                if (View.Frame.Height == 812)
                    i = 100;
                if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
                    i = 0;
                var cGFrame = new CGRect(View.Frame.Left, View.Frame.Bottom - 30, 100, i);
                scrollView.ScrollRectToVisible(cGFrame, true);

                var r = UIKeyboard.FrameBeginFromNotification(args.Notification);
                //if (r.Left >= booktextView.Frame.Right || r.Top >= booktextView.Frame.Bottom || r.Right <= booktextView.Frame.Left || r.Bottom <= booktextView.Frame.Top)
                if (r.Top >= booktextView.Frame.Bottom)

                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - booktextView.Frame.Bottom) + r.Height / 4;
                    //ScrollTheView(true);
                    keyboardOpen = true;
                }
            }
        }

        void KeyboardWillHide(object sender, UIKeyboardEventArgs args)
        {
            var cGFrame = new CGRect(View.Frame.Left, View.Frame.Top, 100, 200);
            scrollView.ScrollRectToVisible(cGFrame, true);
            if (keyboardOpen)
            {
                keyboardShowing = false;
                animDuration = args.AnimationDuration;
                animCurve = args.AnimationCurve;

                var r = UIKeyboard.FrameBeginFromNotification(args.Notification);
                if (r.Top >= booktextView.Frame.Bottom)
                {

                }
                else
                {
                    scrollAmout = -1 * (r.Top - booktextView.Frame.Bottom) + r.Height / 4;

                    //ScrollTheView(false);
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


        //Submit total edit
        private void Button3Click(object sender, EventArgs eventArgs)
        {
            //textViewWrite = new UITextView();
            //editTextWrite = new UITextField();
            if (EmailFileRead.FileSizeWarning())
            {
                var Confirm = new UIAlertView("Confirmation", "File is too big, please send", null, "Cancel", "Yes");
                Confirm.Show();
                Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
                {
                    if (es.ButtonIndex == 0)
                    {
                        //Do nothing
                    }
                    else
                    {
                        //Do nothing
                    }
                };

            }
            else
            {
                var Confirm = new UIAlertView("Confirmation", "Save your journal", null, "Cancel", "Yes");
                Confirm.Show();
                Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
                {
                    if (es.ButtonIndex == 0)
                    {
                        //Do nothing
      			}
                    else
                    {
                String text = booktextView.Text;
                if (booktextView.Text == String.Empty)
                    text = "";
                EmailFileRead.WriteAllText(text);
                String totalText = EmailFileRead.ReadText();
		        booktextView.Text=totalText;
                UIApplication.SharedApplication.KeyWindow.EndEditing(true);
                keyboardOpen = false;
                        //Do nothing
                    }
                };
               
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
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            {
                scrollView.Frame = new CGRect(0, 0, View.Frame.Width + 200, View.Frame.Height);
                scrollView.ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 300);
                scrollView.BackgroundColor = HomeScreen.color;
                scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight;
            }
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad || View.Frame.Height >= 1300)
                booktextView.Font = UIFont.SystemFontOfSize(14);

            booktextView.Text = EmailFileRead.ReadText();
            UIApplication.SharedApplication.KeyWindow.EndEditing(true);
            keyboardOpen = false;

            ResponsiveWidthLeft = View.Frame.Width / 12;
            ResponsiveSizeX = View.Frame.Width - ResponsiveWidthLeft * 2;
            ResponsiveWidthRight = View.Frame.Width - ResponsiveWidthLeft * 2 - 65;

            scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height + View.Frame.Height / 4.5); //small
            if (View.Frame.Height >= 670)
                scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height + View.Frame.Height / 500); //big
            if (View.Frame.Height == 812)
                scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height + View.Frame.Height / 26); //small

            booktextView.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 50, ResponsiveSizeX, 440);
            ButtonDelete.Frame = new CGRect(ResponsiveWidthLeft, booktextView.Frame.Bottom+20, 100, 30);
            Button3.Frame = new CGRect(ResponsiveWidthRight, booktextView.Frame.Bottom + 20, 100, 30);
            this.NavigationController.NavigationBar.BarTintColor = UIColor.SystemIndigo;
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
        }
    }
}
