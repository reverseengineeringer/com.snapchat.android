package net.hockeyapp.android;

import ajx;
import android.app.Activity;
import buz;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.nio.charset.Charset;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;

final class NativeCrashManager$2
  extends Thread
{
  NativeCrashManager$2(String paramString1, String paramString2, String paramString3, Activity paramActivity) {}
  
  public final void run()
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpPost localHttpPost = new HttpPost("https://rink.hockeyapp.net/api/2/apps/" + a + "/crashes/upload");
      MultipartEntity localMultipartEntity = new MultipartEntity();
      localMultipartEntity.addPart("log", new FileBody(new File(buz.a, b)));
      FileBody localFileBody = new FileBody(new File(buz.a, c));
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
      d.deleteFile(b);
      d.deleteFile(c);
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.NativeCrashManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */