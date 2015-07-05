package com.snapchat.android.fragments;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class ScAcceptTermsFragment$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ScAcceptTermsFragment$1(ScAcceptTermsFragment paramScAcceptTermsFragment) {}
  
  public final void onGlobalLayout()
  {
    ScAcceptTermsFragment.a(a);
    if (ScAcceptTermsFragment.b(a).getViewTreeObserver().isAlive())
    {
      if (Build.VERSION.SDK_INT >= 16) {
        ScAcceptTermsFragment.c(a).getViewTreeObserver().removeOnGlobalLayoutListener(this);
      }
    }
    else {
      return;
    }
    ScAcceptTermsFragment.d(a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.ScAcceptTermsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */