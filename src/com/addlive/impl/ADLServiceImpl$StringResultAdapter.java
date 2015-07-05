package com.addlive.impl;

import com.addlive.service.Responder;

class ADLServiceImpl$StringResultAdapter
  extends BaseResultAdapter<String>
{
  ADLServiceImpl$StringResultAdapter(Responder<String> paramResponder)
  {
    super(localResponder);
  }
  
  void handleSuccess(Object paramObject)
  {
    if (responder != null) {
      responder.resultHandler((String)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.StringResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */