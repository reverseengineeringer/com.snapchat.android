import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.api.LoadAllStorySnapsTask;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;
import com.snapchat.android.util.save.SaveStoryToGalleryTask;
import com.snapchat.android.util.save.SaveStoryToGalleryTask.Result;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class apx$2
  extends LoadAllStorySnapsTask
{
  apx$2(apx paramapx, Collection paramCollection)
  {
    super(paramCollection);
  }
  
  public final void a()
  {
    apx localapx = a;
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
    Object localObject = a.d;
    AlertDialogUtils.a();
    AlertDialogUtils.a(mContext.getResources().getString(2131493372), mContext);
    a.b.a(StoryGroup.ActionState.READY);
    localObject = a.b.a(false).iterator();
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
}

/* Location:
 * Qualified Name:     apx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */