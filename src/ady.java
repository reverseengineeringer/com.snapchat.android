import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.stories.StoriesSection;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.lucasr.twowayview.TwoWayView;

public final class ady
  extends apm
{
  public final aea a;
  public final List<ChannelPage> b = new ArrayList();
  public adz c;
  private final afh h;
  private final OpenChannelAnimationView i;
  private final Set<String> j = new LinkedHashSet();
  private final Bus k;
  
  public ady(Context paramContext, afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    this(paramContext, paramafh, paramOpenChannelAnimationView, new aea(), bbo.a());
  }
  
  private ady(Context paramContext, afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView, aea paramaea, Bus paramBus)
  {
    super(paramContext);
    i = paramOpenChannelAnimationView;
    h = paramafh;
    c = new adz(paramContext, paramafh, paramOpenChannelAnimationView, b);
    a = paramaea;
    k = paramBus;
  }
  
  @awj
  private void q()
  {
    if ((!h.d()) && (!i.d) && (!b.isEmpty()))
    {
      List localList = a.a(b, 1);
      b.clear();
      b.addAll(localList);
      c.notifyDataSetChanged();
    }
  }
  
  @chc
  public final View a(@chd View paramView, ViewGroup paramViewGroup, @chc LayoutInflater paramLayoutInflater)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() == StoriesAdapter.StoriesViewType.DISCOVER) {}
    }
    else
    {
      localView = paramLayoutInflater.inflate(2130968657, paramViewGroup, false);
      a(localView);
      localView.setTag(StoriesAdapter.StoriesViewType.DISCOVER);
    }
    return localView;
  }
  
  public final StoriesSection a(boolean paramBoolean)
  {
    return StoriesSection.DISCOVER;
  }
  
  public final void a(ma paramma)
  {
    if (!j.isEmpty()) {
      discoverPublishersSeen = avz.a(j, "~");
    }
  }
  
  public final void b() {}
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.DISCOVER;
  }
  
  public final void d() {}
  
  @chc
  public final BaseAdapter e()
  {
    return c;
  }
  
  public final void f() {}
  
  public final void g() {}
  
  public final void h()
  {
    j.clear();
    f = -1;
    q();
  }
  
  public final void i()
  {
    q();
  }
  
  public final void j()
  {
    k.b(this);
  }
  
  public final void k()
  {
    k.c(this);
  }
  
  public final boolean k_()
  {
    return c.isEmpty();
  }
  
  public final String l()
  {
    return "discover&";
  }
  
  protected final void m()
  {
    if (e == null) {}
    for (;;)
    {
      return;
      int m = 0;
      while (m < e.getChildCount())
      {
        Object localObject = e.getChildAt(m);
        if (localObject != null)
        {
          localObject = ((ChannelView)((View)localObject).getTag(2131362057)).getChannelPage();
          if (localObject != null) {
            j.add(d);
          }
        }
        m += 1;
      }
    }
  }
  
  @bpi
  public final void onEditionClose(afw paramafw)
  {
    q();
  }
}

/* Location:
 * Qualified Name:     ady
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */