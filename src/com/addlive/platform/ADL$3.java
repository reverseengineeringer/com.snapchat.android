package com.addlive.platform;

import com.addlive.service.Responder;

class ADL$3
  implements Responder<Void>
{
  ADL$3(ADL paramADL) {}
  
  public void errHandler(int paramInt, String paramString)
  {
    ADL.access$400(this$0).onInitStateChanged(new InitStateChangedEvent(paramInt, "Failed to set application id due to: " + paramString, InitState.ERROR));
    ADL.access$800(this$0);
  }
  
  public void resultHandler(Void paramVoid)
  {
    ADL.access$1000(this$0);
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.ADL.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */