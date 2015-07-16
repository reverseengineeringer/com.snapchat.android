import android.net.Uri;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.task.TaskExecutor;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;
import com.snapchat.videotranscoder.task.TranscodingTask;
import com.snapchat.videotranscoder.utils.TranscodingResources;
import java.io.PrintStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class xu
{
  private static xu b;
  public final TranscodingResources a;
  private final TaskExecutor c;
  private final TranscodingPreferencesWrapper d;
  private final Map<aku, Object> e = Collections.synchronizedMap(new HashMap());
  
  private xu()
  {
    this(new TaskExecutor(), TranscodingPreferencesWrapper.a(), new TranscodingResources(SnapchatApplication.b().getApplicationContext()));
  }
  
  private xu(@chc TaskExecutor paramTaskExecutor, @chc TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper, @chc TranscodingResources paramTranscodingResources)
  {
    c = paramTaskExecutor;
    d = paramTranscodingPreferencesWrapper;
    a = paramTranscodingResources;
  }
  
  public static xu a()
  {
    if (b == null) {
      b = new xu();
    }
    return b;
  }
  
  private boolean c(aku paramaku)
  {
    if (mTranscodingState.d())
    {
      new StringBuilder("Transcoding failed with: ").append(mTranscodingState.c()).append(" trying again");
      a(paramaku);
      return true;
    }
    return false;
  }
  
  private void d(@chc aku arg1)
  {
    if (mTranscodingState.c() == Task.Status.RUNNING) {
      synchronized (e.get(???)) {}
    }
  }
  
  public final void a(@chc aku paramaku)
  {
    int k = 1;
    xq localxq = new xq(paramaku);
    Object localObject = TranscodingPreferencesWrapper.b();
    boolean bool = paramaku.o();
    int i;
    int j;
    if (localObject == TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED_FOR_LOW_QUALITY)
    {
      i = 1;
      j = k;
      if (!bool)
      {
        if (i == 0) {
          break label191;
        }
        j = k;
      }
      label49:
      if (j == 0) {
        return;
      }
      if (!e.containsKey(paramaku)) {
        e.put(paramaku, new Object());
      }
      paramaku.a(Task.Status.INVALID);
      if ((localObject != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) && (localObject != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED_FOR_LOW_QUALITY)) {
        return;
      }
      i = 5;
    }
    for (;;)
    {
      j = i - 1;
      if ((i <= 0) || (mTranscodingState.c() != Task.Status.INVALID)) {
        break label264;
      }
      try
      {
        localObject = mVideoUri;
        if (localObject != null) {
          break label196;
        }
        throw new SetupException(new NullPointerException("Null video uri!"));
      }
      catch (SetupException localSetupException)
      {
        TranscodingPreferencesWrapper.c(false);
        System.err.println(localSetupException.getMessage());
        localSetupException.getMessage();
        i = j;
      }
      continue;
      i = 0;
      break;
      label191:
      j = 0;
      break label49;
      label196:
      TranscodingPreferencesWrapper.c(true);
      TranscodingConfiguration localTranscodingConfiguration = localxq.a(localSetupException.getPath());
      xr localxr = new xr(this, paramaku, localTranscodingConfiguration, new oy());
      a(new TranscodingTask(a, localTranscodingConfiguration), localxr, null);
      paramaku.a(Task.Status.RUNNING);
      i = j;
    }
    label264:
    if (j < 0) {
      a(paramaku, Task.Status.CONFIG_ERROR);
    }
  }
  
  public final void a(aku arg1, Task.Status paramStatus)
  {
    boolean bool = false;
    xp localxp = mTranscodingState;
    synchronized (a)
    {
      b -= 1;
      localxp.a(paramStatus);
      TranscodingPreferencesWrapper.c(false);
      if (!mTranscodingState.e()) {
        break label73;
      }
      if (c(???)) {
        return;
      }
    }
    ???.b(paramStatus);
    label73:
    synchronized (e.get(???))
    {
      ??? = d;
      if (paramStatus == Task.Status.FINISHED) {
        bool = true;
      }
      ((TranscodingPreferencesWrapper)???).b(bool);
      return;
    }
  }
  
  public final void a(@chc TranscodingTask paramTranscodingTask, Task.DoneCallback paramDoneCallback, Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    c.execute(paramTranscodingTask, paramDoneCallback, paramProgressUpdateCallback);
  }
  
  public final boolean b(@chc aku paramaku)
  {
    d(paramaku);
    if (mTranscodingState.e()) {
      if (c(paramaku)) {}
    }
    do
    {
      return false;
      paramaku.b(mTranscodingState.c());
      d(paramaku);
    } while (mTranscodingState.c() != Task.Status.FINISHED);
    return true;
  }
}

/* Location:
 * Qualified Name:     xu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */