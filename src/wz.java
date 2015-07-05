import android.net.Uri;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

public final class wz
{
  private static wz b;
  public final TranscodingResources a;
  private final TaskExecutor c;
  private final TranscodingPreferencesWrapper d;
  private final Map<ajm, Object> e = Collections.synchronizedMap(new HashMap());
  
  private wz()
  {
    this(new TaskExecutor(), TranscodingPreferencesWrapper.a(), new TranscodingResources(SnapchatApplication.b().getApplicationContext()));
  }
  
  private wz(@cgb TaskExecutor paramTaskExecutor, @cgb TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper, @cgb TranscodingResources paramTranscodingResources)
  {
    c = paramTaskExecutor;
    d = paramTranscodingPreferencesWrapper;
    a = paramTranscodingResources;
  }
  
  public static wz a()
  {
    if (b == null) {
      b = new wz();
    }
    return b;
  }
  
  private boolean c(ajm paramajm)
  {
    boolean bool = false;
    if (mTranscodingState.d())
    {
      Timber.f("VideoTranscoder", "Transcoding failed with: " + mTranscodingState.c() + " trying again", new Object[0]);
      a(paramajm);
      bool = true;
    }
    return bool;
  }
  
  private void d(@cgb ajm arg1)
  {
    if (mTranscodingState.c() == Task.Status.RUNNING) {
      synchronized (e.get(???))
      {
        ???.wait(60000L);
        return;
      }
    }
  }
  
  public final void a(@cgb ajm paramajm)
  {
    int k = 1;
    wv localwv = new wv(paramajm);
    Object localObject = TranscodingPreferencesWrapper.b();
    boolean bool = paramajm.o();
    int i;
    int j;
    if (localObject == TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED_FOR_LOW_QUALITY)
    {
      i = 1;
      j = k;
      if (!bool)
      {
        if (i == 0) {
          break label199;
        }
        j = k;
      }
      label49:
      if (j == 0) {
        return;
      }
      if (!e.containsKey(paramajm)) {
        e.put(paramajm, new Object());
      }
      paramajm.a(Task.Status.INVALID);
      if ((localObject != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) && (localObject != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED_FOR_LOW_QUALITY)) {
        return;
      }
      i = 5;
    }
    for (;;)
    {
      j = i - 1;
      if ((i <= 0) || (mTranscodingState.c() != Task.Status.INVALID)) {
        break label272;
      }
      try
      {
        localObject = mVideoUri;
        if (localObject != null) {
          break label204;
        }
        throw new SetupException(new NullPointerException("Null video uri!"));
      }
      catch (SetupException localSetupException)
      {
        TranscodingPreferencesWrapper.c(false);
        System.err.println(localSetupException.getMessage());
        Timber.f("VideoTranscoder", localSetupException.getMessage(), new Object[0]);
        i = j;
      }
      continue;
      i = 0;
      break;
      label199:
      j = 0;
      break label49;
      label204:
      TranscodingPreferencesWrapper.c(true);
      TranscodingConfiguration localTranscodingConfiguration = localwv.a(localSetupException.getPath());
      ww localww = new ww(this, paramajm, localTranscodingConfiguration, new oh());
      a(new TranscodingTask(a, localTranscodingConfiguration), localww, null);
      paramajm.a(Task.Status.RUNNING);
      i = j;
    }
    label272:
    if (j < 0) {
      a(paramajm, Task.Status.CONFIG_ERROR);
    }
  }
  
  public final void a(ajm arg1, Task.Status paramStatus)
  {
    boolean bool = false;
    wu localwu = mTranscodingState;
    synchronized (a)
    {
      b -= 1;
      localwu.a(paramStatus);
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
      ???.notifyAll();
      return;
    }
  }
  
  public final void a(@cgb TranscodingTask paramTranscodingTask, Task.DoneCallback paramDoneCallback, Task.ProgressUpdateCallback paramProgressUpdateCallback)
  {
    c.execute(paramTranscodingTask, paramDoneCallback, paramProgressUpdateCallback);
  }
  
  public final boolean b(@cgb ajm paramajm)
  {
    d(paramajm);
    if (mTranscodingState.e()) {
      if (c(paramajm)) {}
    }
    do
    {
      return false;
      paramajm.b(mTranscodingState.c());
      d(paramajm);
    } while (mTranscodingState.c() != Task.Status.FINISHED);
    return true;
  }
}

/* Location:
 * Qualified Name:     wz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */