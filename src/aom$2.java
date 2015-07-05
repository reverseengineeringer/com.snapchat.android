import android.content.Context;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

final class aom$2
  extends bgb
{
  aom$2(aom paramaom, Context paramContext, ajr paramajr, CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, StorySnapLogbook paramStorySnapLogbook, aom.a parama)
  {
    super(paramContext, paramajr, paramSaveSnapContext, paramSaveMediaNotificationsToShow);
  }
  
  protected final void a()
  {
    super.a();
    a.a(StorySnapLogbook.ActionState.READY);
    b.d();
  }
  
  protected final void a(String paramString)
  {
    super.a(paramString);
    a.a(StorySnapLogbook.ActionState.SAVED);
    aop.b(a.mStorySnap);
    b.c();
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    a.a(StorySnapLogbook.ActionState.SAVING);
    b.a();
  }
}

/* Location:
 * Qualified Name:     aom.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */