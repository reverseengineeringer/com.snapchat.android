package com.snapchat.android.fragments.chat;

import afr;
import ako;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.util.chat.SnapchatUrlSpan;
import yl;

final class ChatFragment$14
  implements DialogInterface.OnClickListener
{
  ChatFragment$14(ChatFragment paramChatFragment, SnapchatUrlSpan paramSnapchatUrlSpan, ako paramako) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
    case 0: 
    case 1: 
      do
      {
        return;
        paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse(a.getURL()));
        c.startActivity(paramDialogInterface);
        return;
      } while ((ChatFragment.f(c) == null) || (!b.e()));
      if ((b instanceof ChatMedia)) {}
      for (paramDialogInterface = ChatFragment.x();; paramDialogInterface = null)
      {
        ChatFragment.x(c).a(ChatFragment.f(c), b, paramDialogInterface);
        ChatFragment.t(c).notifyDataSetChanged();
        return;
      }
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */