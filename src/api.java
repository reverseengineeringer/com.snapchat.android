import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

public final class api
{
  final apl a;
  private final aki b;
  private final Context c;
  
  public api(Context paramContext)
  {
    this(paramContext, aki.a(), apl.a());
  }
  
  private api(Context paramContext, aki paramaki, apl paramapl)
  {
    c = paramContext;
    b = paramaki;
    a = paramapl;
  }
  
  public final void a(@chc final StorySnapLogbook paramStorySnapLogbook, @chc final api.a parama)
  {
    if (mStorySnap.mFailed)
    {
      String str = mStorySnap.mClientId;
      b.a(mStoryId, str);
      parama.c();
    }
    for (;;)
    {
      AnalyticsEvents.c(mStorySnap.mClientId);
      return;
      new pc(paramStorySnapLogbook, c)
      {
        protected final void a(alp paramAnonymousalp)
        {
          super.a(paramAnonymousalp);
          parama.b();
        }
        
        protected final void a(String paramAnonymousString, int paramAnonymousInt)
        {
          super.a(paramAnonymousString, paramAnonymousInt);
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.READY);
          parama.d();
        }
        
        protected final void b(alp paramAnonymousalp)
        {
          super.b(paramAnonymousalp);
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.DELETED);
          parama.c();
        }
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.DELETING);
          parama.a();
        }
      }.executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    }
  }
  
  @awj
  @cdn
  public final void b(@chc final StorySnapLogbook paramStorySnapLogbook, @chc final api.a parama)
  {
    akl localakl = mStorySnap;
    if (localakl.ai() == 0) {
      new bhb(c, localakl, CameraEventAnalytics.SaveSnapContext.STORY, SaveMediaNotificationsToShow.FAIL_ONLY)
      {
        protected final void a()
        {
          super.a();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.READY);
          parama.d();
        }
        
        protected final void a(String paramAnonymousString)
        {
          super.a(paramAnonymousString);
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVED);
          apl.b(paramStorySnapLogbookmStorySnap);
          parama.c();
        }
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVING);
          parama.a();
        }
      }.executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new Void[0]);
    }
    for (;;)
    {
      AnalyticsEvents.a(localakl);
      return;
      new bhf(c, localakl, CameraEventAnalytics.SaveSnapContext.STORY, SaveMediaNotificationsToShow.FAIL_ONLY)
      {
        protected final void a()
        {
          super.a();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVED);
          apl.b(paramStorySnapLogbookmStorySnap);
          parama.c();
        }
        
        protected final void b()
        {
          super.b();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.READY);
          parama.d();
        }
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVING);
          parama.a();
        }
      }.executeOnExecutor(avf.MISCELLANEOUS_EXECUTOR, new Void[0]);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
    
    public abstract void d();
  }
}

/* Location:
 * Qualified Name:     api
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */