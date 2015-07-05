package com.flurry.sdk;

import java.net.HttpURLConnection;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

class ek$2
  extends Thread
{
  ek$2(ek paramek) {}
  
  public void run()
  {
    if (ek.a(a) != null) {
      ek.a(a).disconnect();
    }
    if (ek.b(a) != null) {
      ek.b(a).getConnectionManager().shutdown();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ek.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */