package com.snapchat.android.util.chat;

import ako;
import android.text.style.URLSpan;
import android.view.View;
import ban;
import bax;
import com.squareup.otto.Bus;

public class SnapchatUrlSpan
  extends URLSpan
{
  public ako mMessage;
  public UrlType mType;
  
  public SnapchatUrlSpan(String paramString, ako paramako, UrlType paramUrlType)
  {
    super(paramString);
    mMessage = paramako;
    mType = paramUrlType;
  }
  
  public void onClick(View paramView)
  {
    ban.a().a(new bax(this));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SnapchatUrlSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */