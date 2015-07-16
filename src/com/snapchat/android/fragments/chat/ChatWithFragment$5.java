package com.snapchat.android.fragments.chat;

import agy;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;

final class ChatWithFragment$5
  implements TextWatcher
{
  ChatWithFragment$5(ChatWithFragment paramChatWithFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ChatWithFragment.c(a).getFilter().filter(paramCharSequence.toString());
    if (TextUtils.isEmpty(paramCharSequence))
    {
      ChatWithFragment.d(a).setFastScrollAlwaysVisible(true);
      ChatWithFragment.d(a).setFastScrollEnabled(true);
      ChatWithFragment.e(a).setVisibility(4);
      return;
    }
    ChatWithFragment.d(a).setFastScrollAlwaysVisible(false);
    ChatWithFragment.d(a).setFastScrollEnabled(false);
    ChatWithFragment.e(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatWithFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */