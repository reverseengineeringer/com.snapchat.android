import android.content.Context;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

public final class aom
{
  final aop a;
  private final ajn b;
  private final Context c;
  
  public aom(Context paramContext)
  {
    this(paramContext, ajn.a(), aop.a());
  }
  
  private aom(Context paramContext, ajn paramajn, aop paramaop)
  {
    c = paramContext;
    b = paramajn;
    a = paramaop;
  }
  
  public final void a(@cgb final StorySnapLogbook paramStorySnapLogbook, @cgb final aom.a parama)
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
      new ol(paramStorySnapLogbook, c)
      {
        protected final void a(aku paramAnonymousaku)
        {
          super.a(paramAnonymousaku);
          parama.b();
        }
        
        protected final void a(String paramAnonymousString, int paramAnonymousInt)
        {
          super.a(paramAnonymousString, paramAnonymousInt);
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.READY);
          parama.d();
        }
        
        protected final void b(aku paramAnonymousaku)
        {
          super.b(paramAnonymousaku);
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.DELETED);
          parama.c();
        }
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.DELETING);
          parama.a();
        }
      }.executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    }
  }
  
  @avl
  @ccm
  public final void b(@cgb final StorySnapLogbook paramStorySnapLogbook, @cgb final aom.a parama)
  {
    ajr localajr = mStorySnap;
    if (localajr.ak() == 0) {
      new bgb(c, localajr, CameraEventAnalytics.SaveSnapContext.STORY, SaveMediaNotificationsToShow.FAIL_ONLY)
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
          aop.b(paramStorySnapLogbookmStorySnap);
          parama.c();
        }
        
        protected final void onPreExecute()
        {
          super.onPreExecute();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVING);
          parama.a();
        }
      }.executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new Void[0]);
    }
    for (;;)
    {
      AnalyticsEvents.a(localajr);
      return;
      new bgf(c, localajr, CameraEventAnalytics.SaveSnapContext.STORY, SaveMediaNotificationsToShow.FAIL_ONLY)
      {
        protected final void a()
        {
          super.a();
          paramStorySnapLogbook.a(StorySnapLogbook.ActionState.SAVED);
          aop.b(paramStorySnapLogbookmStorySnap);
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
      }.executeOnExecutor(auh.MISCELLANEOUS_EXECUTOR, new Void[0]);
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
 * Qualified Name:     aom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */