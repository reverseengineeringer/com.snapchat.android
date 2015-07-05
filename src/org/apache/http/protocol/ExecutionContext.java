package org.apache.http.protocol;

@Deprecated
public abstract interface ExecutionContext
{
  public static final String HTTP_CONNECTION = "http.connection";
  @Deprecated
  public static final String HTTP_PROXY_HOST = "http.proxy_host";
  public static final String HTTP_REQUEST = "http.request";
  public static final String HTTP_REQ_SENT = "http.request_sent";
  public static final String HTTP_RESPONSE = "http.response";
  public static final String HTTP_TARGET_HOST = "http.target_host";
}

/* Location:
 * Qualified Name:     org.apache.http.protocol.ExecutionContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */