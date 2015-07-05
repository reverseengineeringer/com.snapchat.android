package org.apache.http.protocol;

import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;

public abstract interface HttpProcessor
  extends HttpRequestInterceptor, HttpResponseInterceptor
{}

/* Location:
 * Qualified Name:     org.apache.http.protocol.HttpProcessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */