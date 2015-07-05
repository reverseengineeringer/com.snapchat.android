package com.addlive.impl;

import com.addlive.service.Responder;

class VoidResultAdapter
  extends BaseResultAdapter<Void>
{
  VoidResultAdapter(Responder<Void> paramResponder)
  {
    super(paramResponder);
  }
  
  void handleSuccess(Object paramObject)
  {
    if (responder != null) {
      responder.resultHandler(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.VoidResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */