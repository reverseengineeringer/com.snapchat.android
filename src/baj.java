import android.content.Context;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.Timber.LogType;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class baj
{
  public static final String ADD_LIVE_LOGS_FILE_PREFIX = "snapchat_shake2report_addlive_";
  public static final String BITMAP_POOL_MONITOR_LOGS_FILE_PREFIX = "snapchat_shake2report_bitmap_pool_monitor_";
  public static final String CHAT_LOGS_FILE_PREFIX = "snapchat_shake2report_chat_";
  private static final String DEFAULT_LOG = "DEFAULT";
  public static final String DEFAULT_LOGS_FILE_PREFIX = "snapchat_shake2report_default_";
  public static final String DOWNLOAD_PROGRESS_LOGS_FILE_PREFIX = "snapchat_shake2report_download_progress_";
  public static final String LOCATION_MANAGER_LOGS_FILE_PREFIX = "snapchat_shake2report_location_manager_";
  public static final String[] LOG_FILE_PREFIXES = { "snapchat_shake2report_addlive_", "snapchat_shake2report_chat_", "snapchat_shake2report_location_manager_", "snapchat_shake2report_bitmap_pool_monitor_", "snapchat_shake2report_download_progress_", "snapchat_shake2report_default_" };
  public static final int MAX_NUMBER_OF_LOG_FILES_TO_KEEP = 10;
  private static final String TAG = "DebugCapturer";
  private static final Map<String, baq> mLogs = new ConcurrentHashMap() {};
  
  public static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = mLogs.values().iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append(((baq)localIterator.next()).a()).append("\n\n\n ------ >>>> New Entry <<<< -------");
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString, int paramInt)
  {
    return paramString + paramInt + ".txt";
  }
  
  public static void a(@chd String paramString)
  {
    if (!ReleaseManager.f()) {
      return;
    }
    a("DEFAULT", new String[] { "[", new SimpleDateFormat("EEE MMM dd HH:mm:ss.SSS zzz yyyy").format(new Date()), "] ", paramString });
  }
  
  private static void a(@chc String paramString, String... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < 4)
    {
      String str = paramVarArgs[i];
      if (str != null) {
        localStringBuilder.append(str);
      }
      i += 1;
    }
    if (mLogs.containsKey(paramString)) {}
    for (paramString = (baq)mLogs.get(paramString);; paramString = (baq)mLogs.get("DEFAULT"))
    {
      paramString.a(localStringBuilder.toString());
      if (SnapchatActivity.m()) {
        az.a(localStringBuilder.toString());
      }
      return;
    }
  }
  
  public static File[] a(Context paramContext, boolean paramBoolean)
  {
    localObject = new baq("snapchat_shake2report_addlive_");
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[] { "logcat", "-d", "-v", "threadtime", "AddLive_SDK:V", "AddLive_SDK:V", "*:S" }).getInputStream()));
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        ((baq)localObject).a(str);
      }
      Iterator localIterator;
      int i;
      return (File[])localObject;
    }
    catch (IOException localIOException)
    {
      mLogs.put("snapchat_shake2report_addlive_", localObject);
      localObject = new File[mLogs.size()];
      localIterator = mLogs.values().iterator();
      i = 0;
      while (localIterator.hasNext())
      {
        localObject[i] = ((baq)localIterator.next()).a(paramContext, paramBoolean);
        i += 1;
      }
    }
  }
  
  public static String[] b()
  {
    String[] arrayOfString = new String[mLogs.size()];
    Iterator localIterator = mLogs.values().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      arrayOfString[i] = nextmOutputFile.getName();
      i += 1;
    }
    return arrayOfString;
  }
}

/* Location:
 * Qualified Name:     baj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */