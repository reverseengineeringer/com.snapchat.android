package com.snapchat.android.discover.ui.fragment;

import afm;
import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.model.DSnapPage.Form;
import java.util.List;

final class EditionViewerFragment$2
  implements Runnable
{
  EditionViewerFragment$2(EditionViewerFragment paramEditionViewerFragment, List paramList) {}
  
  public final void run()
  {
    if ((EditionViewerFragment.b(b) != null) && (EditionViewerFragment.c(b) != null))
    {
      EditionViewerFragment.b(b).a(a);
      if (EditionViewerFragment.d(b) != null)
      {
        EditionViewerFragment.a(b, Math.max(0, EditionViewerFragment.b(b).a(EditionViewerFragment.d(b))));
        EditionViewerFragment.e(b);
      }
      if ((!EditionViewerFragment.f(b)) && (EditionViewerFragment.c(b) != null) && (EditionViewerFragment.g(b) < EditionViewerFragment.c(b).getAdapter().getCount())) {
        if (!EditionViewerFragment.h(b)) {
          break label240;
        }
      }
    }
    label240:
    for (int i = DSnapPage.Form.LONGFORM.getIndex();; i = DSnapPage.Form.TOP_SNAP.getIndex())
    {
      EditionViewerFragment.c(b).setCurrentItem(EditionViewerFragment.g(b), false);
      EditionViewerFragment.c(b).setPanel(i);
      EditionViewerFragment.i(b);
      new StringBuilder("Opening page to ").append(EditionViewerFragment.g(b)).append(" longform? ").append(EditionViewerFragment.h(b)).append(" - count: ").append(EditionViewerFragment.b(b).getCount());
      EditionViewerFragment.j(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.EditionViewerFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */