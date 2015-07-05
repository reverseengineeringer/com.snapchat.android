package net.hockeyapp.android;

import ajx;
import android.app.Activity;
import azt;
import buz;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
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
      new ErrorMetric("Failed to load libBreakpad").a(localThrowable).d();
    }
  }
  
  /* Error */
  private static String a()
  {
    // Byte code:
    //   0: invokestatic 46	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   3: invokevirtual 49	java/util/UUID:toString	()Ljava/lang/String;
    //   6: astore_1
    //   7: new 51	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   14: getstatic 58	buz:a	Ljava/lang/String;
    //   17: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 64
    //   22: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_1
    //   26: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 66
    //   31: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: astore_0
    //   38: ldc 69
    //   40: new 51	java/lang/StringBuilder
    //   43: dup
    //   44: ldc 71
    //   46: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   49: aload_0
    //   50: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: iconst_0
    //   57: anewarray 4	java/lang/Object
    //   60: invokestatic 78	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   63: new 80	java/io/BufferedWriter
    //   66: dup
    //   67: new 82	java/io/FileWriter
    //   70: dup
    //   71: aload_0
    //   72: invokespecial 83	java/io/FileWriter:<init>	(Ljava/lang/String;)V
    //   75: invokespecial 86	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   78: astore_0
    //   79: aload_0
    //   80: new 51	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 88
    //   86: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: getstatic 90	buz:d	Ljava/lang/String;
    //   92: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc 92
    //   97: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   106: aload_0
    //   107: new 51	java/lang/StringBuilder
    //   110: dup
    //   111: ldc 97
    //   113: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   116: getstatic 100	buz:b	Ljava/lang/String;
    //   119: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc 92
    //   124: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: new 51	java/lang/StringBuilder
    //   137: dup
    //   138: ldc 102
    //   140: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   143: getstatic 105	buz:e	Ljava/lang/String;
    //   146: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: ldc 92
    //   151: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   160: aload_0
    //   161: new 51	java/lang/StringBuilder
    //   164: dup
    //   165: ldc 107
    //   167: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: getstatic 110	buz:g	Ljava/lang/String;
    //   173: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: ldc 92
    //   178: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   187: aload_0
    //   188: new 51	java/lang/StringBuilder
    //   191: dup
    //   192: ldc 112
    //   194: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: getstatic 115	buz:f	Ljava/lang/String;
    //   200: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: ldc 92
    //   205: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   214: aload_0
    //   215: new 51	java/lang/StringBuilder
    //   218: dup
    //   219: ldc 117
    //   221: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   224: new 119	java/util/Date
    //   227: dup
    //   228: invokespecial 120	java/util/Date:<init>	()V
    //   231: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   234: ldc 92
    //   236: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   245: aload_0
    //   246: ldc 92
    //   248: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   251: aload_0
    //   252: ldc 125
    //   254: invokevirtual 95	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   257: aload_0
    //   258: invokevirtual 128	java/io/BufferedWriter:flush	()V
    //   261: new 51	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   268: aload_1
    //   269: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc 66
    //   274: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: astore_1
    //   281: aload_1
    //   282: areturn
    //   283: astore_0
    //   284: aconst_null
    //   285: astore_0
    //   286: aload_0
    //   287: invokestatic 133	bfo:a	(Ljava/io/Closeable;)V
    //   290: aconst_null
    //   291: areturn
    //   292: astore_1
    //   293: goto -7 -> 286
    // Local variable table:
    //   start	length	slot	name	signature
    //   37	221	0	localObject	Object
    //   283	1	0	localException1	Exception
    //   285	2	0	localCloseable	java.io.Closeable
    //   6	276	1	str	String
    //   292	1	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	79	283	java/lang/Exception
    //   79	281	292	java/lang/Exception
  }
  
  public static void a(final Activity paramActivity, String paramString)
  {
    int i = 0;
    buz.a(paramActivity);
    new azt();
    azt.a();
    try
    {
      nativeSetUpBreakpad(buz.a);
      if (buz.a != null)
      {
        Object localObject = new File(buz.a + "/");
        if ((!((File)localObject).mkdir()) && (!((File)localObject).exists()))
        {
          localObject = new String[0];
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
                    localMultipartEntity.addPart("log", new FileBody(new File(buz.a, str2)));
                    FileBody localFileBody = new FileBody(new File(buz.a, str1));
                    long l = localFileBody.getContentLength();
                    if (l == 0L) {
                      return;
                    }
                    localMultipartEntity.addPart("attachment0", localFileBody);
                    if (ReleaseManager.f())
                    {
                      localMultipartEntity.addPart("userId", new StringBody(ajx.l(), Charset.forName("UTF-8")));
                      localMultipartEntity.addPart("contact", new StringBody(ajx.G(), Charset.forName("UTF-8")));
                    }
                    localHttpPost.setEntity(localMultipartEntity);
                    localDefaultHttpClient.execute(localHttpPost);
                    return;
                  }
                  catch (Exception localException)
                  {
                    Timber.f("NativeCrashManager", "Failed to upload crashes: " + localException.getMessage(), new Object[0]);
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
      }
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      for (;;)
      {
        Timber.a("NativeCrashManager", localUnsatisfiedLinkError);
        continue;
        String[] arrayOfString = localUnsatisfiedLinkError.list(new FilenameFilter()
        {
          public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
          {
            return paramAnonymousString.endsWith(".dmp");
          }
        });
        continue;
        Timber.c("NativeCrashManager", "Can't search for exception as file path is null.", new Object[0]);
        arrayOfString = new String[0];
      }
    }
  }
  
  private static native void nativeSetUpBreakpad(String paramString);
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.NativeCrashManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */