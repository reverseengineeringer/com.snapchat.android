package com.snapchat.android.preview;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import bgr;
import bgr.a;

final class SnapPreviewFragment$15
  implements bgr.a
{
  SnapPreviewFragment$15(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void a(View paramView)
  {
    ((ImageButton)SnapPreviewFragment.e(a).a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SnapPreviewFragment.d(a);
      }
    });
    ((ImageButton)SnapPreviewFragment.g(a).a()).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SnapPreviewFragment.f(a);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */