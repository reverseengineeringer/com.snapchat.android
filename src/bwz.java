import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;

public class bwz
  extends AsyncTask<Void, Integer, Long>
{
  protected Context a;
  protected bwq b;
  protected String c;
  protected String d;
  protected String e;
  protected ProgressDialog f;
  private String g;
  
  public bwz(Context paramContext, String paramString, bwq parambwq)
  {
    a = paramContext;
    c = paramString;
    d = (UUID.randomUUID() + ".apk");
    e = (Environment.getExternalStorageDirectory().getAbsolutePath() + "/Download");
    b = parambwq;
    g = null;
  }
  
  protected static URLConnection a(URL paramURL, int paramInt)
  {
    for (;;)
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection();
      localHttpURLConnection.addRequestProperty("User-Agent", "HockeySDK/Android");
      localHttpURLConnection.setInstanceFollowRedirects(true);
      if (Build.VERSION.SDK_INT <= 9) {
        localHttpURLConnection.setRequestProperty("connection", "close");
      }
      int i = localHttpURLConnection.getResponseCode();
      if (((i != 301) && (i != 302) && (i != 303)) || (paramInt == 0)) {}
      URL localURL;
      do
      {
        return localHttpURLConnection;
        localURL = new URL(localHttpURLConnection.getHeaderField("Location"));
      } while (paramURL.getProtocol().equals(localURL.getProtocol()));
      localHttpURLConnection.disconnect();
      paramInt -= 1;
      paramURL = localURL;
    }
  }
  
  public final void a()
  {
    a = null;
    f = null;
  }
  
  public final void a(Context paramContext)
  {
    a = paramContext;
  }
  
  protected void a(Long paramLong)
  {
    if (f != null) {}
    try
    {
      f.dismiss();
      if (paramLong.longValue() > 0L)
      {
        b.a(this);
        paramLong = new Intent("android.intent.action.VIEW");
        paramLong.setDataAndType(Uri.fromFile(new File(e, d)), "application/vnd.android.package-archive");
        paramLong.setFlags(268435456);
        a.startActivity(paramLong);
        return;
      }
    }
    catch (Exception localException)
    {
      try
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
        localBuilder.setTitle(bwj.a(b, 256));
        if (g == null) {}
        for (paramLong = bwj.a(b, 257);; paramLong = g)
        {
          localBuilder.setMessage(paramLong);
          localBuilder.setNegativeButton(bwj.a(b, 258), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              b.a(Boolean.valueOf(false));
            }
          });
          localBuilder.setPositiveButton(bwj.a(b, 259), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              b.a(Boolean.valueOf(true));
            }
          });
          localBuilder.create().show();
          return;
        }
        localException = localException;
      }
      catch (Exception paramLong) {}
    }
  }
  
  protected void a(Integer... paramVarArgs)
  {
    try
    {
      if (f == null)
      {
        f = new ProgressDialog(a);
        f.setProgressStyle(1);
        f.setMessage("Loading...");
        f.setCancelable(false);
        f.show();
      }
      f.setProgress(paramVarArgs[0].intValue());
      return;
    }
    catch (Exception paramVarArgs) {}
  }
  
  protected Long b()
  {
    int i;
    try
    {
      URLConnection localURLConnection = a(new URL(c()), 6);
      localURLConnection.connect();
      i = localURLConnection.getContentLength();
      localObject = localURLConnection.getContentType();
      if ((localObject != null) && (((String)localObject).contains("text")))
      {
        g = "The requested download does not appear to be a file.";
        return Long.valueOf(0L);
      }
      localObject = new File(e);
      if ((!((File)localObject).mkdirs()) && (!((File)localObject).exists())) {
        throw new IOException("Could not create the dir(s):" + ((File)localObject).getAbsolutePath());
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return Long.valueOf(0L);
    }
    Object localObject = new File((File)localObject, d);
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(localException.getInputStream());
    localObject = new FileOutputStream((File)localObject);
    byte[] arrayOfByte = new byte['Ѐ'];
    long l = 0L;
    for (;;)
    {
      int j = localBufferedInputStream.read(arrayOfByte);
      if (j == -1) {
        break;
      }
      l += j;
      publishProgress(new Integer[] { Integer.valueOf(Math.round((float)l * 100.0F / i)) });
      ((OutputStream)localObject).write(arrayOfByte, 0, j);
    }
    ((OutputStream)localObject).flush();
    ((OutputStream)localObject).close();
    localBufferedInputStream.close();
    return Long.valueOf(l);
  }
  
  protected final String c()
  {
    return c + "&type=apk";
  }
}

/* Location:
 * Qualified Name:     bwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */