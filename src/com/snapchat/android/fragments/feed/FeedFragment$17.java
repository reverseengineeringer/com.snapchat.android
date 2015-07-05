package com.snapchat.android.fragments.feed;

import agd;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ListView;
import bgr;
import bgr.a;

final class FeedFragment$17
  implements bgr.a
{
  FeedFragment$17(FeedFragment paramFeedFragment) {}
  
  public final void a(View paramView)
  {
    ((EditText)FeedFragment.h(a).a()).addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        ViewTreeObserver localViewTreeObserver = FeedFragment.d(a).getViewTreeObserver();
        if (localViewTreeObserver == null) {
          throw new NullPointerException();
        }
        localViewTreeObserver.addOnGlobalLayoutListener(FeedFragment.e(a));
        FeedFragment.f(a).getFilter().filter(paramAnonymousCharSequence.toString().trim());
        if (TextUtils.isEmpty(paramAnonymousCharSequence))
        {
          FeedFragment.g(a).a(4);
          return;
        }
        FeedFragment.g(a).a(0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.feed.FeedFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */