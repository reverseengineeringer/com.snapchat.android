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
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import org.lucasr.twowayview.TwoWayView;

public final class apo
  extends apm
{
  final avw a;
  protected apn b;
  private final zz c;
  private final Bus h;
  private final app i;
  private final Set<String> j;
  
  private apo(Context paramContext, app paramapp, avw paramavw, zz paramzz, Bus paramBus, Set<String> paramSet)
  {
    super(paramContext);
    a = paramavw;
    c = paramzz;
    h = paramBus;
    i = paramapp;
    b = new apn(paramContext, i.a, paramavw);
    j = paramSet;
    b();
  }
  
  public apo(Context paramContext, zz paramzz)
  {
    this(paramContext, new app(), avw.a(), paramzz, bbo.a(), new HashSet());
  }
  
  @chc
  public final View a(@chd View paramView, ViewGroup paramViewGroup, @chc LayoutInflater paramLayoutInflater)
  {
    if ((paramView == null) || (paramView.getTag() != StoriesAdapter.StoriesViewType.LIVE_STORIES))
    {
      paramView = paramLayoutInflater.inflate(2130968693, paramViewGroup, false);
      a(paramView);
      paramView.setTag(StoriesAdapter.StoriesViewType.LIVE_STORIES);
      return paramView;
    }
    b.notifyDataSetChanged();
    return paramView;
  }
  
  public final StoriesSection a(boolean paramBoolean)
  {
    return StoriesSection.LIVE;
  }
  
  public final void a(ma paramma)
  {
    if (!j.isEmpty()) {
      liveStoriesSeen = avz.a(j, "~");
    }
  }
  
  public final void b()
  {
    app localapp = i;
    a.clear();
    a.addAll(b.o());
  }
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.LIVE_STORIES;
  }
  
  public final void d()
  {
    Object localObject1 = i.a;
    Object localObject2 = new ArrayList();
    if (e != null)
    {
      int k = Math.min(e.getCount(), ((List)localObject1).size());
      int m = Math.min(e.getLastVisiblePosition() + 1, k);
      k = e.getFirstVisiblePosition();
      while (k < m)
      {
        ((List)localObject2).add(((List)localObject1).get(k));
        k += 1;
      }
    }
    localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((StoryCollection)((Iterator)localObject1).next()).C();
      if (!((List)localObject2).isEmpty()) {
        bhp.b(new apo.a((List)localObject2));
      }
    }
  }
  
  @chc
  public final BaseAdapter e()
  {
    return b;
  }
  
  public final void f()
  {
    List localList = i.a;
    int m = Math.min(c.e(), localList.size());
    int k = 0;
    while (k < m)
    {
      c.a((StoryCollection)localList.get(k), c.b(), null, false, StoryLoadingContext.AUTO_LOADED);
      k += 1;
    }
  }
  
  public final void g()
  {
    b.notifyDataSetChanged();
  }
  
  public final void h()
  {
    b();
    f();
    j.clear();
    f = -1;
  }
  
  public final void i() {}
  
  public final void j()
  {
    h.b(this);
  }
  
  public final void k()
  {
    h.c(this);
  }
  
  public final boolean k_()
  {
    return i.a.isEmpty();
  }
  
  public final String l()
  {
    return "livestories&";
  }
  
  protected final void m()
  {
    if (e == null) {}
    for (;;)
    {
      return;
      int k = 0;
      while (k < e.getChildCount())
      {
        Object localObject = e.getChildAt(k);
        if (localObject != null)
        {
          localObject = (apq)((View)localObject).getTag();
          if ((localObject != null) && (d != null)) {
            j.add(d);
          }
        }
        k += 1;
      }
    }
  }
  
  @bpi
  public final void onRecentStoryCollectionCompletedViewingEvent(bdt parambdt)
  {
    if (!mStorySnap.mIsShared) {
      return;
    }
    parambdt = i;
    ListIterator localListIterator = a.listIterator();
    while (localListIterator.hasNext())
    {
      StoryCollection localStoryCollection = (StoryCollection)localListIterator.next();
      if (((localStoryCollection instanceof akc)) && (localStoryCollection.s() == 0))
      {
        localStoryCollection = b.b(localStoryCollection.l());
        if (localStoryCollection != null) {
          localListIterator.set(localStoryCollection);
        }
      }
    }
    b.notifyDataSetChanged();
    d();
    f();
  }
  
  public final class a
    implements Runnable
  {
    private final List<avx> b;
    
    a()
    {
      List localList;
      b = localList;
    }
    
    public final void run()
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        avx localavx = (avx)localIterator.next();
        a.a(d, localavx);
      }
    }
  }
}

/* Location:
 * Qualified Name:     apo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */