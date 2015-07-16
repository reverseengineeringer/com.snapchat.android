package com.snapchat.android.livechat;

import com.addlive.service.Responder;

public class AdlHelper$c<T>
  implements Responder<T>
{
  private final String a;
  
  public AdlHelper$c(String paramString)
  {
    a = paramString;
  }
  
  public void errHandler(int paramInt, String paramString)
  {
    paramString = a;
  }
  
  public void resultHandler(T paramT)
  {
    paramT = a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.livechat.AdlHelper.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */