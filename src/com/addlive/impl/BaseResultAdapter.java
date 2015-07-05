package com.addlive.impl;

import com.addlive.service.Responder;

abstract class BaseResultAdapter<T>
{
  protected Responder<T> responder;
  
  private BaseResultAdapter() {}
  
  protected BaseResultAdapter(Responder<T> paramResponder)
  {
    responder = paramResponder;
  }
  
  public Responder<T> getResponder()
  {
    return responder;
  }
  
  public void handleResponse(ServiceResponse paramServiceResponse)
  {
    if (paramServiceResponse.getStatus())
    {
      handleSuccess(paramServiceResponse.getResult());
      return;
    }
    responder.errHandler(paramServiceResponse.getErrorCode(), paramServiceResponse.getErrorMessage());
  }
  
  abstract void handleSuccess(Object paramObject);
}

/* Location:
 * Qualified Name:     com.addlive.impl.BaseResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */