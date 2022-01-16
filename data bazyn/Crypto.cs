using System;
using System.Security.Cryptography;
using System.Text;

namespace data_bazyn
{
    public class Crypto
    {
        static string key { get; set; } = "A!9HHhi%XjjYY4YP2@Nob009X";
        public static string createMD5(string pass)
        {
            byte[] hash;
            byte[] hashPass;
            using (MD5 md5 = new MD5CryptoServiceProvider())
            {
                byte[] bytesPass = Encoding.ASCII.GetBytes(pass);

                using (var tdes = new TripleDESCryptoServiceProvider())
                {
                    tdes.Key = md5.ComputeHash(Encoding.UTF8.GetBytes(key));
                    tdes.Mode = CipherMode.ECB;
                    tdes.Padding = PaddingMode.PKCS7;

                    using (var transform = tdes.CreateEncryptor())
                    {
                        hash = UTF8Encoding.UTF8.GetBytes(pass);
                        hashPass = transform.TransformFinalBlock(hash, 0, hash.Length);
                    }
                }

            }
            return Convert.ToBase64String(hashPass, 0, hashPass.Length);
        }

        public static string decryptMD5(string pass)
        {

            byte[] cipherBytes;
            byte[] bytes;
            using (var md5 = new MD5CryptoServiceProvider())
            {
                using (var tdes = new TripleDESCryptoServiceProvider())
                {
                    tdes.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                    tdes.Mode = CipherMode.ECB;
                    tdes.Padding = PaddingMode.PKCS7;

                    using (var transform = tdes.CreateDecryptor())
                    {
                        cipherBytes = Convert.FromBase64String(pass);
                        bytes = transform.TransformFinalBlock(cipherBytes, 0, cipherBytes.Length);
                    }
                }
            }
            return UTF8Encoding.UTF8.GetString(bytes);
        }

        public static string createNormalMD5(string pass)
        {
            string hashMd5;
            using (var md5 = new MD5CryptoServiceProvider())
            {
                byte[] bytes = md5.ComputeHash(Encoding.Unicode.GetBytes(pass));
                hashMd5 = BitConverter.ToString(bytes);
            }

            return hashMd5.ToLower().Replace("-", String.Empty);
        }

    }
}