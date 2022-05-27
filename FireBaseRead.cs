using Microsoft.Azure.Storage;
using Microsoft.Azure.Storage.Blob;
//using Microsoft.WindowsAzure.Storage.Blob;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using Social;

namespace EmailReader //rename
{
    public class FireBaseRead
    {
        public FireBaseRead()
        {

        }

        public static bool cloudservices = false;
        public static string phoneID = "";
        public static string LoginEmail = "";
        public static bool encrypted = false;
        public static string LoginPassword = "";
        const String storageConnection = "DefaultEndpointsProtocol=https;AccountName=halbookappstorage;AccountKey=+D6AxCmqVcfNVCG27qpciwmIsYL1FaAaLodN7iY6L+s6MjVWuVfq8yjWbKOrfgYLBvntOzIteFdW+ASt6HSKpw==;EndpointSuffix=core.windows.net;";
        const String accessKey = "+D6AxCmqVcfNVCG27qpciwmIsYL1FaAaLodN7iY6L+s6MjVWuVfq8yjWbKOrfgYLBvntOzIteFdW+ASt6HSKpw==";
        const String storageName = "halbookappstorage";

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        public static string GetphoneID()
        {
            if(File.Exists(EmailFileRead.phoneIdFile))
                return File.ReadAllText(EmailFileRead.phoneIdFile);
            return phoneID;
        }

        public static void Encrypt()
        {
            if (phoneID != "" && !encrypted)
            { 
                phoneID = Base64Encode(phoneID);
                File.WriteAllText(EmailFileRead.phoneIdFile, phoneID);
                encrypted = true;
            }
        }

        public static void EncryptFile(String file, CloudBlockBlob cloud)
        {
            String text = File.ReadAllText(file);
            String encodedtext = Base64Encode(text);
            File.WriteAllText(file,encodedtext);
            cloud.UploadFromFile(file, null);
            File.WriteAllText(file, text);
        }

        public static void DecryptFile(String file)
        {
            String text = File.ReadAllText(file);
            String encodedtext = Base64Decode(text);
            File.WriteAllText(file, text);
        }

        public static void UploadFile(String file, String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                //try
                //{
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key

                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Create;
                    FileInfo file1 = new FileInfo(file);
                    if (file1.Exists)
                    {
                        var blob = container.GetBlockBlobReference(phoneID + "/" + file1.Name);
                        var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);

                        var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                        String s = File.ReadAllText(file1.FullName);
                        var stream = new MemoryStream();
                        var writer = new StreamWriter(stream);
                        writer.Write(s);
                        writer.Flush();
                        stream.Position = 0;

                        cloudBlockBlob.UploadFromStream(stream);
                    }
                //}
                //catch (Exception e)
                //{
                //    Console.WriteLine(e);
                //}
            }
        }

        public static void DownloadFile(String file, String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Create | SharedAccessBlobPermissions.Read;
                    FileInfo file1 = new FileInfo(file);
                    var blob = container.GetBlockBlobReference(GetphoneID() + "/" + file1.Name);
                    var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);

                    var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                    if(file1.Exists && cloudBlockBlob.Exists())
                        File.Delete(file1.FullName);
                    cloudBlockBlob.DownloadToFile(file, FileMode.OpenOrCreate);
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }
        }

        public static String DownloadFileStream(String file, String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Create | SharedAccessBlobPermissions.Read;
                    FileInfo file1 = new FileInfo(file);
                    var blob = container.GetBlockBlobReference(GetphoneID() + "/" + file1.Name);
                    var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);

                    var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                    MemoryStream s = new MemoryStream();
                    cloudBlockBlob.DownloadToStream(s);
                    s.Position = 0;
                    StreamReader reader = new StreamReader(s);
                    string text = reader.ReadToEnd();
                    return text;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    if (e.Message.Contains("blob does not exist"))
                        return "No data in the cloud";
                    return e.Message;
                } 
            }
            return "";
        }


        public static void DeleteFile(String file, String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Delete | SharedAccessBlobPermissions.Read;
                    FileInfo file1 = new FileInfo(file);
                    var blob = container.GetBlockBlobReference(GetphoneID() + "/" + file1.Name);
                    var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);

                    var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                    cloudBlockBlob.DeleteIfExists();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }
        }

        public static String GetImageFiles(String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                String i = "List of Images:\n";
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Create | SharedAccessBlobPermissions.Read;

                    CloudBlobDirectory dir = container.GetDirectoryReference(GetphoneID());
                    foreach (var v in dir.ListBlobs())
                    {
                        if (v.Uri.Segments.Last().Contains("image"))
                        {
                            var fileName = v.Uri.Segments.Last();
                            i = i + fileName + "\n";
                        }
                    }
                    return i;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    if (e.Message.Contains("blob does not exist"))
                        return "No data in the cloud";
                    return e.Message;
                }
            }
            return "";
        }

        public static void DownloadSyncFiles(String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Create | SharedAccessBlobPermissions.Read;

                    CloudBlobDirectory dir = container.GetDirectoryReference(GetphoneID());
                    foreach (var v in dir.ListBlobs())
                    {
                        if (v.Uri.Segments.Last().Contains("image"))
                        {
                            var fileName = v.Uri.Segments.Last();
                            var blob = container.GetBlockBlobReference(GetphoneID() + "/"+fileName);
                            //fileName = fileName.Replace(GetphoneID(), "");
                            fileName = fileName.Replace("JPG", ".jpg");
                            fileName = fileName.Replace("PNG", ".png");
                            var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);
                            var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                            var file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), fileName);
                            if (cloudBlockBlob.Exists())
                                EmailFileRead.DeleteImageFileName(fileName);
                            cloudBlockBlob.DownloadToFile(file, FileMode.OpenOrCreate);
                        }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }
        }

        public static void DeleteSyncFiles(String cont = "halbookappblob")
        {
            if (GetphoneID() != "")
            {
                try
                {
                    var connectionString = String.Format("DefaultEndpointsProtocol=https;AccountName={0};AccountKey={1}",
                    storageName, // your storage account name
                    accessKey); // your storage account access key
                    var storageAccount = CloudStorageAccount.Parse(connectionString);
                    CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
                    CloudBlobContainer container = blobClient.GetContainerReference(cont);

                    SharedAccessBlobPolicy sasConstraints = new SharedAccessBlobPolicy();
                    sasConstraints.SharedAccessExpiryTime = DateTime.UtcNow.AddMinutes(30);
                    sasConstraints.Permissions = SharedAccessBlobPermissions.Write | SharedAccessBlobPermissions.Read | SharedAccessBlobPermissions.Delete;
                    CloudBlobDirectory dir = container.GetDirectoryReference(GetphoneID());
                    foreach (var v in dir.ListBlobs())
                    {
                        if (v.Uri.Segments.Last().Contains("image"))
                        {
                            var fileName = v.Uri.Segments.Last();
                            var blob = container.GetBlockBlobReference(GetphoneID() + "/" + fileName);
                            //fileName = fileName.Replace(GetphoneID(), "");
                            fileName = fileName.Replace("JPG", ".jpg");
                            fileName = fileName.Replace("PNG", ".png");
                            var sas = blob.Uri + blob.GetSharedAccessSignature(sasConstraints);
                            var cloudBlockBlob = new CloudBlockBlob(new Uri(sas));
                            cloudBlockBlob.DeleteIfExists();
                        }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                }
            }
        }

        public static void UploadSyncImages()
        {

            if (GetphoneID() != "")
            {
                String file = "";
                DirectoryInfo dir = new DirectoryInfo(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments));
                foreach (FileInfo v in dir.GetFiles())
                {
                    if (v.FullName.Contains("image_"))
                    {
                        file = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), v.Name);
                        FireBaseRead.UploadFile(file);
                    }
                }
            }
        }

    }
}
