package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Filter;
import bgr;
import vg;

final class FeedFragment$16$1
  implements TextWatcher
{
  FeedFragment$16$1(FeedFragment.16 param16) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    FeedFragment.e(a.a).getFilter().filter(paramCharSequence.toString().trim());
    if (TextUtils.isEmpty(paramCharSequence))
    {
      FeedFragment.f(a.a).a(4);
      return;
    }
    FeedFragment.f(a.a).a(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.16.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */