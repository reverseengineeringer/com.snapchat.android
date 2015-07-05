package com.addlive.impl;

import com.addlive.service.MediaConnection;
import com.addlive.service.Responder;
import java.util.Map;

class ADLServiceImpl$MediaConnResultAdapter
  extends BaseResultAdapter<MediaConnection>
{
  private String scopeId;
  
  ADLServiceImpl$MediaConnResultAdapter(Responder<MediaConnection> paramResponder, String paramString)
  {
    super(paramString);
    String str;
    scopeId = str;
  }
  
  void handleSuccess(Object paramObject)
  {
    if (responder != null)
    {
      paramObject = new ADLMediaConnectionImpl(scopeId);
      ADLServiceImpl.access$200(this$0).getActiveConnections().put(scopeId, paramObject);
      responder.resultHandler(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.MediaConnResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */