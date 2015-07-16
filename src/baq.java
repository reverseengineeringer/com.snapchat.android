import android.content.Context;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class baq
{
  private static final int LOG_LINE_LIMIT = 3000;
  private static final String TAG = "LogOutputQueue";
  private final Queue<String> mLog = new ConcurrentLinkedQueue();
  private final String mLogFilePrefix;
  File mOutputFile = null;
  
  public baq(@chc String paramString)
  {
    mLogFilePrefix = paramString;
  }
  
  public final File a(Context paramContext, boolean paramBoolean)
  {
    new StringBuilder("Capture timber log of ").append(mLogFilePrefix);
    new bar();
    String str1 = mLogFilePrefix + bar.a(paramContext) + ".txt";
    if (paramBoolean) {}
    FileOutputStream localFileOutputStream;
    for (int i = 1;; i = 0)
    {
      localFileOutputStream = paramContext.openFileOutput(str1, i);
      Iterator localIterator = mLog.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        try
        {
          localFileOutputStream.write((str2 + "\n").getBytes());
        }
        catch (IOException localIOException) {}
      }
    }
    localFileOutputStream.flush();
    bgo.a(localFileOutputStream);
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
  
  public final void a(@chd String paramString)
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
 * Qualified Name:     baq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */