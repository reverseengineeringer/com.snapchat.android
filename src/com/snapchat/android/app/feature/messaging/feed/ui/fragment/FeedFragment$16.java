package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.Filter;
import bgr;
import bgr.a;
import vg;

final class FeedFragment$16
  implements bgr.a
{
  FeedFragment$16(FeedFragment paramFeedFragment) {}
  
  public final void a(View paramView)
  {
    ((EditText)FeedFragment.g(a).a()).addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        FeedFragment.e(a).getFilter().filter(paramAnonymousCharSequence.toString().trim());
        if (TextUtils.isEmpty(paramAnonymousCharSequence))
        {
          FeedFragment.f(a).a(4);
          return;
        }
        FeedFragment.f(a).a(0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */