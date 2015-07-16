import android.content.Context;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

final class api$3
  extends bhf
{
  api$3(api paramapi, Context paramContext, akl paramakl, CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, StorySnapLogbook paramStorySnapLogbook, api.a parama)
  {
    super(paramContext, paramakl, paramSaveSnapContext, paramSaveMediaNotificationsToShow);
  }
  
  protected final void a()
  {
    super.a();
    a.a(StorySnapLogbook.ActionState.SAVED);
    apl.b(a.mStorySnap);
    b.c();
  }
  
  protected final void b()
  {
    super.b();
    a.a(StorySnapLogbook.ActionState.READY);
    b.d();
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    a.a(StorySnapLogbook.ActionState.SAVING);
    b.a();
  }
}

/* Location:
 * Qualified Name:     api.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */