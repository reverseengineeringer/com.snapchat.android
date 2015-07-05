package com.addlive.platform;

import android.content.Context;
import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLNativeWrapperImpl;
import com.addlive.impl.ADLServiceImpl;
import com.addlive.impl.Log;

class ADL$1
  implements Runnable
{
  ADL$1(ADL paramADL, PlatformInitListener paramPlatformInitListener, Context paramContext, PlatformInitOptions paramPlatformInitOptions) {}
  
  public void run()
  {
    Log.i("AddLive_SDK", "[App ----- SDK] Init");
    if (ADL.access$000(this$0) != null)
    {
      val$listener.onInitStateChanged(new InitStateChangedEvent(1006, "Platform already initialized", InitState.ERROR));
      return;
    }
    if (val$context == null)
    {
      val$listener.onInitStateChanged(new InitStateChangedEvent(1002, "Context parameter was null, platform not initialized", InitState.ERROR));
      return;
    }
    ADL.access$102(InitState.INITIALIZING);
    Log.setEnabled(val$options.isConsoleLoggingEnabled());
    try
    {
      ADL.access$202(this$0, val$context);
      ADL.access$302(this$0, val$options);
      ADL.access$402(this$0, val$listener);
      ADL.access$002(this$0, new ADLNativeWrapperImpl(val$context, val$options, ADL.access$500()));
      i = ADL.access$000(this$0).initPlatform();
      if (i == 0)
      {
        ADL.access$602(this$0, new ADLServiceImpl(ADL.access$000(this$0), val$context, val$options.useExternalVideoInput()));
        ADL.access$700(this$0);
        return;
      }
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      int i;
      ADL.access$400(this$0).onInitStateChanged(new InitStateChangedEvent(1009, "Failed to load the AddLive native components ", InitState.ERROR));
      ADL.access$800(this$0);
      return;
      val$listener.onInitStateChanged(new InitStateChangedEvent(i, "", InitState.ERROR));
      ADL.access$800(this$0);
      return;
    }
    catch (Exception localException)
    {
      Log.e("AddLive_SDK", "Got an unhandled exception setting up AddLive", localException);
      ADL.access$400(this$0).onInitStateChanged(new InitStateChangedEvent(1006, "Failed to initialize AddLive due to an internal error: " + localException.getMessage(), InitState.ERROR));
      ADL.access$800(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.ADL.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */