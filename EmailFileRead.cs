//using MailKit.Security;
//using MimeKit;
//using MimeKit.Text;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
//using MailKit.Net.Smtp;


namespace EmailReader //rename
{
    public class EmailFileRead
    {
        public EmailFileRead()
        {

        }

        public static string fileName1 = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "notes.txt");
        public static string fileName2 = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "todo.txt");
        public static string srcFolder = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        public static string fileNameImage = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "background.jpg");
        public static string fileNameImage1 = "MainTitlePic1.png";
        public static string fileNameImage2 = "MainTitlePic1.png";
        public static string code = "";
        public static List<String> CodeList = new List<String> { "strcode1", "strcodexx10", "strcodex50", "strcodea100", "stockhelm", "emma", "emma stockhelm" };

        public static String ReadText(String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;
            if (File.Exists(fileName))
                return File.ReadAllText(fileName);
            else
            {
                File.WriteAllText(fileName, "");
                return "";
            }
        }


        public static bool FileExists(String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;
            if (File.Exists(fileName))
                return true;
            else
            {
                return false;
            }
        }

        public static bool FileCopyToImageFile(String fileName = "", String fileName2 = "")
        {
            try
            {
                File.Copy(fileName, fileName2, true);
                return File.Exists(fileName2);
            }
            catch(Exception e)
            {
                return false;
            }
        }

        public static void DeleteFile(String fileName = "")
        {
            if (File.Exists(fileName))
            {
                File.Delete(fileName);
            }            
        }

        public static void FileCopyToImageName(String fileName = "")
        {
           if(fileName!=null)
            fileNameImage = fileName;
        }

        public static void FileCopy (String fileName, String fileName2)
        {
            if (fileName == "")
                fileName = fileName1;
            File.Copy(fileName, fileName2, true);
        }

        public static String GetImageFileName(DateTime day)
        {
            String file = "";
            DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
            foreach (FileInfo v in dir.GetFiles())
            {
                if(v.FullName.Contains(day.ToString("MMddyyyy")))
                {
                    file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                }
            }
            return file;
        }

        public static void DeleteImageFileName(DateTime day)
        {
            String file = "";
            DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
            foreach (FileInfo v in dir.GetFiles())
            {
                if (v.FullName.Contains(day.ToString("MMddyyyy")))
                {
                    file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                }
            }
            
            if(file!="")
                File.Delete(file);
        }

        public static void DeleteImageFileName(String str)
        {
            String file = "";
            DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
            foreach (FileInfo v in dir.GetFiles())
            {
                if (v.FullName.Contains(str) && v.FullName.Contains("image"))
                {
                    file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                    if (file != "")
                        File.Delete(file);
                }
            }
        }

        public static void DeleteAllImages()
        {
            String file = "";
            DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
            foreach (FileInfo v in dir.GetFiles())
            {
                if (v.FullName.Contains("image_"))
                {
                    file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                    File.Delete(file);
                }
            }
        }

        public static void DeleteAllImagesBeforeToday()
        {
            String file = "";
            DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
            foreach (FileInfo v in dir.GetFiles())
            {
                bool thismonthyear = v.FullName.Contains(DateTime.Now.ToLocalTime().ToString("MM")) && v.FullName.Contains(DateTime.Now.ToLocalTime().ToString("yyyy"));
                if (v.FullName.Contains("image_") && !(thismonthyear))
                {
                    file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                    File.Delete(file);
                }
            }
        }

        public static String ReadFileFromDate(String fileName = "", int day = 0)
        {
            if (fileName == "")
                fileName = fileName1;

            String myString = File.ReadAllText(fileName);
            string toBeSearched = DateTime.Now.AddDays(-1 * day).ToString("MM/dd/yyyy") + ":";
            int ix = myString.IndexOf(toBeSearched);

            if (ix != -1)
            {
                string code = myString.Substring(ix);
                return code;
            }
            else
            {
                toBeSearched = DateTime.Now.ToString("MM/dd/yyyy") + ":";
                ix = myString.IndexOf(toBeSearched);

                if (ix != -1)
                {
                    String code = myString.Substring(ix);
                    return code;
                }
                else
                {
                    return "";
                }
            }
        }

        public static String ReadFileFromDateToNextDay(DateTime myDate, String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;

            String myString = File.ReadAllText(fileName);

            string toBeSearched = myDate.ToString("MM/dd/yyyy") + ":";
            string toBeSearched2 = myDate.AddDays(1).ToString("MM/");
            string toBeSearched3 = myDate.AddDays(1).ToString("yyyy") + ":";

            int ix = myString.IndexOf(toBeSearched);
            if (ix != -1)
            {
                string code = myString.Substring(ix);
                try
                {
                    int ix2 = code.IndexOf(toBeSearched2, 10);
                    if (ix2 != -1)
                    {
                        return code.Substring(0, ix2);
                    }
                    else
                    {
                        int iy = code.IndexOf(toBeSearched3, 10);
                        if (iy != -1)
                            return code.Substring(0, iy - 6);
                        else
                            return code;
                    }
                }
                catch (Exception e)
                { return code; }
            }
            else
            {
                toBeSearched = DateTime.Now.ToString("MM/dd/yyyy") + ":";
                ix = myString.IndexOf(toBeSearched);
                if (ix != -1)
                {
                    String code = myString.Substring(ix);
                    return code;
                }
                else
                {
                    return "";
                }
            }
        }

        public static void WriteText(String text, String fileName = "", bool list = false)
        {
            if (fileName == "")
                fileName = fileName1;
            string format = "MM/dd/yyyy";
            String date = "\n" + DateTime.Now.ToString(format) + ":\n";
            if(list)
                date = "\n" + DateTime.Now.ToString(format) + ":\n• ";
            if (File.ReadAllText(fileName).Contains(DateTime.Now.ToString(format)))
            {
                if (list)
                    date = "• ";
                else
                    date = "";
            }
            File.AppendAllText(fileName,date+text+"\n");
        }

        public static void WriteAllText(String text, String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;
            if (!text.StartsWith('\n'))
                text = "\n" + text;
            File.WriteAllText(fileName, text);
        }

        public static void DeleteText(String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;
            File.WriteAllText(fileName, "");
        }

        public static void DeleteLastLine(String fileName = "")
        {
            if (fileName == "")
                fileName = fileName1;
            var v = File.ReadAllLines(fileName).ToList<String>();
            try
            {
                if (v.Count > 1)
                {
                    v.Remove(v.Last());
                    if (v.Last() == String.Empty)
                        v.RemoveAt(v.Count - 1);
                }
                else if (v.Count >= 0)
                {
                    v.Remove(v.Last());
                }
                File.WriteAllLines(fileName, v);
            }
            catch (Exception e)
            { }
        }

        public static bool ValidateEmail(String email = "")
        {
            return email.Contains("@") && email.Contains(".") && email!="";
        }
        /*
        public static void EmailTestResultsEmail(String e, String fileText = "", String fileInfo = "", int seconds = 20)
        {
            try
            {
                // create email message
                var email = new MimeMessage();
                email.From.Add(MailboxAddress.Parse(Credentials.emailFrom));
                email.To.Add(MailboxAddress.Parse(e));
                email.Subject = "Your story creative...";
                var part = new TextPart(TextFormat.Html) { Text = "<h1>Your story</h1>" };
                var part2 = new TextPart(TextFormat.Plain) { Text = "Welcome to your story creative!\n" };
                var part3 = new TextPart(TextFormat.Plain) { Text = fileText };
                var multipart = new Multipart("mixed");

                if (fileInfo != "")
                {
                    // create an image attachment for the file located at path
                    var attachment = new MimePart()
                    {
                        Content = new MimeContent(File.OpenRead(fileInfo)),
                        ContentDisposition = new ContentDisposition(ContentDisposition.Attachment),
                        ContentTransferEncoding = ContentEncoding.Base64,
                        FileName = Path.GetFileName(fileInfo)
                    };

                    // now create the multipart/mixed container to hold the message text and the
                    // image attachment
                    multipart.Add(attachment);                   
                }
                multipart.Add(part);
                multipart.Add(part2);
                multipart.Add(part3);
                email.Body = multipart;

                // send email
                var smtp = new MailKit.Net.Smtp.SmtpClient();
                smtp.Connect("smtp.gmail.com", 587, SecureSocketOptions.StartTls);
                smtp.Authenticate(Credentials.SMTPEmail, Credentials.SMTPPassword);
                smtp.Send(email);
                Thread.Sleep(1000 * seconds);
                smtp.Disconnect(true);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }*/

        public static void DeleteFileAfterMonths(String fileName = "", int month = 12)
        {
            if (fileName == "")
                fileName = fileName1;

            var fi = new FileInfo(fileName);
            if (fi.CreationTime > DateTime.Now.AddMonths(-1 * month))
                fi.Delete();

        }

        public static bool FileSizeWarning(String fileName = "", long size = 1024000000)
        {
            if (fileName == "")
                fileName = fileName1;

            var fi = new FileInfo(fileName);
            return fi.Length > size;
        }

        public static bool FileCountDays(String fileName = "", int countdesired = 25)
        {
            if (fileName == "")
                fileName = fileName1;
            String a = File.ReadAllText(fileName);
            var count = Regex.Matches(a, DateTime.Now.ToLocalTime().ToString("yyyy")+":").Count;
            return count >= countdesired;
        }
        /*
        public static void EmailDev(String e, String devemail = "", int seconds = 20)
        {
            try
            {
                // create email message
                var email = new MimeMessage();
                email.From.Add(MailboxAddress.Parse(Credentials.emailFrom));
                email.To.Add(MailboxAddress.Parse(e));
                email.Subject = "Your story creative...";
                var part = new TextPart(TextFormat.Html) { Text = "<h1>Your story</h1>" };
                var part2 = new TextPart(TextFormat.Plain) { Text = "Here is your story booklet! Emailed to you at " + DateTime.Now.ToString() + "\nThe email is " + email };

                var multipart = new Multipart("mixed");

                multipart.Add(part);
                multipart.Add(part2);

                // send email
                var smtp = new MailKit.Net.Smtp.SmtpClient();
                smtp.Connect("smtp.gmail.com", 587, SecureSocketOptions.StartTls);
                smtp.Authenticate(Credentials.SMTPEmail, Credentials.SMTPPassword);
                smtp.Send(email);
                Thread.Sleep(1000 * seconds);
                smtp.Disconnect(true);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                Debug.Write(ex.ToString());
            }
        }*/
    }
}
