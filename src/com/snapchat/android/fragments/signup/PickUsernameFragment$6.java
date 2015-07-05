package com.snapchat.android.fragments.signup;

import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.EditText;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

final class PickUsernameFragment$6
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  PickUsernameFragment$6(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void onGlobalLayout()
  {
    int k = 0;
    int m = PickUsernameFragment.l(a).getWidth();
    int n = PickUsernameFragment.c(a).getWidth();
    Object localObject = PickUsernameFragment.n(a);
    int i;
    if (m < n)
    {
      i = PickUsernameFragment.m(a);
      if (m >= n) {
        break label153;
      }
    }
    label153:
    for (int j = PickUsernameFragment.m(a);; j = 0)
    {
      ((HorizontalScrollView)localObject).setPadding(i, 0, j, 0);
      localObject = (FrameLayout.LayoutParams)PickUsernameFragment.l(a).getLayoutParams();
      i = k;
      if (m - n > 0)
      {
        i = k;
        if (m - n < PickUsernameFragment.m(a) * 2) {
          i = 1;
        }
      }
      if (gravity != i)
      {
        gravity = i;
        PickUsernameFragment.l(a).setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      return;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */