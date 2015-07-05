import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager.SwipeToExitMethod;
import com.snapchat.android.discover.ui.fragment.EditionViewerPager.b;
import com.snapchat.android.discover.ui.media.DiscoverEditionPageView.a;

final class aem$1
  implements DiscoverEditionPageView.a
{
  aem$1(aem paramaem, EditionViewerPager paramEditionViewerPager) {}
  
  public final void a()
  {
    EditionViewerPager localEditionViewerPager = a;
    if (localEditionViewerPager.getCurrentItem() == localEditionViewerPager.getAdapter().getCount() - 1)
    {
      if (a != null) {
        a.a(EditionViewerPager.SwipeToExitMethod.AUTO_ADVANCE);
      }
      return;
    }
    localEditionViewerPager.setCurrentItem(localEditionViewerPager.getCurrentItem() + 1);
  }
}

/* Location:
 * Qualified Name:     aem.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */