import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;
import javax.validation.constraints.NotNull;

public final class apj
  implements View.OnClickListener
{
  private final zz a;
  private final nx b;
  private final SnapViewEventAnalytics c;
  private final apl d;
  private final avn e;
  private final StoryCollection f;
  private final List<StorySnapLogbook> g;
  private final long h;
  
  public apj(@NotNull StoryCollection paramStoryCollection)
  {
    this(zz.a(), nx.a(), SnapViewEventAnalytics.a(), apl.a(), avn.d(), paramStoryCollection, null, -1L);
  }
  
  public apj(@NotNull StoryCollection paramStoryCollection, long paramLong)
  {
    this(zz.a(), nx.a(), SnapViewEventAnalytics.a(), apl.a(), avn.d(), paramStoryCollection, null, paramLong);
  }
  
  public apj(@NotNull StoryCollection paramStoryCollection, @r List<StorySnapLogbook> paramList)
  {
    this(zz.a(), nx.a(), SnapViewEventAnalytics.a(), apl.a(), avn.d(), paramStoryCollection, paramList, -1L);
  }
  
  private apj(zz paramzz, nx paramnx, SnapViewEventAnalytics paramSnapViewEventAnalytics, apl paramapl, avn paramavn, StoryCollection paramStoryCollection, @r List<StorySnapLogbook> paramList, long paramLong)
  {
    a = paramzz;
    b = paramnx;
    c = paramSnapViewEventAnalytics;
    d = paramapl;
    e = paramavn;
    f = paramStoryCollection;
    g = paramList;
    h = paramLong;
  }
  
  public final void onClick(View paramView)
  {
    if (a.a(f, a.a.a.a("STORY_LOADER_ANDROID", "NUM_TO_LOAD_ON_TAP", 5), null, true, StoryLoadingContext.TAP_TO_LOAD) == 0)
    {
      c.a(SnapViewEventAnalytics.SnapViewEventSourceType.STORY);
      d.a(h);
      avn localavn = e;
      StoryCollection localStoryCollection = f;
      List localList = g;
      paramView = paramView.getContext();
      if (mSnapView != null) {
        new avn.c(localavn, localStoryCollection, localList, paramView).run();
      }
      return;
    }
    b.a("story", "tap_to_load");
  }
}

/* Location:
 * Qualified Name:     apj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */