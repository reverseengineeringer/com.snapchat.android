package com.addlive.impl;

import com.addlive.service.ResponderAdapter;

class ADLServiceImpl$1
  extends ResponderAdapter<String>
{
  ADLServiceImpl$1(ADLServiceImpl paramADLServiceImpl, String paramString1, String paramString2) {}
  
  public void resultHandler(String paramString)
  {
    Log.d("AddLive_SDK", "Sending AER");
    new AerPublisher(ADLServiceImpl.access$100(this$0)).publish(val$credentials, val$cause);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */