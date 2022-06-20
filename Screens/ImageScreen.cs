using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;
using CoreGraphics;
using EmailReader;
using Tesseract.iOS;
using System.Threading.Tasks;

namespace Hello_MultiScreen_iPhone
{
    public partial class ImageScreen : UIViewController
    {
        public UIDatePicker dateTimeText;
        public UIImageView textViewWrite;
        public UIScrollView scrollView;//ps

        public UIButton ButtonDateClick;
        public UIButton ImagePickerButton;
        UIImagePickerController imagePicker;

        public UIButton ButtonDelete;
        public UIButton BackgroundImage;
        public UIButton ButtonDelete1Line;
        public UIImagePickerController pickerView;
        public UIButton CameraButton;
        public UIButton BackgroundImage2;
        public UIButton BackgroundImage3;
        public UIButton BackgroundImage4;
        public int i = 0;

        public UITextView readInfo;
        HomeScreen homeScreen; //MAY NEED TO BE COMMENTED OUT

        public nfloat ResponsiveWidthLeft = 300;
        public nfloat ResponsiveSizeX = 300;
        public nfloat ResponsiveWidthRight = 300;

        //loads the HelloUniverseScreen.xib file and connects it to this object
        public ImageScreen() : base("ImageScreen", null)
        {
            //this.Title = "Universe!";
            ViewDidLoad1();
        }

        //Create your journal page
        public void ViewDidLoad1()
        {
            var user = new UIViewController();
            user.View.BackgroundColor = UIColor.FromRGB(204, 204, 255);

            //Initialize Fields
            textViewWrite = new UIImageView();
            ButtonDelete = new UIButton(UIButtonType.System);
            ButtonDelete1Line = new UIButton(UIButtonType.System);
            ImagePickerButton = new UIButton(UIButtonType.System);
            CameraButton = new UIButton(UIButtonType.System);
            BackgroundImage = new UIButton(UIButtonType.System);
            BackgroundImage2 = new UIButton(UIButtonType.System);
            BackgroundImage3 = new UIButton(UIButtonType.System);
            BackgroundImage4 = new UIButton(UIButtonType.System);

            scrollView = new UIScrollView();
            dateTimeText = new UIDatePicker();
            dateTimeText.Hidden = true;
            ButtonDateClick = new UIButton(UIButtonType.System);

            //Buttons and edit properties
            textViewWrite.BackgroundColor = UIColor.White;

            ImagePickerButton.SetTitleColor(UIColor.White, UIControlState.Normal);
            ImagePickerButton.SetBackgroundImage(UIImage.FromBundle("gallery.png"), UIControlState.Normal);
            dateTimeText.AccessibilityHint = "Today's date";
            var calendar = new NSCalendar(NSCalendarType.Gregorian);
            var currentDate = NSDate.Now;
            var components = new NSDateComponents();
            components.Year = -60;
            NSDate minDate = calendar.DateByAddingComponents(components, currentDate, NSCalendarOptions.None);
            dateTimeText.MinimumDate = minDate;
            dateTimeText.Mode = UIDatePickerMode.Date;
            dateTimeText.MaximumDate = currentDate;

            ButtonDelete.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonDelete.BackgroundColor = UIColor.FromRGB(240, 137, 171);
            ButtonDelete1Line.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonDateClick.SetTitleColor(UIColor.White, UIControlState.Normal);
            ButtonDelete1Line.BackgroundColor = UIColor.FromRGB(240, 137, 171);
            ButtonDelete1Line.SetTitle("Delete", UIControlState.Normal);
            ButtonDelete.SetTitle("Start Over", UIControlState.Normal);
            ButtonDateClick.SetBackgroundImage(UIImage.FromBundle("mailicon.png"), UIControlState.Normal);

            UIImage img2 = new UIImage();

            DateTime myDate = (DateTime)dateTimeText.Date;
            myDate = myDate.ToLocalTime();
            String file = myDate.ToString("MMddyyyy");
            String fileName = EmailFileRead.GetImageFileName(myDate);

            CameraButton.SetTitleColor(UIColor.White, UIControlState.Normal);
            CameraButton.SetBackgroundImage(UIImage.FromBundle("camera.png"), UIControlState.Normal);

            BackgroundImage.SetTitleColor(UIColor.White, UIControlState.Normal);
            BackgroundImage.BackgroundColor = UIColor.SystemTeal;
            BackgroundImage.SetTitle("Home Image", UIControlState.Normal);

            BackgroundImage3.SetTitleColor(UIColor.White, UIControlState.Normal);
            BackgroundImage3.BackgroundColor = UIColor.SystemTeal;
            BackgroundImage3.SetBackgroundImage(UIImage.FromBundle("TestPic.png"), UIControlState.Normal);

            BackgroundImage4.SetTitleColor(UIColor.White, UIControlState.Normal);
            UIImage imgtitle = new UIImage();
            imgtitle = UIImage.FromFile(EmailFileRead.fileNameImage1);
            BackgroundImage4.SetBackgroundImage(imgtitle, UIControlState.Normal);
            //BackgroundImage4.SetTitle("Toggle Title", UIControlState.Normal);

            UIImage img4 = new UIImage();
            img4 = UIImage.FromBundle("pinkflower.png");
            BackgroundImage2.SetBackgroundImage(img4, UIControlState.Normal);
            BackgroundImage2.SetTitle("Home", UIControlState.Normal);
            BackgroundImage2.SetTitleColor(UIColor.White, UIControlState.Normal);

            //ScrollView
            scrollView = new UIScrollView
            {
                Frame = new CGRect(0, 0, View.Frame.Width+200, View.Frame.Height),
                ContentSize = new CGSize(View.Frame.Width + 200, View.Frame.Height + 300),
                BackgroundColor = UIColor.FromRGB(204, 204, 255),
                AutoresizingMask = UIViewAutoresizing.FlexibleHeight
            };
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            {
                scrollView = new UIScrollView();
            }
            curveRadius();
            //Button clicks
            ButtonDateClick.AddTarget(ButtonDateClickEvent, UIControlEvent.TouchUpInside);
            ButtonDelete.AddTarget(ButtonDeleteClick, UIControlEvent.TouchUpInside);
            ButtonDelete1Line.AddTarget(ButtonDelete1LineClick, UIControlEvent.TouchUpInside);
            dateTimeText.AddTarget(ButtonDateClickEnd, UIControlEvent.EditingDidEnd);
            ImagePickerButton.AddTarget(ButtonPickImageClick, UIControlEvent.TouchUpInside);
            CameraButton.AddTarget(openCamera, UIControlEvent.TouchUpInside);
            BackgroundImage.AddTarget(BackgroundImageShow, UIControlEvent.TouchUpInside);
            BackgroundImage2.AddTarget(ShowBGOptions, UIControlEvent.TouchUpInside);
            BackgroundImage3.AddTarget(BackgroundImageShow3, UIControlEvent.TouchUpInside);
            BackgroundImage4.AddTarget(BackgroundImageShow4, UIControlEvent.TouchUpInside);

            BackgroundImage.Hidden = true;
            BackgroundImage3.Hidden = true;
            BackgroundImage4.Hidden = true;
            //disable this doesn't crash

            //Add to View
            scrollView.Add(ButtonDelete1Line);
            scrollView.Add(ButtonDelete);
            scrollView.Add(ImagePickerButton);
            scrollView.Add(ButtonDateClick);
            scrollView.AddSubview(textViewWrite);
            scrollView.Add(dateTimeText);
            scrollView.Add(CameraButton);
            scrollView.Add(BackgroundImage);
            scrollView.Add(BackgroundImage2);
            scrollView.Add(BackgroundImage3);
            scrollView.Add(BackgroundImage4);
            View.AddSubview(scrollView);//ps

        }
        public void curveRadius()
        {
            ImagePickerButton.Layer.CornerRadius = 10;
            ButtonDateClick.Layer.CornerRadius = 10;
            CameraButton.Layer.CornerRadius = 10;
            BackgroundImage.Layer.CornerRadius = 10;
            BackgroundImage3.Layer.CornerRadius = 10;
            BackgroundImage4.Layer.CornerRadius = 10;
            ButtonDelete1Line.Layer.CornerRadius = 10;
            ButtonDelete.Layer.CornerRadius = 10;
        }

        public void ShowBGOptions(object sender, EventArgs eventArgs)
        {
            if (BackgroundImage.Hidden && BackgroundImage3.Hidden && BackgroundImage4.Hidden)
            {
                BackgroundImage.Hidden = false;
                BackgroundImage3.Hidden = false;
                BackgroundImage4.Hidden = false;
            }
            else
            {
                BackgroundImage.Hidden = true;
                BackgroundImage3.Hidden = true;
                BackgroundImage4.Hidden = true;
            }
        }

        public void BackgroundImageShow4(object sender, EventArgs eventArgs)
        {

            if (i == 1)
            {
                EmailFileRead.fileNameImage1 = "MainTitlePic1.png";
                i = 0;
            }
            else
            {
                EmailFileRead.fileNameImage1 = "MainTitlePic.png";
                i = 1;
            }
            BackgroundImage4.SetTitleColor(UIColor.White, UIControlState.Normal);
            UIImage imgtitle = new UIImage();
            imgtitle = UIImage.FromFile(EmailFileRead.fileNameImage1);
            BackgroundImage4.SetBackgroundImage(imgtitle, UIControlState.Normal);
        }

        public void BackgroundImageShow(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Add image on main page", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    UIImage img2 = new UIImage();
                    DateTime myDate = (DateTime)dateTimeText.Date;
                    myDate = myDate.ToLocalTime();
                    String file = myDate.ToString("MMddyyyy");
                    String fileName = EmailFileRead.GetImageFileName(myDate);
                    EmailFileRead.FileCopyToImageFile(fileName, EmailFileRead.fileNameImage);
                }
            };

        }

        public void BackgroundImageShow3(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Reset flower image main page", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    EmailFileRead.DeleteFile(EmailFileRead.fileNameImage);
                }
            };

        }

        public void ButtonDateClickEnd(object sender, EventArgs eventArgs)
        {

            UIImage img2 = new UIImage();
            DateTime myDate = (DateTime)dateTimeText.Date;
            myDate = myDate.ToLocalTime();
            String file = myDate.ToString("MMddyyyy");
            String fileName = EmailFileRead.GetImageFileName(myDate);
            img2 = UIImage.FromFile(fileName);
            textViewWrite.Image = img2;
        }

        void ButtonPickImageClick(object sender, EventArgs eventArgs)
        {

            imagePicker = new UIImagePickerController
            {
                SourceType = UIImagePickerControllerSourceType.PhotoLibrary,
                MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.PhotoLibrary)
            };

            // Set event handlers
            imagePicker.FinishedPickingMedia += OnImagePickerFinishedPickingMediaAsync;
            imagePicker.Canceled += OnImagePickerCancelled;

            this.PresentViewController(imagePicker, true, null);

        }

        // resize the image to be contained within a maximum width and height, keeping aspect ratio
        UIImage MaxResizeImage(UIImage sourceImage, float maxWidth, float maxHeight, UIImageView view)
        {
            view.Frame = new CGRect(ResponsiveWidthLeft, View.Frame.Top + 130, ResponsiveSizeX, ResponsiveSizeX);

            return sourceImage;
        }

        void OnImagePickerFinishedPickingMediaAsync(object sender, UIImagePickerMediaPickedEventArgs args)
        {
            UIImage image = args.EditedImage ?? args.OriginalImage;

            if (image != null)
            {
                // Convert UIImage to .NET Stream object
                DateTime myDate = (DateTime)dateTimeText.Date;
                myDate = myDate.ToLocalTime();
                EmailFileRead.DeleteImageFileName(myDate);

                NSData data;

                if (args.ReferenceUrl.PathExtension.Equals("PNG") || args.ReferenceUrl.PathExtension.Equals("png"))
                {
                    data = image.AsPNG();
                }
                else
                {
                    data = image.AsJPEG(1);
                }

                String file = myDate.ToString("MMddyyyy");
                String fileName = System.IO.Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "image_" + file + args.ReferenceUrl.PathExtension);
                NSError err = null;
                EmailFileRead.DeleteImageFileName(fileName.Replace(args.ReferenceUrl.PathExtension, ""));
                EmailFileRead.DeleteImageFileName(fileName.Replace(".jpg", ""));

                data.Save(fileName, false, out err);


                var v = MaxResizeImage(image, (float)View.Frame.Width - 20, (float)View.Frame.Width - 20, textViewWrite);

                textViewWrite.Image = v;
            }
            else
            {
            }
            imagePicker.DismissModalViewController(true);
        }


        void OnImagePickerCancelled(object sender, EventArgs args)
        {
            imagePicker.DismissModalViewController(true);
        }


        //Delete everything your story
        private void ButtonDeleteClick(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Are you Sure ", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    EmailFileRead.DeleteAllImages();
                    textViewWrite.Image = null;

                }
            };
        }

        //Delete 1 line
        private void ButtonDelete1LineClick(object sender, EventArgs eventArgs)
        {
            var Confirm = new UIAlertView("Confirmation", "Are you Sure?", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    DateTime myDate = (DateTime)dateTimeText.Date;
                    myDate = myDate.ToLocalTime();
                    EmailFileRead.DeleteImageFileName(myDate);
                    textViewWrite.Image = null;
                }
            };
        }

        //Share at click upon date
        private void ButtonDateClickEvent(object sender, EventArgs eventArgs)
        {
            DateTime myDate = (DateTime)dateTimeText.Date;
            myDate = myDate.ToLocalTime();
            var txt2 = NSData.FromFile(EmailReader.EmailFileRead.GetImageFileName(myDate));
            var item = NSObject.FromObject(txt2);

            var activityItems = new NSObject[] { item }; //, item3 };
            UIActivity[] applicationActivities = null;

            var activityController = new UIActivityViewController(activityItems, applicationActivities);

            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
            {
                PresentViewController(activityController, true, null);
            }
            else
            {
                UIPopoverController popup = new UIPopoverController(activityController);
                var CGrect = new CGRect(View.Frame.Left, View.Frame.Bottom + 100, 100, 100);
                popup.PresentFromRect(CGrect, View, UIPopoverArrowDirection.Any, true);
                PresentViewController(activityController, true, null);
            }
        }

        private void openCamera(object sender, EventArgs eventArgs)
        {

            // Set event handlers
            if (UIImagePickerController.IsSourceTypeAvailable(UIImagePickerControllerSourceType.Camera))
            {
                pickerView = new UIImagePickerController();
                pickerView.SourceType = UIImagePickerControllerSourceType.Camera;

                pickerView.FinishedPickingMedia += Handle_FinishedPickingMedia;
                pickerView.Canceled += Handle_Canceled;

                this.PresentViewController(pickerView, true, null);


            }
            else
            {
                this.CameraButton.Hidden = true;
            }


        }

        protected void Handle_FinishedPickingMedia(object sender, UIImagePickerMediaPickedEventArgs e)
        {

            // get the original image
            var image = e.Info[UIImagePickerController.OriginalImage] as UIImage;
            if (image != null)
            {
                DateTime myDate = (DateTime)dateTimeText.Date;
                myDate = myDate.ToLocalTime();
                EmailFileRead.DeleteImageFileName(myDate);
                // Convert UIImage to .NET Stream object
                NSData data;
                data = image.AsJPEG();


                String file = myDate.ToString("MMddyyyy");
                String fileName = System.IO.Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "image_" + file + ".jpg");
                NSError err = null;
                EmailFileRead.DeleteImageFileName(fileName.Replace(".jpg",""));
                data.Save(fileName, false, out err);

                var v = MaxResizeImage(image, (float)View.Frame.Width - 20, (float)View.Frame.Width - 20, textViewWrite);

                textViewWrite.Image = v;

            }

            pickerView.DismissModalViewController(true);
        }

        void Handle_Canceled(object sender, EventArgs e)
        {
            pickerView.DismissModalViewController(true);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            var Confirm = new UIAlertView("Out of memory", "Will delete pictures if too much except for this month!", null, "Cancel", "Yes");
            Confirm.Show();
            Confirm.Clicked += (object senders, UIButtonEventArgs es) =>
            {
                if (es.ButtonIndex == 0)
                {
                    //Do nothing
                }
                else
                {
                    EmailFileRead.DeleteAllImagesBeforeToday();
                }
            };
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            if (UIKit.UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
            { 
                scrollView.Frame = new CGRect(0, 0, View.Frame.Width, View.Frame.Height);
                scrollView.ContentSize = new CGSize(View.Frame.Width, View.Frame.Height + 300);
                scrollView.BackgroundColor = UIColor.FromRGB(204, 204, 255);
                scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight;
            }
            dateTimeText.Hidden = false;
            UIImage img2 = new UIImage();

            DateTime myDate = (DateTime)dateTimeText.Date;
            myDate = myDate.ToLocalTime();
            String file = myDate.ToString("MMddyyyy");
            String fileName = EmailFileRead.GetImageFileName(myDate);

            img2 = UIImage.FromFile(fileName);
            textViewWrite.Image = img2;
            BackgroundImage.Hidden = true;
            BackgroundImage3.Hidden = true;
            BackgroundImage4.Hidden = true;

            ResponsiveWidthLeft = View.Frame.Width / 10;
            ResponsiveSizeX = View.Frame.Width - ResponsiveWidthLeft * 2;
            ResponsiveWidthRight = View.Frame.Width - ResponsiveWidthLeft * 2 - 65;

            img2 = UIImage.FromFile(fileName);
            var e = MaxResizeImage(img2, (float)View.Frame.Width - 20, (float)View.Frame.Width - 20, textViewWrite);
            textViewWrite.Image = e;
            dateTimeText.Frame = new CGRect(ResponsiveWidthRight, View.Frame.Top + 80, 100, 30);

            ImagePickerButton.Frame = new CGRect(ResponsiveWidthLeft + 60, textViewWrite.Frame.Bottom + 15, 50, 50);
            CameraButton.Frame = new CGRect(ResponsiveWidthLeft, textViewWrite.Frame.Bottom+15, 50, 50);

            ButtonDateClick.Frame = new CGRect(ResponsiveWidthRight + 50, textViewWrite.Frame.Bottom+15, 50, 50);
            ButtonDelete.Frame = new CGRect(ResponsiveWidthRight, CameraButton.Frame.Bottom + 20, 100, 30);
            ButtonDelete1Line.Frame = new CGRect(ResponsiveWidthLeft, CameraButton.Frame.Bottom + 20, 100, 30);
            BackgroundImage2.Frame = new CGRect(ResponsiveWidthLeft, ButtonDelete1Line.Frame.Bottom + 20, 60, 60);
            BackgroundImage3.Frame = new CGRect(ResponsiveWidthRight + 50, ButtonDelete1Line.Frame.Bottom + 20, 50, 50);
            BackgroundImage.Frame = new CGRect(ResponsiveWidthRight, BackgroundImage2.Frame.Y + 70, 100, 30);
            BackgroundImage4.Frame = new CGRect(ResponsiveWidthLeft, BackgroundImage2.Frame.Y + 70, 100, 30);


        }

    }
}
