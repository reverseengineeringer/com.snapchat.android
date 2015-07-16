package com.snapchat.android.util.chat;

import alj;
import android.text.style.URLSpan;
import android.view.View;
import bbo;
import bby;
import com.squareup.otto.Bus;

public class SnapchatUrlSpan
  extends URLSpan
{
  public alj mMessage;
  public UrlType mType;
  
  public SnapchatUrlSpan(String paramString, alj paramalj, UrlType paramUrlType)
  {
    super(paramString);
    mMessage = paramalj;
    mType = paramUrlType;
  }
  
  public void onClick(View paramView)
  {
    bbo.a().a(new bby(this));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SnapchatUrlSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */