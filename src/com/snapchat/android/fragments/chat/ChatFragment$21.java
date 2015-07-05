package com.snapchat.android.fragments.chat;

import alw;
import alx;
import alx.a;
import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import java.util.Set;
import yi;

final class ChatFragment$21
  implements alw
{
  ChatFragment$21(ChatFragment paramChatFragment) {}
  
  public final boolean a(alx.a parama)
  {
    if (ChatFragment.n(a).b()) {}
    do
    {
      return false;
      if ((alx.h.contains(c)) && (!TextUtils.equals(a.f.h(), a))) {
        return true;
      }
    } while (!ChatFragment.z().contains(c));
    return true;
  }
  
  public final boolean b(alx.a parama)
  {
    return (alx.h.contains(c)) && (a.f != null) && (TextUtils.equals(a.f.h(), a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */