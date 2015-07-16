package com.snapchat.android.livechat;

import android.content.Context;
import com.addlive.platform.ADL;
import com.addlive.platform.InitState;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;

public final class AdlHelper$1
  implements AdlHelper.a
{
  public final InitState a()
  {
    return ADL.getInitState();
  }
  
  public final void a(PlatformInitListener paramPlatformInitListener, PlatformInitOptions paramPlatformInitOptions, Context paramContext)
  {
    ADL.init(paramPlatformInitListener, paramPlatformInitOptions, paramContext);
  }
  
  public final AddLiveService b()
  {
    return ADL.getService();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.livechat.AdlHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */