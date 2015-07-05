package com.snapchat.android.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;
import com.snapchat.android.ui.caption.SnapCaptionView;

final class SnapEditorView$4
  implements ViewTreeObserver.OnPreDrawListener
{
  SnapEditorView$4(SnapEditorView paramSnapEditorView, Bundle paramBundle, boolean paramBoolean, ViewTreeObserver paramViewTreeObserver, View paramView) {}
  
  public final boolean onPreDraw()
  {
    SnapEditorView.e(e).a(a, b);
    if (c.isAlive()) {
      c.removeOnPreDrawListener(this);
    }
    SnapEditorView.f(e).removeView(d);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapEditorView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */