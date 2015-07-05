import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.api.LoadAllStorySnapsTask;
import com.snapchat.android.api.LoadAllStorySnapsTask.1;
import com.snapchat.android.api.LoadAllStorySnapsTask.2;
import com.snapchat.android.api.LoadAllStorySnapsTask.Status;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;
import com.snapchat.android.util.save.SaveStoryToGalleryTask;
import com.snapchat.android.util.save.SaveStoryToGalleryTask.Result;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class apx
{
  public final Context a;
  public final StoryGroup b;
  final nl c;
  final bgc d;
  
  public apx(Context paramContext, StoryGroup paramStoryGroup)
  {
    this(paramContext, paramStoryGroup, nl.a(), bgc.a());
  }
  
  private apx(Context paramContext, StoryGroup paramStoryGroup, nl paramnl, bgc parambgc)
  {
    a = paramContext;
    b = paramStoryGroup;
    c = paramnl;
    d = parambgc;
  }
  
  public final void a()
  {
    Object localObject1 = b.mActionState;
    if ((localObject1 == StoryGroup.ActionState.SAVING) || (localObject1 == StoryGroup.ActionState.SAVED)) {
      throw new IllegalStateException("Can only save one story at a time.");
    }
    b.a(StoryGroup.ActionState.SAVING);
    localObject1 = new LoadAllStorySnapsTask(b.l())
    {
      public final void a()
      {
        apx localapx = apx.this;
        List localList = b.a(false);
        if (localList.size() == 1)
        {
          ajr localajr = get0mStorySnap;
          if (localajr.ak() == 0)
          {
            new apx.3(localapx, a, localajr, CameraEventAnalytics.SaveSnapContext.STORY, SaveMediaNotificationsToShow.FAIL_ONLY).executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new Void[0]);
            return;
          }
        }
        new SaveStoryToGalleryTask(a, b, localList, SaveMediaNotificationsToShow.FAIL_ONLY).executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new Void[0]);
      }
      
      public final void b()
      {
        Object localObject = d;
        AlertDialogUtils.a();
        AlertDialogUtils.a(mContext.getResources().getString(2131493372), mContext);
        b.a(StoryGroup.ActionState.READY);
        localObject = b.a(false).iterator();
        int j = 0;
        int i = 0;
        while (((Iterator)localObject).hasNext())
        {
          ajr localajr = nextmStorySnap;
          if (localajr.ai())
          {
            j += 1;
          }
          else
          {
            localajr.ak();
            i += 1;
          }
        }
        EasyMetric.EasyMetricFactory.a("SAVE_ENTIRE_STORY").a("success", Boolean.valueOf(false)).a("reason", SaveStoryToGalleryTask.Result.FAILED_SNAPS_DID_NOT_LOAD_IN_TIME).a("count", Integer.valueOf(j + i)).a("video_count", Integer.valueOf(j)).a("image_count", Integer.valueOf(i)).a(false);
      }
    };
    synchronized (mMutex)
    {
      if (mStatus != LoadAllStorySnapsTask.Status.INITIALIZED) {
        throw new IllegalStateException("Already executed this task. Status: " + mStatus);
      }
    }
    mStatus = LoadAllStorySnapsTask.Status.RUNNING;
    if (mTimeoutMs != 0L) {}
    synchronized (mMutex)
    {
      mTimeoutFuture = mTimeoutExecutor.schedule(new LoadAllStorySnapsTask.1(localLoadAllStorySnapsTask), mTimeoutMs, TimeUnit.MILLISECONDS);
      localLoadAllStorySnapsTask.c();
      localLoadAllStorySnapsTask.d();
    }
    synchronized (mMutex)
    {
      if ((mStatus == LoadAllStorySnapsTask.Status.RUNNING) && (mPollFrequencyMs != 0L)) {}
      synchronized (mMutex)
      {
        mPollingTask = new LoadAllStorySnapsTask.2(localLoadAllStorySnapsTask);
        mPollingTimer = new Timer();
        mPollingTimer.scheduleAtFixedRate(mPollingTask, mPollFrequencyMs, mPollFrequencyMs);
        return;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     apx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */