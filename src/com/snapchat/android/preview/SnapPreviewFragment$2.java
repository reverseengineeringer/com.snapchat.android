package com.snapchat.android.preview;

import ajq;
import ajx;
import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class SnapPreviewFragment$2
  implements View.OnClickListener
{
  SnapPreviewFragment$2(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    if (ajx.J())
    {
      SnapPreviewFragment.n(a).show();
      return;
    }
    if (ajq.a().d().size() > 1)
    {
      SnapPreviewFragment.o(a);
      return;
    }
    SnapPreviewFragment.p(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */