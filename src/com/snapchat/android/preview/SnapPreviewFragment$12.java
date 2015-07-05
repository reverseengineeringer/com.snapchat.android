package com.snapchat.android.preview;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;

final class SnapPreviewFragment$12
  implements View.OnClickListener
{
  SnapPreviewFragment$12(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    ((InputMethodManager)SnapPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapPreviewFragment.b(a).getApplicationWindowToken(), 0);
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */