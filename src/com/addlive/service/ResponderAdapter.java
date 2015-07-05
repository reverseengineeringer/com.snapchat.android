package com.addlive.service;

import com.addlive.impl.Log;

public class ResponderAdapter<T>
  implements Responder<T>
{
  private static final String LOG_TAG = "AddLive_SDK";
  private String method = "unknown method";
  
  public ResponderAdapter() {}
  
  public ResponderAdapter(String paramString)
  {
    method = paramString;
  }
  
  public void errHandler(int paramInt, String paramString)
  {
    Log.e("AddLive_SDK", "Got an error while calling method: " + method + " cause: " + paramString + "(" + paramInt + ")");
  }
  
  public void resultHandler(T paramT)
  {
    Log.d("AddLive_SDK", "Got successful result of method call: " + method);
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.ResponderAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */