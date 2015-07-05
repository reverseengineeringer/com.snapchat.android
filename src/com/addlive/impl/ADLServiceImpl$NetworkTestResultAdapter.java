package com.addlive.impl;

import com.addlive.service.ConnectionQuality;
import com.addlive.service.Responder;

class ADLServiceImpl$NetworkTestResultAdapter
  extends BaseResultAdapter<ConnectionQuality>
{
  ADLServiceImpl$NetworkTestResultAdapter(Responder<ConnectionQuality> paramResponder)
  {
    super(localResponder);
  }
  
  void handleSuccess(Object paramObject)
  {
    if (responder == null) {
      return;
    }
    paramObject = (Integer)paramObject;
    responder.resultHandler(ConnectionQuality._fromInt(((Integer)paramObject).intValue()));
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.NetworkTestResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */