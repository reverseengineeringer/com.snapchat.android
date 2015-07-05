package com.snapchat.android.fragments.stories;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import bgr;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import pb.a;

final class StoriesFragment$1$1
  implements TextWatcher
{
  StoriesFragment$1$1(StoriesFragment.1 param1) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      StoriesFragment.a(a.a).setFastScrollAlwaysVisible(true);
      StoriesFragment.a(a.a).setFastScrollEnabled(true);
      StoriesFragment.b(a.a).a(4);
    }
    for (;;)
    {
      a.a.p();
      a.a.r();
      return;
      StoriesFragment.c(a.a).a(paramCharSequence.toString());
      StoriesFragment.a(a.a).setFastScrollAlwaysVisible(false);
      StoriesFragment.a(a.a).setFastScrollEnabled(false);
      StoriesFragment.b(a.a).a(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */