package com.snapchat.android.fragments.chat;

import android.content.res.Resources;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import ayh;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.here.HereTooltip;

final class ChatFragment$27
  implements TextWatcher
{
  private boolean b;
  private boolean c;
  
  ChatFragment$27(ChatFragment paramChatFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    if (c) {
      return;
    }
    int i;
    if (b)
    {
      i = Selection.getSelectionStart(paramEditable);
      int j = Selection.getSelectionEnd(paramEditable);
      if ((i == j) && (ChatFragment.h(a)))
      {
        localObject = (ImageSpan[])paramEditable.getSpans(i, j, ImageSpan.class);
        if (localObject.length > 0)
        {
          c = true;
          paramEditable.replace(paramEditable.getSpanStart(localObject[0]), paramEditable.getSpanEnd(localObject[0]), "");
          paramEditable.removeSpan(localObject[0]);
          c = false;
          if (!ChatFragment.h(a)) {
            ChatFragment.a(a, null);
          }
        }
      }
    }
    boolean bool = ChatFragment.a(a);
    Object localObject = ChatFragment.i(a).getLayout();
    if (localObject != null)
    {
      if (ChatFragment.j(a) == Float.MIN_VALUE) {
        ChatFragment.a(a, ChatFragment.g(a).getLeft());
      }
      if (ChatFragment.k(a) == Float.MIN_VALUE) {
        ChatFragment.b(a, ChatFragment.i(a).getPaddingLeft());
      }
      float f1 = ChatFragment.k(a);
      float f2 = ((Layout)localObject).getLineWidth(0);
      if (((Layout)localObject).getLineCount() > 1)
      {
        i = 1;
        if ((i == 0) && (f1 + f2 < ChatFragment.j(a))) {
          break label462;
        }
        i = 1;
      }
    }
    for (;;)
    {
      label274:
      if (i != 0)
      {
        ChatFragment.g(a).setVisibility(8);
        ChatFragment.i(a).setPadding(ChatFragment.i(a).getPaddingLeft(), ChatFragment.i(a).getPaddingTop(), a.getResources().getDimensionPixelOffset(2131296296), ChatFragment.i(a).getPaddingBottom());
        label343:
        if (ChatFragment.f(a) != null)
        {
          localObject = ChatFragment.l(a);
          ChatConversation localChatConversation = ChatFragment.f(a);
          if ((i != 0) || (bool)) {
            break label534;
          }
          bool = true;
          label384:
          ((HereTooltip)localObject).a(localChatConversation, bool);
        }
        if (ChatFragment.f(a) == null) {
          break;
        }
        if (fa).mMessagingAuthToken == null) {
          break label540;
        }
      }
      label462:
      label534:
      label540:
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label544;
        }
        if (paramEditable.length() != 0) {
          break label546;
        }
        ChatFragment.f(a).e(false);
        ChatFragment.g(a).setIsTyping(false);
        return;
        i = 0;
        break;
        i = 0;
        break label274;
        ChatFragment.g(a).setVisibility(0);
        ChatFragment.i(a).setPadding(ChatFragment.i(a).getPaddingLeft(), ChatFragment.i(a).getPaddingTop(), a.getResources().getDimensionPixelOffset(2131296278), ChatFragment.i(a).getPaddingBottom());
        break label343;
        bool = false;
        break label384;
      }
      label544:
      break;
      label546:
      ChatFragment.f(a).e(true);
      return;
      i = 0;
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt3 <= 2)
    {
      paramCharSequence = paramCharSequence.subSequence(paramInt1, paramInt1 + paramInt3).toString();
      ChatFragment.g(a).setIsEmoji(ayh.a(paramCharSequence, false));
    }
    for (;;)
    {
      if (paramInt3 < paramInt2) {
        bool = true;
      }
      b = bool;
      ChatFragment.g(a).setIsTyping(true);
      return;
      ChatFragment.g(a).setIsEmoji(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */