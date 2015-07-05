package org.apache.http.concurrent;

public abstract interface FutureCallback<T>
{
  public abstract void cancelled();
  
  public abstract void completed(T paramT);
  
  public abstract void failed(Exception paramException);
}

/* Location:
 * Qualified Name:     org.apache.http.concurrent.FutureCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */