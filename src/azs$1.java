import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public final class azs$1
  implements Runnable
{
  public azs$1(azs paramazs, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, File paramFile, File[] paramArrayOfFile, String paramString6) {}
  
  public final void run()
  {
    StringBuilder localStringBuilder = new StringBuilder(ajx.l() + "\n" + ajx.G() + "\nandroid\n" + val$otherEmailToSendTo + "\n" + val$projectName + "\n");
    localStringBuilder.append(val$deviceInfo).append("\n**BUG_DESCRIPTION**\n").append(val$bugDescription).append("\n**STEPS_TO_REPRO**\n").append(val$stepsToRepro).append("\n**ATTACHMENTS**\n");
    Object localObject = SnapchatApplication.b();
    String str = azs.a(azs.a((Context)localObject));
    try
    {
      localObject = ((SnapchatApplication)localObject).openFileOutput(str, 0);
      ((FileOutputStream)localObject).write(localStringBuilder.toString().getBytes());
      ((FileOutputStream)localObject).flush();
      bfo.a((Closeable)localObject);
      this$0.a(val$imageFile, localStringBuilder, val$logFiles, val$remoteChatRecipient, str);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Timber.a("ManiphestAdapter", localIOException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     azs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */