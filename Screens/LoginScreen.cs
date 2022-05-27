using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;
using Plugin.Connectivity;

namespace Hello_MultiScreen_iPhone
{
    public partial class LoginScreen : UIViewController
    {
        public UITextField loginemail;
        public UITextField loginpassword;
        public UITextView LoginInstructions;
        public UITextView Usernamelabel;
        public UITextView Passwordlabel;
        public UITableView listView;

        public UIButton LoginButton;
        public UIButton UploadCloud;
        public UIButton DownloadCloud;
        public UIButton DeleteCloud;
        public UIButton Logout;
        public UIButton ShowText;
        public UITextView textView;

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
        public static String str = "Blob ";

        public static string[] list = {
            "Journal",
            "Todo List",
            "Images"
            };

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
            textView = new UITextView()
            {
                Editable = false
            };
            listView = new UITableView();
            loginemail = new UITextField();
            loginpassword = new UITextField();
            DownloadCloud = new UIButton(UIButtonType.System);
            DeleteCloud = new UIButton(UIButtonType.System);
            UploadCloud = new UIButton(UIButtonType.System);
            Logout = new UIButton(UIButtonType.System);
            ShowText = new UIButton(UIButtonType.System);

            LoginInstructions.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 100, ResponsiveSizeX, 80);
            LoginInstructions.Text = "Please login, choose pin and email for Cloud Services, save your one-time pin somewhere safe so " +
                "you can locate your files once again!";
            LoginInstructions.TextColor = UIColor.Black;
            LoginInstructions.BackgroundColor = UIColor.FromRGB(204, 204, 255);

            imageView3 = new UIImageView();
            imageView3.Image = UIImage.FromBundle("pinkflower.png");
            imageView3.Frame = new CGRect(ResponsiveWidthLeft+100, View.Frame.Top + 200, 80, 80);

            Usernamelabel.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 350, 80, 30);
            Usernamelabel.BackgroundColor = UIColor.FromRGB(204, 204, 255);
            Usernamelabel.Text = "Username: ";
            Usernamelabel.TextColor = UIColor.Black;

            Passwordlabel.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 400, 80, 30);
            Passwordlabel.Text = "Pin: ";
            Passwordlabel.BackgroundColor = UIColor.FromRGB(204, 204, 255);
            Passwordlabel.TextColor = UIColor.Black;

            listView.Frame = new CGRect(Usernamelabel.Frame.X, View.Frame.Top + 160, ResponsiveSizeX-90, 160);
            listView.Source = new TableSource(list);
            listView.BackgroundColor = UIColor.White;
 
            ShowText.Frame = new CGRect(Usernamelabel.Frame.X+220, View.Frame.Top + 160, 50, 30);
            ShowText.BackgroundColor = UIColor.SystemPurple;
            ShowText.SetTitle("View", UIControlState.Normal);

            loginemail.Frame = new CGRect(Usernamelabel.Frame.X+100, View.Frame.Top + 350, ResponsiveSizeX-80, 30);
            loginemail.BackgroundColor = UIColor.White;
            loginemail.TextColor = UIColor.SystemPurple;
            loginemail.KeyboardType = UIKeyboardType.ASCIICapable;
            loginemail.ReturnKeyType = UIReturnKeyType.Done;
            loginemail.ShouldReturn = (textField) => { textField.ResignFirstResponder(); return true; };
            loginpassword.ShouldReturn = (textField) => { textField.ResignFirstResponder(); return true; };
            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5View.AddGestureRecognizer (g);

            loginpassword.Frame = new CGRect(Passwordlabel.Frame.X+100, View.Frame.Top + 400, ResponsiveSizeX-80, 30);
            loginpassword.BackgroundColor = UIColor.White;
            loginpassword.TextColor = UIColor.SystemPurple;
            loginpassword.KeyboardType = UIKeyboardType.ASCIICapable;
            loginpassword.ReturnKeyType = UIReturnKeyType.Done;

            LoginButton.BackgroundColor = UIColor.SystemPurple;
            LoginButton.SetTitle("Login", UIControlState.Normal);
            LoginButton.Frame = new CGRect(ResponsiveWidthLeft+100, View.Frame.Top + 460, ResponsiveSizeX-80, 30);

            DownloadCloud.BackgroundColor = UIColor.SystemIndigo;
            DownloadCloud.SetTitle("Download Cloud Data", UIControlState.Normal);
            DownloadCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 350, ResponsiveSizeX, 30);

            textView.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 410, ResponsiveSizeX, 100);
            textView.Text = "";
            textView.BackgroundColor = UIColor.White;
            textView.TextColor = UIColor.Black;

            UploadCloud.BackgroundColor = UIColor.SystemBlue;
            UploadCloud.SetTitle("Upload Cloud Data", UIControlState.Normal);
            UploadCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 550, ResponsiveSizeX, 30);

            Logout.BackgroundColor = UIColor.SystemTeal;
            Logout.SetTitle("Logout", UIControlState.Normal);
            Logout.Frame = new CGRect(ResponsiveWidthRight, View.Frame.Top + 100, 50, 30);

            DeleteCloud.BackgroundColor = UIColor.Red;
            DeleteCloud.SetTitle("Delete Cloud Files", UIControlState.Normal);
            DeleteCloud.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 610, ResponsiveSizeX, 30);

            if (FireBaseRead.GetphoneID() != "")
            {
                LoginButton.Hidden = true;
                loginemail.Hidden = true;
                loginpassword.Hidden = true;
                DownloadCloud.Hidden = false;
                UploadCloud.Hidden = false;
                Logout.Hidden = true;
                Usernamelabel.Hidden = true;
                Passwordlabel.Hidden = true;
                listView.Hidden = false;
                DeleteCloud.Hidden = false;
                textView.Hidden = false;
                ShowText.Hidden = false;
                imageView3.Hidden = true;
            }
            else
            {
                LoginButton.Hidden = false;
                loginemail.Hidden = false;
                loginpassword.Hidden = false;
                DownloadCloud.Hidden = true;
                UploadCloud.Hidden = true;
                Logout.Hidden = true;
                listView.Hidden = true;
                Usernamelabel.Hidden = false;
                Passwordlabel.Hidden = false;
                DeleteCloud.Hidden = true;
                textView.Hidden = true;
                ShowText.Hidden = true;
                imageView3.Hidden = false;
            }

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
            DeleteCloud.AddTarget(DeleteCloudClick, UIControlEvent.TouchUpInside);
            ShowText.AddTarget(ClickEvent, UIControlEvent.TouchUpInside);

            //scrollView.Add(Logout);
            scrollView.Add(listView);
            scrollView.Add(ShowText);
            scrollView.Add(imageView3);
            scrollView.AddSubview(textView);
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
            ShowText.Layer.CornerRadius = 10;
            Logout.Layer.CornerRadius = 10;
            DeleteCloud.Layer.CornerRadius = 10;
            LoginButton.SetTitleColor(UIColor.White, UIControlState.Normal);
            DownloadCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
            UploadCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
            Logout.SetTitleColor(UIColor.White, UIControlState.Normal);
            DeleteCloud.SetTitleColor(UIColor.White, UIControlState.Normal);
            ShowText.SetTitleColor(UIColor.White, UIControlState.Normal);
        }

        void LoginButtonClick(object sender, EventArgs eventArgs)
        {
            if (loginemail.Text != "" && loginpassword.Text != "")
            {
                if (FireBaseRead.GetphoneID()=="")
                {
                    LoginButton.Hidden = true;
                    loginemail.Hidden = true;
                    loginpassword.Hidden = true;
                    DownloadCloud.Hidden = false;
                    UploadCloud.Hidden = false;
                    Logout.Hidden = false;
                    Usernamelabel.Hidden = true;
                    Passwordlabel.Hidden = true;
                    listView.Hidden = false;
                    DeleteCloud.Hidden = false;
                    textView.Hidden = false;
                    imageView3.Hidden = true;
                    ShowText.Hidden = false;
                    LoginInstructions.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 100, ResponsiveSizeX, 50);
                    FireBaseRead.cloudservices = true;
                    FireBaseRead.phoneID = loginemail.Text + loginpassword.Text;
                    FireBaseRead.Encrypt();
                    LoginInstructions.Text = "Welcome " + loginemail.Text + "!";
                    FireBaseRead.LoginEmail = loginemail.Text;
                    FireBaseRead.LoginPassword = loginpassword.Text;
                    textView.Text = FireBaseRead.DownloadFileStream(EmailFileRead.fileName1);
                }
                else
                {
                    var Confirm = new UIAlertView("Confirmation", "Already registered, please click confirm to repopulate your login", null, "Cancel", "Yes");
                    Confirm.Show();
                    Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
                    {
                        if (es.ButtonIndex == 0)
                        {
                        //Do nothing
                    }
                        else
                        {
                            loginemail.Text = FireBaseRead.LoginEmail;
                            loginpassword.Text = FireBaseRead.LoginPassword;
                        }
                    };
                }
                UIApplication.SharedApplication.KeyWindow.EndEditing(true);
                keyboardOpen = false;
                scrollView.ScrollRectToVisible(LoginInstructions.Frame, true);
            }
        }

        void UploadToCloud(object sender, EventArgs eventArgs)
        {
            String table = TableSource.SelectedRow;
            if(table=="")
            {
                table = list.First();
            }
            var Confirm = new UIAlertView("Confirmation", "Uploading to the cloud, "+table+" file(s), will not overwrite other changes so please share the files before! This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    if (TableSource.SelectedRow.Contains(list[0]))
                    {
                        FireBaseRead.UploadFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy")+": Uploaded ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[1]))
                    {
                        FireBaseRead.UploadFile(EmailFileRead.fileName2);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Uploaded ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[2]))
                    {
                        FireBaseRead.UploadSyncImages();
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Uploaded images";
                        ClickEvent(sender, eventArgs);
                    }
                    else 
                    {
                        FireBaseRead.UploadFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Uploaded ";
                        ClickEvent(sender, eventArgs);
                    }
                }
            };


        }

        void DeleteCloudClick(object sender, EventArgs eventArgs)
        {
            String table = TableSource.SelectedRow;
            if (table == "")
            {
                table = list.First();
            }

            var Confirm = new UIAlertView("Confirmation", "Deleting from the cloud, " + table + " file(s),will be deleted, This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    if (TableSource.SelectedRow.Contains(list[0]))
                    {
                        FireBaseRead.DeleteFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Deleted ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[1]))
                    {
                        FireBaseRead.DeleteFile(EmailFileRead.fileName2);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Deleted ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[2]))
                    {
                        FireBaseRead.DeleteSyncFiles();
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Deleted Images";
                        ClickEvent(sender, eventArgs);
                    }
                    else
                    {
                        FireBaseRead.DeleteFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Deleted ";
                        ClickEvent(sender, eventArgs);
                    }
                }
            };

        }

        void DownloadToCloud(object sender, EventArgs eventArgs)
        {
            String table = TableSource.SelectedRow;
            if (table == "")
            {
                table = list.First();
            }

            var Confirm = new UIAlertView("Confirmation", "Downloading from the cloud, " + table + " file(s),will overwrite other changes so please share the files before! This will take a while!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    if (TableSource.SelectedRow.Contains(list[0]))
                    {
                        FireBaseRead.DownloadFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Downloaded ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[1]))
                    {
                        FireBaseRead.DownloadFile(EmailFileRead.fileName2);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Downloaded ";
                        ClickEvent(sender, eventArgs);
                    }
                    else if (TableSource.SelectedRow.Contains(list[2]))
                    {
                        FireBaseRead.DownloadSyncFiles();
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Downloaded Images";
                        ClickEvent(sender, eventArgs);
                    }
                    else
                    {
                        FireBaseRead.DownloadFile(EmailFileRead.fileName1);
                        str = DateTime.Now.ToLocalTime().ToString("MMddyyyy") + ": Downloaded ";
                        ClickEvent(sender, eventArgs);
                    }
                    ClickEvent(sender, eventArgs);
                }
            };
        }

        void ClickEvent(object sender, EventArgs eventArgs)
        {

            if (TableSource.SelectedRow == list[1])
            {
                textView.Text = str + "Todo List to the Cloud\n" + FireBaseRead.DownloadFileStream(EmailFileRead.fileName2);
            }
            else if (TableSource.SelectedRow == list[2])
            {
                textView.Text = FireBaseRead.GetImageFiles();
            }
            else
            {
                textView.Text = str + "Journal to the Cloud\n" + FireBaseRead.DownloadFileStream(EmailFileRead.fileName1);
            }
        }



        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

                if (FireBaseRead.GetphoneID() != "")
                {
                    LoginButton.Hidden = true;
                    loginemail.Hidden = true;
                    loginpassword.Hidden = true;
                    DownloadCloud.Hidden = false;
                    UploadCloud.Hidden = false;
                    Logout.Hidden = true;
                    Usernamelabel.Hidden = true;
                    Passwordlabel.Hidden = true;
                    listView.Hidden = false;
                    DeleteCloud.Hidden = false;
                    textView.Hidden = false;
                    LoginInstructions.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 100, ResponsiveSizeX, 50);
                    ShowText.Hidden = false;
                    imageView3.Hidden = true;

                    FireBaseRead.phoneID = FireBaseRead.GetphoneID();
                    LoginInstructions.Text = "Welcome back! Use cloud services, download and upload to the cloud storage.";
                }
                else
                {
                    LoginButton.Hidden = false;
                    loginemail.Hidden = false;
                    loginpassword.Hidden = false;
                    DownloadCloud.Hidden = true;
                    UploadCloud.Hidden = true;
                    Logout.Hidden = true;
                    listView.Hidden = true;
                    Usernamelabel.Hidden = false;
                    Passwordlabel.Hidden = false;
                    DeleteCloud.Hidden = true;
                    textView.Hidden = true;
                    ShowText.Hidden = true;
                    imageView3.Hidden = false;
            }

            if (!FireBaseRead.IsConnected())
            {
                  
                DownloadCloud.Enabled = false;
                UploadCloud.Enabled = false;
                Logout.Enabled = false;
                DeleteCloud.Enabled = false;
                ShowText.Enabled = false;
                LoginInstructions.Text = "Lost Network Connection";
            }
            else
            {
                DownloadCloud.Enabled = true;
                UploadCloud.Enabled = true;
                Logout.Enabled = true;
                DeleteCloud.Enabled = true;
                ShowText.Enabled = true;
            }

        }


    }

        public class TableSource : UITableViewSource
        {
            string[] list;
            public TableSource() { }
            public TableSource(string[] list)
            {
                this.list = list;
            }

       

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
            {
                var cell = new UITableViewCell(UITableViewCellStyle.Default, "");
                cell.BackgroundColor = UIColor.White;
                string item = list[indexPath.Row];
                cell.TextLabel.Text = item;
                return cell;
            }

            public override nint RowsInSection(UITableView tableview, nint section)
            {
                return list.Length;
            }


            public static string SelectedRow="";

            public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
            {
                string item = list[indexPath.Row];
                //new UIAlertView("Row Selected", item, null, "OK").Show();
                SelectedRow = item;

        }

       
    }
    
}