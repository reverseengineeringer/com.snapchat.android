package com.snapchat.android.fragments.feed;

import agd;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ViewTreeObserver;
import android.widget.Filter;
import android.widget.ListView;
import bgr;

final class FeedFragment$17$1
  implements TextWatcher
{
  FeedFragment$17$1(FeedFragment.17 param17) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ViewTreeObserver localViewTreeObserver = FeedFragment.d(a.a).getViewTreeObserver();
    if (localViewTreeObserver == null) {
      throw new NullPointerException();
    }
    localViewTreeObserver.addOnGlobalLayoutListener(FeedFragment.e(a.a));
    FeedFragment.f(a.a).getFilter().filter(paramCharSequence.toString().trim());
    if (TextUtils.isEmpty(paramCharSequence))
    {
      FeedFragment.g(a.a).a(4);
      return;
    }
    FeedFragment.g(a.a).a(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.17.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */