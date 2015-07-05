import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import java.io.File;
import java.io.FilenameFilter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public final class bva
{
  private static String a = null;
  private static String b = null;
  private static boolean c = false;
  
  public static void a(Context paramContext, String paramString, final bvb parambvb)
  {
    if (paramContext != null)
    {
      b = "https://sdk.hockeyapp.net/";
      a = bwk.c(paramString);
      buz.a(paramContext);
      if (a == null) {
        a = buz.d;
      }
    }
    Boolean localBoolean = Boolean.valueOf(false);
    final WeakReference localWeakReference = new WeakReference(paramContext);
    int i = b(localWeakReference);
    if (i == 1)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
      paramString = Boolean.valueOf(Boolean.valueOf(false).booleanValue() | paramContext.getBoolean("always_send_crash_reports", false));
      paramContext = paramString;
      if (parambvb != null) {
        paramContext = Boolean.valueOf(Boolean.valueOf(paramString.booleanValue() | parambvb.a()).booleanValue() | false);
      }
      if (!paramContext.booleanValue())
      {
        final boolean bool = localBoolean.booleanValue();
        paramContext = (Context)localWeakReference.get();
        if (paramContext != null)
        {
          paramContext = new AlertDialog.Builder(paramContext);
          paramContext.setTitle(bvi.a(parambvb, 0));
          paramContext.setMessage(bvi.a(parambvb, 1));
          paramContext.setNegativeButton(bvi.a(parambvb, 2), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              bva.a(localWeakReference);
              bva.a(a, bool);
            }
          });
          paramContext.setNeutralButton(bvi.a(parambvb, 3), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface = null;
              if (a != null) {
                paramAnonymousDialogInterface = (Context)a.get();
              }
              if (paramAnonymousDialogInterface == null) {
                return;
              }
              PreferenceManager.getDefaultSharedPreferences(paramAnonymousDialogInterface).edit().putBoolean("always_send_crash_reports", true).commit();
              bva.a(a, parambvb, bool);
            }
          });
          paramContext.setPositiveButton(bvi.a(parambvb, 4), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              bva.a(a, parambvb, bool);
            }
          });
          paramContext.create().show();
        }
        return;
      }
      b(localWeakReference, parambvb, localBoolean.booleanValue());
      return;
    }
    if (i == 2)
    {
      b(localWeakReference, parambvb, localBoolean.booleanValue());
      return;
    }
    b(parambvb, localBoolean.booleanValue());
  }
  
  public static void a(WeakReference<Context> paramWeakReference)
  {
    String[] arrayOfString = b();
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      new StringBuilder("Found ").append(arrayOfString.length).append(" stacktrace(s).");
      int i = 0;
      while (i < arrayOfString.length)
      {
        if (paramWeakReference != null) {}
        try
        {
          new StringBuilder("Delete stacktrace ").append(arrayOfString[i]).append(".");
          a(paramWeakReference, arrayOfString[i]);
          Context localContext = (Context)paramWeakReference.get();
          if (localContext != null) {
            localContext.deleteFile(arrayOfString[i]);
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
        i += 1;
      }
    }
  }
  
  public static void a(WeakReference<Context> paramWeakReference, bvb parambvb)
  {
    String[] arrayOfString = b();
    Object localObject1;
    int i;
    Object localObject3;
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      new StringBuilder("Found ").append(arrayOfString.length).append(" stacktrace(s).");
      localObject1 = Boolean.valueOf(false);
      i = 0;
      if (i < arrayOfString.length)
      {
        localObject3 = arrayOfString[i];
        for (;;)
        {
          try
          {
            String str = b(paramWeakReference, (String)localObject3);
            localObject2 = localObject1;
            if (str.length() > 0)
            {
              localObject2 = (DefaultHttpClient)aa;
              HttpPost localHttpPost = new HttpPost(b + "api/2/apps/" + a + "/crashes/");
              ArrayList localArrayList = new ArrayList();
              localArrayList.add(new BasicNameValuePair("raw", str));
              localArrayList.add(new BasicNameValuePair("userID", b(paramWeakReference, ((String)localObject3).replace(".stacktrace", ".user"))));
              localArrayList.add(new BasicNameValuePair("contact", b(paramWeakReference, ((String)localObject3).replace(".stacktrace", ".contact"))));
              localArrayList.add(new BasicNameValuePair("description", b(paramWeakReference, ((String)localObject3).replace(".stacktrace", ".description"))));
              localArrayList.add(new BasicNameValuePair("sdk", "HockeySDK"));
              localArrayList.add(new BasicNameValuePair("sdk_version", "3.5.0"));
              localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
              ((DefaultHttpClient)localObject2).execute(localHttpPost);
              localObject2 = Boolean.valueOf(true);
            }
            if (!((Boolean)localObject2).booleanValue()) {
              continue;
            }
            a(paramWeakReference, arrayOfString[i]);
            localObject3 = localObject2;
            if (parambvb == null) {}
          }
          catch (Exception localException)
          {
            Object localObject2;
            localException.printStackTrace();
            if (!((Boolean)localObject1).booleanValue()) {
              continue;
            }
            a(paramWeakReference, arrayOfString[i]);
            localObject3 = localObject1;
            if (parambvb == null) {
              continue;
            }
            localObject3 = localObject1;
            continue;
            localObject3 = localObject1;
            if (parambvb == null) {
              continue;
            }
            localObject3 = localObject1;
            continue;
          }
          finally
          {
            if (!((Boolean)localObject1).booleanValue()) {
              continue;
            }
            a(paramWeakReference, arrayOfString[i]);
          }
          i += 1;
          localObject1 = localObject3;
          break;
          localObject3 = localObject2;
          if (parambvb != null) {
            localObject3 = localObject2;
          }
        }
      }
    }
  }
  
  private static void a(WeakReference<Context> paramWeakReference, String paramString)
  {
    if (paramWeakReference != null)
    {
      paramWeakReference = (Context)paramWeakReference.get();
      if (paramWeakReference != null)
      {
        paramWeakReference.deleteFile(paramString);
        paramWeakReference.deleteFile(paramString.replace(".stacktrace", ".user"));
        paramWeakReference.deleteFile(paramString.replace(".stacktrace", ".contact"));
        paramWeakReference.deleteFile(paramString.replace(".stacktrace", ".description"));
      }
    }
  }
  
  private static int b(WeakReference<Context> paramWeakReference)
  {
    int i = 0;
    String[] arrayOfString = b();
    Object localObject = null;
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      try
      {
        paramWeakReference = (Context)paramWeakReference.get();
        if (paramWeakReference == null) {
          break label111;
        }
        paramWeakReference = Arrays.asList(paramWeakReference.getSharedPreferences("HockeySDK", 0).getString("ConfirmedFilenames", "").split("\\|"));
      }
      catch (Exception paramWeakReference)
      {
        for (;;)
        {
          int k;
          int m;
          int j;
          label102:
          paramWeakReference = (WeakReference<Context>)localObject;
          continue;
          paramWeakReference = null;
        }
      }
      if (paramWeakReference != null)
      {
        k = 2;
        m = arrayOfString.length;
        for (;;)
        {
          j = k;
          if (i >= m) {
            break label102;
          }
          if (!paramWeakReference.contains(arrayOfString[i])) {
            break;
          }
          i += 1;
        }
      }
      j = 1;
      return j;
    }
    label111:
    return 0;
  }
  
  /* Error */
  private static String b(WeakReference<Context> paramWeakReference, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ifnull +140 -> 143
    //   6: aload_0
    //   7: invokevirtual 85	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   10: checkcast 87	android/content/Context
    //   13: astore_0
    //   14: aload_0
    //   15: ifnull +128 -> 143
    //   18: new 142	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 198	java/lang/StringBuilder:<init>	()V
    //   25: astore_3
    //   26: new 300	java/io/BufferedReader
    //   29: dup
    //   30: new 302	java/io/InputStreamReader
    //   33: dup
    //   34: aload_0
    //   35: aload_1
    //   36: invokevirtual 306	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   39: invokespecial 309	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   42: invokespecial 312	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   45: astore_0
    //   46: aload_0
    //   47: astore_1
    //   48: aload_0
    //   49: invokevirtual 315	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   52: astore_2
    //   53: aload_2
    //   54: ifnull +41 -> 95
    //   57: aload_0
    //   58: astore_1
    //   59: aload_3
    //   60: aload_2
    //   61: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: aload_0
    //   66: astore_1
    //   67: aload_3
    //   68: ldc_w 317
    //   71: invokestatic 322	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   74: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: goto -32 -> 46
    //   81: astore_1
    //   82: aload_0
    //   83: ifnull +7 -> 90
    //   86: aload_0
    //   87: invokevirtual 325	java/io/BufferedReader:close	()V
    //   90: aload_3
    //   91: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: areturn
    //   95: aload_0
    //   96: invokevirtual 325	java/io/BufferedReader:close	()V
    //   99: goto -9 -> 90
    //   102: astore_0
    //   103: goto -13 -> 90
    //   106: astore_2
    //   107: aconst_null
    //   108: astore_0
    //   109: aload_0
    //   110: astore_1
    //   111: aload_2
    //   112: invokevirtual 326	java/io/IOException:printStackTrace	()V
    //   115: aload_0
    //   116: ifnull -26 -> 90
    //   119: aload_0
    //   120: invokevirtual 325	java/io/BufferedReader:close	()V
    //   123: goto -33 -> 90
    //   126: astore_0
    //   127: goto -37 -> 90
    //   130: astore_0
    //   131: aconst_null
    //   132: astore_1
    //   133: aload_1
    //   134: ifnull +7 -> 141
    //   137: aload_1
    //   138: invokevirtual 325	java/io/BufferedReader:close	()V
    //   141: aload_0
    //   142: athrow
    //   143: aconst_null
    //   144: areturn
    //   145: astore_0
    //   146: goto -56 -> 90
    //   149: astore_1
    //   150: goto -9 -> 141
    //   153: astore_0
    //   154: goto -21 -> 133
    //   157: astore_2
    //   158: goto -49 -> 109
    //   161: astore_0
    //   162: aload_2
    //   163: astore_0
    //   164: goto -82 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	167	0	paramWeakReference	WeakReference<Context>
    //   0	167	1	paramString	String
    //   1	60	2	str	String
    //   106	6	2	localIOException1	java.io.IOException
    //   157	6	2	localIOException2	java.io.IOException
    //   25	66	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   48	53	81	java/io/FileNotFoundException
    //   59	65	81	java/io/FileNotFoundException
    //   67	78	81	java/io/FileNotFoundException
    //   95	99	102	java/io/IOException
    //   26	46	106	java/io/IOException
    //   119	123	126	java/io/IOException
    //   26	46	130	finally
    //   86	90	145	java/io/IOException
    //   137	141	149	java/io/IOException
    //   48	53	153	finally
    //   59	65	153	finally
    //   67	78	153	finally
    //   111	115	153	finally
    //   48	53	157	java/io/IOException
    //   59	65	157	java/io/IOException
    //   67	78	157	java/io/IOException
    //   26	46	161	java/io/FileNotFoundException
  }
  
  private static void b(bvb parambvb, boolean paramBoolean)
  {
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler;
    if ((buz.b != null) && (buz.d != null))
    {
      localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      if (localUncaughtExceptionHandler != null) {
        new StringBuilder("Current handler class = ").append(localUncaughtExceptionHandler.getClass().getName());
      }
      if ((localUncaughtExceptionHandler instanceof bvc)) {
        a = parambvb;
      }
    }
    else
    {
      return;
    }
    Thread.setDefaultUncaughtExceptionHandler(new bvc(localUncaughtExceptionHandler, parambvb, paramBoolean));
  }
  
  private static void b(WeakReference<Context> paramWeakReference, final bvb parambvb, boolean paramBoolean)
  {
    Object localObject;
    if (paramWeakReference != null)
    {
      localObject = (Context)paramWeakReference.get();
      if (localObject == null) {}
    }
    try
    {
      arrayOfString = b();
      localObject = ((Context)localObject).getSharedPreferences("HockeySDK", 0).edit();
      localStringBuffer = new StringBuffer();
      i = 0;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String[] arrayOfString;
        StringBuffer localStringBuffer;
        int i;
        continue;
        i += 1;
      }
    }
    if (i < arrayOfString.length)
    {
      localStringBuffer.append(arrayOfString[i]);
      if (i < arrayOfString.length - 1) {
        localStringBuffer.append("|");
      }
    }
    else
    {
      ((SharedPreferences.Editor)localObject).putString("ConfirmedFilenames", localStringBuffer.toString());
      bwi.a((SharedPreferences.Editor)localObject);
      b(parambvb, paramBoolean);
      if (!c)
      {
        c = true;
        new Thread()
        {
          public final void run()
          {
            bva.a(a, parambvb);
            bva.a();
          }
        }.start();
      }
      return;
    }
  }
  
  private static String[] b()
  {
    if (buz.a != null)
    {
      new StringBuilder("Looking for exceptions in: ").append(buz.a);
      File localFile = new File(buz.a + "/");
      if ((!localFile.mkdir()) && (!localFile.exists())) {
        return new String[0];
      }
      localFile.list(new FilenameFilter()
      {
        public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
        {
          return paramAnonymousString.endsWith(".stacktrace");
        }
      });
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bva
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */