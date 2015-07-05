package org.apache.http.params;

import org.apache.http.util.Args;

@Deprecated
public abstract class HttpAbstractParamBean
{
  protected final HttpParams params;
  
  public HttpAbstractParamBean(HttpParams paramHttpParams)
  {
    params = ((HttpParams)Args.notNull(paramHttpParams, "HTTP parameters"));
  }
}

/* Location:
 * Qualified Name:     org.apache.http.params.HttpAbstractParamBean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */