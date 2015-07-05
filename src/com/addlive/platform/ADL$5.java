package com.addlive.platform;

import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLServiceImpl;
import com.addlive.impl.Log;

class ADL$5
  implements Runnable
{
  ADL$5(ADL paramADL) {}
  
  public void run()
  {
    Log.i("AddLive_SDK", "[App ----- SDK] Release");
    if ((ADL.access$100() == InitState.NOT_INITIALIZED) || (ADL.access$100() == InitState.ERROR))
    {
      Log.w("AddLive_SDK", "Trying to release already released platform");
      return;
    }
    ADL.access$102(InitState.RELEASING);
    ((ADLServiceImpl)ADL.access$600(this$0)).release();
    ADL.access$000(this$0).releasePlatform();
    ADL.access$1200(this$0);
    ADL.access$102(InitState.NOT_INITIALIZED);
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.ADL.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */