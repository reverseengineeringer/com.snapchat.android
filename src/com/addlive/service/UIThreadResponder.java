package com.addlive.service;

import android.app.Activity;

public abstract class UIThreadResponder<T>
  implements Responder<T>
{
  private Activity activity;
  
  public UIThreadResponder(Activity paramActivity)
  {
    activity = paramActivity;
  }
  
  public void errHandler(final int paramInt, final String paramString)
  {
    activity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        handleError(paramInt, paramString);
      }
    });
  }
  
  protected abstract void handleError(int paramInt, String paramString);
  
  protected abstract void handleResult(T paramT);
  
  public void resultHandler(final T paramT)
  {
    activity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        handleResult(paramT);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.UIThreadResponder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */