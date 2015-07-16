package com.snapchat.android.fragments.chat;

import amt;
import amu;
import amu.a;
import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import java.util.Set;
import ze;

final class ChatFragment$21
  implements amt
{
  ChatFragment$21(ChatFragment paramChatFragment) {}
  
  public final boolean a(amu.a parama)
  {
    if (ChatFragment.n(a).b()) {}
    do
    {
      return false;
      if ((amu.h.contains(c)) && (!TextUtils.equals(a.f.l(), a))) {
        return true;
      }
    } while (!ChatFragment.A().contains(c));
    return true;
  }
  
  public final boolean b(amu.a parama)
  {
    return (amu.h.contains(c)) && (a.f != null) && (TextUtils.equals(a.f.l(), a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */