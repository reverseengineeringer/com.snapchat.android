package com.addlive.impl;

import com.addlive.platform.PlatformInitOptions;
import java.util.Map;

class ADLNativeWrapperImpl$ResultTask
  implements Runnable
{
  private String data;
  
  public ADLNativeWrapperImpl$ResultTask(ADLNativeWrapperImpl paramADLNativeWrapperImpl, String paramString)
  {
    data = paramString;
  }
  
  public void run()
  {
    Log.v("AddLive_SDK", "Got a result: " + data);
    if (ADLNativeWrapperImpl.access$000(this$0).isInteractionsLoggingEnabled())
    {
      ADLNativeWrapperImpl.access$000(this$0).getInteractionsLogTag();
      new StringBuilder("[App <---- SDK] Result: ").append(data);
    }
    try
    {
      ServiceResponse localServiceResponse = new ServiceResponse(data);
      BaseResultAdapter localBaseResultAdapter = (BaseResultAdapter)ADLNativeWrapperImpl.access$600(this$0).get(localServiceResponse.getId());
      if (localBaseResultAdapter != null)
      {
        localBaseResultAdapter.handleResponse(localServiceResponse);
        ADLNativeWrapperImpl.access$600(this$0).remove(localServiceResponse.getId());
        return;
      }
      Log.e("AddLive_SDK", "Cannot pass the result as there is no result handler for request with given id.");
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.e("AddLive_SDK", "Unknown error passing result: ", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLNativeWrapperImpl.ResultTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */