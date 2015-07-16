package com.snapchat.android.livechat;

import android.content.Context;
import com.addlive.platform.InitState;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;

public abstract interface AdlHelper$a
{
  public abstract InitState a();
  
  public abstract void a(PlatformInitListener paramPlatformInitListener, PlatformInitOptions paramPlatformInitOptions, Context paramContext);
  
  public abstract AddLiveService b();
}

/* Location:
 * Qualified Name:     com.snapchat.android.livechat.AdlHelper.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */