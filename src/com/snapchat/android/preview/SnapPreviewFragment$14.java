package com.snapchat.android.preview;

import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.caption.SnapCaptionView;

final class SnapPreviewFragment$14
  implements View.OnClickListener
{
  SnapPreviewFragment$14(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    if ((SnapPreviewFragment.c(a).getCaptionView().i()) && (!SnapPreviewFragment.c(a).getCaptionView().g()))
    {
      SnapPreviewFragment.c(a).getCaptionView().f();
      return;
    }
    SnapPreviewFragment.c(a).a(true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */