import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;
import javax.validation.constraints.NotNull;

public final class aon
  implements View.OnClickListener
{
  private final zd a;
  private final ng b;
  private final SnapViewEventAnalytics c;
  private final aup d;
  private final StoryCollection e;
  private final List<StorySnapLogbook> f;
  
  public aon(@NotNull StoryCollection paramStoryCollection)
  {
    this(paramStoryCollection, null);
  }
  
  public aon(@NotNull StoryCollection paramStoryCollection, @r List<StorySnapLogbook> paramList)
  {
    this(zd.a(), ng.a(), SnapViewEventAnalytics.a(), aup.d(), paramStoryCollection, paramList);
  }
  
  private aon(zd paramzd, ng paramng, SnapViewEventAnalytics paramSnapViewEventAnalytics, aup paramaup, StoryCollection paramStoryCollection, @r List<StorySnapLogbook> paramList)
  {
    a = paramzd;
    b = paramng;
    c = paramSnapViewEventAnalytics;
    d = paramaup;
    e = paramStoryCollection;
    f = paramList;
  }
  
  public final void onClick(View paramView)
  {
    if (a.a(e, 3, null, true, StoryLoadingContext.TAP_TO_LOAD) == 0)
    {
      c.a(SnapViewEventAnalytics.SnapViewEventSourceType.STORY);
      aup localaup = d;
      StoryCollection localStoryCollection = e;
      List localList = f;
      paramView = paramView.getContext();
      if (mSnapView != null) {
        new aup.c(localaup, localStoryCollection, localList, paramView).run();
      }
      return;
    }
    b.a("story", "tap_to_load");
  }
}

/* Location:
 * Qualified Name:     aon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */