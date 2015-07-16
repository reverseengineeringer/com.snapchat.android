package net.hockeyapp.android;

import akr;
import android.app.Activity;
import bas;
import bgo;
import bwa;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.UUID;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;

public class NativeCrashManager
{
  static
  {
    try
    {
      System.loadLibrary("stlport_shared");
      System.loadLibrary("Breakpad");
      return;
    }
    catch (Throwable localThrowable)
    {
      new ErrorMetric("Failed to load libBreakpad").a(localThrowable).e();
    }
  }
  
  private static String a()
  {
    try
    {
      String str = UUID.randomUUID().toString();
      BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(bwa.a + "/" + str + ".faketrace"));
      Closeable localCloseable;
      bgo.a(localCloseable);
    }
    catch (Exception localException1)
    {
      try
      {
        localBufferedWriter.write("Package: " + bwa.d + "\n");
        localBufferedWriter.write("Version: " + bwa.b + "\n");
        localBufferedWriter.write("Android: " + bwa.e + "\n");
        localBufferedWriter.write("Manufacturer: " + bwa.g + "\n");
        localBufferedWriter.write("Model: " + bwa.f + "\n");
        localBufferedWriter.write("Date: " + new Date() + "\n");
        localBufferedWriter.write("\n");
        localBufferedWriter.write("MinidumpContainer");
        localBufferedWriter.flush();
        str = str + ".faketrace";
        return str;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      localException1 = localException1;
      localCloseable = null;
    }
    return null;
  }
  
  public static void a(final Activity paramActivity, String paramString)
  {
    int i = 0;
    bwa.a(paramActivity);
    new bas();
    bas.a();
    try
    {
      nativeSetUpBreakpad(bwa.a);
      if (bwa.a != null)
      {
        localObject = new File(bwa.a + "/");
        if ((!((File)localObject).mkdir()) && (!((File)localObject).exists())) {}
      }
      for (Object localObject = ((File)localObject).list(new FilenameFilter()
          {
            public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
            {
              return paramAnonymousString.endsWith(".dmp");
            }
          });; localObject = new String[0])
      {
        int j = localObject.length;
        while (i < j)
        {
          final String str1 = localObject[i];
          final String str2 = a();
          if (str2 != null) {
            new Thread()
            {
              public final void run()
              {
                try
                {
                  DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
                  HttpPost localHttpPost = new HttpPost("https://rink.hockeyapp.net/api/2/apps/" + a + "/crashes/upload");
                  MultipartEntity localMultipartEntity = new MultipartEntity();
                  localMultipartEntity.addPart("log", new FileBody(new File(bwa.a, str2)));
                  FileBody localFileBody = new FileBody(new File(bwa.a, str1));
                  long l = localFileBody.getContentLength();
                  if (l == 0L) {
                    return;
                  }
                  localMultipartEntity.addPart("attachment0", localFileBody);
                  if (ReleaseManager.f())
                  {
                    localMultipartEntity.addPart("userId", new StringBody(akr.l(), Charset.forName("UTF-8")));
                    localMultipartEntity.addPart("contact", new StringBody(akr.G(), Charset.forName("UTF-8")));
                  }
                  localHttpPost.setEntity(localMultipartEntity);
                  localDefaultHttpClient.execute(localHttpPost);
                  return;
                }
                catch (Exception localException)
                {
                  new StringBuilder("Failed to upload crashes: ").append(localException.getMessage());
                  return;
                }
                finally
                {
                  paramActivity.deleteFile(str2);
                  paramActivity.deleteFile(str1);
                }
              }
            }.start();
          }
          i += 1;
        }
      }
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      for (;;) {}
    }
  }
  
  private static native void nativeSetUpBreakpad(String paramString);
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.NativeCrashManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */