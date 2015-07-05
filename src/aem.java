import android.database.Cursor;
import android.support.v4.view.PagerAdapter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.DSnapIntroVideoView;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager.SwipeToExitMethod;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager.b;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class aem
  extends PagerAdapter
{
  protected final adf a;
  protected final adj b;
  protected final apd c;
  protected final ChannelPage d;
  protected final String e;
  protected final abr f;
  protected final ReleaseManager g;
  protected boolean h = false;
  protected ArrayList<DSnapPage> i = new ArrayList();
  protected ArrayList<DSnapPage> j = new ArrayList();
  
  protected aem(@cgb ChannelPage paramChannelPage, @cgb String paramString, @cgb abr paramabr, @cgb apd paramapd, @cgb adf paramadf, @cgb adj paramadj, @cgb ReleaseManager paramReleaseManager)
  {
    c = paramapd;
    d = paramChannelPage;
    e = paramString;
    f = paramabr;
    a = paramadf;
    b = paramadj;
    g = paramReleaseManager;
  }
  
  @cgc
  private DSnapPage a(DSnapPage paramDSnapPage)
  {
    Iterator localIterator = j.iterator();
    DSnapPage localDSnapPage;
    for (Object localObject = null; localIterator.hasNext(); localObject = localDSnapPage)
    {
      localDSnapPage = (DSnapPage)localIterator.next();
      if (TextUtils.equals(a, a)) {
        break;
      }
    }
    return (DSnapPage)localObject;
  }
  
  private DiscoverEditionPageView.a a(final EditionViewerPager paramEditionViewerPager)
  {
    new DiscoverEditionPageView.a()
    {
      public final void a()
      {
        EditionViewerPager localEditionViewerPager = paramEditionViewerPager;
        if (localEditionViewerPager.getCurrentItem() == localEditionViewerPager.getAdapter().getCount() - 1)
        {
          if (a != null) {
            a.a(EditionViewerPager.SwipeToExitMethod.AUTO_ADVANCE);
          }
          return;
        }
        localEditionViewerPager.setCurrentItem(localEditionViewerPager.getCurrentItem() + 1);
      }
    };
  }
  
  private void a(ViewGroup paramViewGroup, DiscoverEditionPageView paramDiscoverEditionPageView)
  {
    paramViewGroup.removeView(paramDiscoverEditionPageView);
    paramDiscoverEditionPageView.q_();
    if ((paramDiscoverEditionPageView instanceof DSnapIntroVideoView))
    {
      c.a(2130968660, paramDiscoverEditionPageView);
      return;
    }
    c.a(2130968664, paramDiscoverEditionPageView);
  }
  
  public abstract int a(int paramInt);
  
  public final int a(String paramString)
  {
    int k = 0;
    while (k < i.size())
    {
      if (TextUtils.equals(paramString, i.get(k)).a)) {
        return b(k);
      }
      k += 1;
    }
    return -1;
  }
  
  public final View a(ViewGroup paramViewGroup, int paramInt)
  {
    paramInt = a(paramInt);
    if (paramInt < 0) {
      return paramViewGroup.findViewWithTag("IntroVideo");
    }
    if (paramInt < getCount()) {
      return paramViewGroup.findViewWithTag(i.get(paramInt)).a);
    }
    return null;
  }
  
  public abstract void a(@cgc Cursor paramCursor);
  
  @avl
  public final void a(ViewGroup paramViewGroup)
  {
    int k = 0;
    while (k < getCount())
    {
      DiscoverEditionPageView localDiscoverEditionPageView = (DiscoverEditionPageView)a(paramViewGroup, k);
      if (localDiscoverEditionPageView != null) {
        a(paramViewGroup, localDiscoverEditionPageView);
      }
      k += 1;
    }
  }
  
  public abstract int b(int paramInt);
  
  @avl
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    a(paramViewGroup, (DiscoverEditionPageView)a);
  }
  
  public final int getItemPosition(Object paramObject)
  {
    aem.a locala = (aem.a)paramObject;
    if (c) {
      return -1;
    }
    Object localObject = null;
    int k = 0;
    for (;;)
    {
      paramObject = localObject;
      if (k < i.size())
      {
        paramObject = (DSnapPage)i.get(k);
        if (!a.equals(b)) {}
      }
      else
      {
        if (paramObject == null) {
          break;
        }
        ((DSnapView)a).a(i, (DSnapPage)paramObject, k, a((DSnapPage)paramObject));
        return b(k);
      }
      k += 1;
    }
    return -2;
  }
  
  @avl
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    EditionViewerPager localEditionViewerPager = (EditionViewerPager)paramViewGroup;
    boolean bool1;
    boolean bool2;
    if (a(paramInt) < 0)
    {
      bool1 = true;
      if (!bool1) {
        break label128;
      }
      paramViewGroup = (DSnapIntroVideoView)c.a(2130968660);
      paramViewGroup.a(d);
      if (a.a(d.e) == -1) {
        break label122;
      }
      bool2 = true;
      label62:
      paramViewGroup.setCanAdvance(bool2);
      paramViewGroup.setAutoAdvanceListener(a(localEditionViewerPager));
      label78:
      paramInt = a(paramInt);
      if (paramInt >= 0) {
        break label366;
      }
    }
    label122:
    label128:
    label366:
    for (Object localObject1 = "IntroVideo";; localObject1 = i.get(paramInt)).a)
    {
      paramViewGroup.setTag(localObject1);
      localEditionViewerPager.addView(paramViewGroup, 0);
      return new aem.a(paramViewGroup, (String)localObject1, bool1);
      bool1 = false;
      break;
      bool2 = false;
      break label62;
      localObject1 = (DSnapPage)i.get(a(paramInt));
      paramViewGroup = (DSnapView)c.a(2130968664);
      f = f;
      b.setScrollable(false);
      aed localaed = a;
      Object localObject2 = new aee(a, paramViewGroup);
      Object localObject3 = new aec(paramViewGroup, new aed.1(localaed));
      b = paramViewGroup;
      c = ((aee)localObject2);
      d = ((aec)localObject3);
      e = true;
      h = d;
      localaed = a;
      localObject2 = h.j();
      localObject3 = h.m();
      if ((i == null) || (!TextUtils.equals(i, (CharSequence)localObject2)))
      {
        i = ((String)localObject2);
        h = ((MediaState)localObject3);
        e = true;
        localaed.a(g);
      }
      ReleaseManager.k();
      paramViewGroup.setOnboardingEnabled(true);
      paramViewGroup.a(i, (DSnapPage)localObject1, a(paramInt), a((DSnapPage)localObject1));
      paramViewGroup.setAutoAdvanceListener(a(localEditionViewerPager));
      break label78;
    }
  }
  
  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    paramObject = (aem.a)paramObject;
    return paramView.getTag().equals(b);
  }
  
  public static final class a
  {
    public final View a;
    public final String b;
    public boolean c;
    
    public a(View paramView, String paramString, boolean paramBoolean)
    {
      a = paramView;
      b = paramString;
      c = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     aem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */