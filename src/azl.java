import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.snapchat.android.SnapchatApplication.a;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.io.IOException;

public final class azl
  implements SnapchatApplication.a
{
  private static final String DELIMITER = "\n\n";
  private static final String TAG = "DebugCrashReporter";
  
  @cgb
  private StringBuilder a(@cgc Throwable paramThrowable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramThrowable == null) {
      return localStringBuilder;
    }
    if ((paramThrowable instanceof StackOverflowError))
    {
      localStringBuilder.append(a(paramThrowable.getCause()));
      paramThrowable = paramThrowable.getStackTrace();
      localStringBuilder.append("java.lang.StackOverflowError: StackOverflowError\n");
      int i = 0;
      while ((i < 10) && (paramThrowable.length > i))
      {
        localStringBuilder.append(paramThrowable[i].toString()).append("\n");
        i += 1;
      }
    }
    localStringBuilder.append(Log.getStackTraceString(paramThrowable));
    return localStringBuilder.append("\n");
  }
  
  public final void a(Context paramContext, Thread paramThread, Throwable paramThrowable)
  {
    int i = 0;
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.setFlags(268435456);
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "shake2reportdroid@snapchat.com" });
    localIntent.putExtra("android.intent.extra.SUBJECT", "[Android Alpha Crash] New Crash Report");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a(paramThrowable));
    localStringBuilder.append("\n\nThread name: ").append(paramThread.getName());
    localStringBuilder.append("\n\nDevice info: ").append(ScApplicationInfo.a(paramContext));
    localStringBuilder.append("\n\nOh noes! Sorry for the crash. Please describe what happened so we can fix this:\n");
    localIntent.putExtra("android.intent.extra.TEXT", localStringBuilder.toString());
    try
    {
      paramThread = azk.a(paramContext, true);
      int j = paramThread.length;
      while (i < j)
      {
        paramThrowable = Uri.fromFile(paramThread[i]);
        if (paramThrowable != null) {
          localIntent.putExtra("android.intent.extra.STREAM", paramThrowable);
        }
        i += 1;
      }
      return;
    }
    catch (IOException paramThread)
    {
      Timber.a("DebugCrashReporter", paramThread);
      paramContext.startActivity(localIntent);
      bgp.a(3000L);
    }
  }
}

/* Location:
 * Qualified Name:     azl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */