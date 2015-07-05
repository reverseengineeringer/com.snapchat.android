package com.addlive.platform;

import com.addlive.Constants;
import com.addlive.service.Responder;

class ADL$2
  implements Responder<String>
{
  ADL$2(ADL paramADL) {}
  
  public void errHandler(int paramInt, String paramString)
  {
    ADL.access$400(this$0).onInitStateChanged(new InitStateChangedEvent(1006, "Failed to validate version of the native component due to an internal error.", InitState.ERROR));
    ADL.access$402(this$0, null);
  }
  
  public void resultHandler(String paramString)
  {
    if (paramString.equals(Constants.SDK_VERSION()))
    {
      ADL.access$900(this$0);
      return;
    }
    ADL.access$400(this$0).onInitStateChanged(new InitStateChangedEvent(1006, "The version of the native component mismatch the Java bindings and thus the platform cannot be used. Please verify your libraries. This error should never reach the production environments. Java bindings version: " + Constants.SDK_VERSION() + " native component version: " + paramString, InitState.ERROR));
    ADL.access$402(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.ADL.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */