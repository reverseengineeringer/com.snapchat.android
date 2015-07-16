package com.snapchat.android.fragments.stories;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import bhr;
import bhr.a;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import ps.a;

final class StoriesFragment$1
  implements bhr.a
{
  StoriesFragment$1(StoriesFragment paramStoriesFragment) {}
  
  public final void a(View paramView)
  {
    ((EditText)a.i.a()).addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (TextUtils.isEmpty(paramAnonymousCharSequence))
        {
          StoriesFragment.a(a).setFastScrollAlwaysVisible(true);
          StoriesFragment.a(a).setFastScrollEnabled(true);
          StoriesFragment.b(a).a(4);
        }
        for (;;)
        {
          a.q();
          a.t();
          return;
          StoriesFragment.c(a).a(paramAnonymousCharSequence.toString());
          StoriesFragment.a(a).setFastScrollAlwaysVisible(false);
          StoriesFragment.a(a).setFastScrollEnabled(false);
          StoriesFragment.b(a).a(0);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */