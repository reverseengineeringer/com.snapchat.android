package com.addlive.impl;

import com.addlive.service.Responder;

class ADLServiceImpl$DisconnectResultAdapter
  extends BaseResultAdapter<Void>
{
  private String scopeId;
  
  ADLServiceImpl$DisconnectResultAdapter(Responder<Void> paramResponder, String paramString)
  {
    super(paramString);
    String str;
    scopeId = str;
  }
  
  void handleSuccess(Object paramObject)
  {
    ADLServiceImpl.access$200(this$0).updateAudioSettings();
    ADLServiceImpl.access$200(this$0).reportDisconnect(scopeId);
    if (responder != null) {
      responder.resultHandler(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.DisconnectResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */