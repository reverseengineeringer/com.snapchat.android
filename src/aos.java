import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.stories.StoriesSection;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.lucasr.twowayview.TwoWayView;

public final class aos
  extends aoq
{
  final auy c;
  protected aor d;
  private final List<StoryCollection> e;
  private final ajq f;
  private final zd g;
  
  private aos(Context paramContext, List<StoryCollection> paramList, auy paramauy, ajq paramajq, Bus paramBus, zd paramzd)
  {
    super(paramContext);
    e = paramList;
    c = paramauy;
    f = paramajq;
    g = paramzd;
    d = new aor(paramContext, e, paramauy, paramBus);
    b();
  }
  
  public aos(Context paramContext, zd paramzd)
  {
    this(paramContext, new ArrayList(), auy.a(), ajq.a(), ban.a(), paramzd);
  }
  
  @cgb
  public final View a(@cgc View paramView, ViewGroup paramViewGroup, @cgb LayoutInflater paramLayoutInflater)
  {
    if ((paramView == null) || (paramView.getTag() != StoriesAdapter.StoriesViewType.LIVE_STORIES))
    {
      paramView = paramLayoutInflater.inflate(2130968692, paramViewGroup, false);
      a(paramView);
      paramView.setTag(StoriesAdapter.StoriesViewType.LIVE_STORIES);
      return paramView;
    }
    d.notifyDataSetChanged();
    return paramView;
  }
  
  public final void b()
  {
    e.clear();
    e.addAll(f.p());
  }
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.LIVE_STORIES;
  }
  
  public final void d()
  {
    Object localObject = new ArrayList();
    if (b != null)
    {
      int i = Math.min(b.getCount(), e.size());
      int j = Math.min(b.getLastVisiblePosition() + 1, i);
      i = b.getFirstVisiblePosition();
      while (i < j)
      {
        ((List)localObject).add(e.get(i));
        i += 1;
      }
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      bgp.b(new Runnable()
      {
        public final void run()
        {
          c.a(a, a.m());
        }
      });
    }
  }
  
  @cgb
  public final BaseAdapter e()
  {
    return d;
  }
  
  public final void f()
  {
    int j = Math.min(2, e.size());
    int i = 0;
    while (i < j)
    {
      g.a((StoryCollection)e.get(i), 3, null, false, StoryLoadingContext.AUTO_LOADED);
      i += 1;
    }
  }
  
  public final void g()
  {
    d.notifyDataSetChanged();
  }
  
  public final String h()
  {
    return "livestories&";
  }
  
  public final StoriesSection i()
  {
    return StoriesSection.LIVE;
  }
  
  public final boolean m_()
  {
    return e.isEmpty();
  }
}

/* Location:
 * Qualified Name:     aos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */