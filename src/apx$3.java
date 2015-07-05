import android.content.Context;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

final class apx$3
  extends bgb
{
  apx$3(apx paramapx, Context paramContext, ajr paramajr, CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    super(paramContext, paramajr, paramSaveSnapContext, paramSaveMediaNotificationsToShow);
  }
  
  protected final void a()
  {
    super.a();
    a.d.d();
    a.b.a(StoryGroup.ActionState.READY);
  }
  
  protected final void a(String paramString)
  {
    super.a(paramString);
    a.b.a(StoryGroup.ActionState.SAVED);
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    a.b.a(StoryGroup.ActionState.SAVING);
  }
}

/* Location:
 * Qualified Name:     apx.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */