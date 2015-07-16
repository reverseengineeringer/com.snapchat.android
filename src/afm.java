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
import java.util.List;

public abstract class afm
  extends PagerAdapter
{
  protected final aef a;
  protected final aej b;
  protected final apz c;
  protected final ChannelPage d;
  protected final String e;
  protected final acr f;
  protected final ReleaseManager g;
  protected boolean h = false;
  protected List<DSnapPage> i = new ArrayList();
  protected List<DSnapPage> j = new ArrayList();
  
  protected afm(@chc ChannelPage paramChannelPage, @chc String paramString, @chc acr paramacr, @chc apz paramapz, @chc aef paramaef, @chc aej paramaej, @chc ReleaseManager paramReleaseManager)
  {
    c = paramapz;
    d = paramChannelPage;
    e = paramString;
    f = paramacr;
    a = paramaef;
    b = paramaej;
    g = paramReleaseManager;
  }
  
  @chd
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
    paramDiscoverEditionPageView.o_();
    if ((paramDiscoverEditionPageView instanceof DSnapIntroVideoView))
    {
      c.a(2130968661, paramDiscoverEditionPageView);
      return;
    }
    c.a(2130968665, paramDiscoverEditionPageView);
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
    if (paramInt < i.size()) {
      return paramViewGroup.findViewWithTag(i.get(paramInt)).a);
    }
    return null;
  }
  
  @awj
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
  
  @cdn
  public abstract void a(@chc List<DSnapPage> paramList);
  
  public abstract int b(int paramInt);
  
  @awj
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    a(paramViewGroup, (DiscoverEditionPageView)a);
  }
  
  public final int getItemPosition(Object paramObject)
  {
    afm.a locala = (afm.a)paramObject;
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
  
  @awj
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    EditionViewerPager localEditionViewerPager = (EditionViewerPager)paramViewGroup;
    boolean bool1;
    boolean bool2;
    if (a(paramInt) < 0)
    {
      bool1 = true;
      if (!bool1) {
        break label132;
      }
      paramViewGroup = (DSnapIntroVideoView)c.a(2130968661);
      paramViewGroup.a(d, f);
      if (a.a(d.e) == -1) {
        break label126;
      }
      bool2 = true;
      label66:
      paramViewGroup.setCanAdvance(bool2);
      paramViewGroup.setAutoAdvanceListener(a(localEditionViewerPager));
      label82:
      paramInt = a(paramInt);
      if (paramInt >= 0) {
        break label372;
      }
    }
    label126:
    label132:
    label372:
    for (Object localObject1 = "IntroVideo";; localObject1 = i.get(paramInt)).a)
    {
      paramViewGroup.setTag(localObject1);
      localEditionViewerPager.addView(paramViewGroup, 0);
      return new afm.a(paramViewGroup, (String)localObject1, bool1);
      bool1 = false;
      break;
      bool2 = false;
      break label66;
      localObject1 = (DSnapPage)i.get(a(paramInt));
      paramViewGroup = (DSnapView)c.a(2130968665);
      f = f;
      b.setScrollable(false);
      afd localafd = a;
      Object localObject2 = new afe(a, paramViewGroup);
      Object localObject3 = new afc(paramViewGroup, new afd.1(localafd));
      b = paramViewGroup;
      c = ((afe)localObject2);
      d = ((afc)localObject3);
      e = true;
      h = d;
      localafd = a;
      localObject2 = h.j();
      localObject3 = h.m();
      if ((i == null) || (!TextUtils.equals(i, (CharSequence)localObject2)))
      {
        i = ((String)localObject2);
        h = ((MediaState)localObject3);
        e = true;
        localafd.a(g);
      }
      ReleaseManager.k();
      paramViewGroup.setOnboardingEnabled(true);
      paramViewGroup.a(i, (DSnapPage)localObject1, a(paramInt), a((DSnapPage)localObject1));
      paramViewGroup.setAutoAdvanceListener(a(localEditionViewerPager));
      break label82;
    }
  }
  
  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    paramObject = (afm.a)paramObject;
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
 * Qualified Name:     afm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */