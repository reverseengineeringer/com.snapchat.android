import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class azr
{
  private static final int LOG_LINE_LIMIT = 3000;
  private static final String TAG = "LogOutputQueue";
  private final Queue<String> mLog = new ConcurrentLinkedQueue();
  private final String mLogFilePrefix;
  File mOutputFile = null;
  
  public azr(@cgb String paramString)
  {
    mLogFilePrefix = paramString;
  }
  
  public final File a(Context paramContext, boolean paramBoolean)
  {
    int i = 0;
    Timber.b("LogOutputQueue", "Capture timber log of " + mLogFilePrefix, new Object[0]);
    new azs();
    String str1 = mLogFilePrefix + azs.a(paramContext) + ".txt";
    if (paramBoolean) {
      i = 1;
    }
    FileOutputStream localFileOutputStream = paramContext.openFileOutput(str1, i);
    Iterator localIterator = mLog.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      try
      {
        localFileOutputStream.write((str2 + "\n").getBytes());
      }
      catch (IOException localIOException)
      {
        Timber.a("LogOutputQueue", localIOException);
      }
    }
    localFileOutputStream.flush();
    bfo.a(localFileOutputStream);
    mOutputFile = paramContext.getFileStreamPath(str1);
    return mOutputFile;
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = mLog.iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append((String)localIterator.next()).append("\n");
    }
    return localStringBuilder.toString();
  }
  
  public final void a(@cgc String paramString)
  {
    if (!ReleaseManager.f()) {}
    do
    {
      return;
      mLog.add(paramString);
    } while (mLog.size() < 3000);
    mLog.remove();
  }
}

/* Location:
 * Qualified Name:     azr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */