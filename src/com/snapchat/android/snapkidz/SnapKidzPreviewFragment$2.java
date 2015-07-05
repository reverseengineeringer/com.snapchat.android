package com.snapchat.android.snapkidz;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;

final class SnapKidzPreviewFragment$2
  implements View.OnClickListener
{
  SnapKidzPreviewFragment$2(SnapKidzPreviewFragment paramSnapKidzPreviewFragment) {}
  
  public final void onClick(View paramView)
  {
    ((InputMethodManager)SnapKidzPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapKidzPreviewFragment.c(a).getApplicationWindowToken(), 0);
    SnapKidzPreviewFragment.b(a);
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.snapkidz.SnapKidzPreviewFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */