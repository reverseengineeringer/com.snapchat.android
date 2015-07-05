package com.addlive.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class AerPublisher
{
  private static final String TAG = "LogsPublisher";
  private Context ctx;
  
  public AerPublisher(Context paramContext)
  {
    ctx = paramContext;
  }
  
  private void doHttpPost(String paramString1, String paramString2, List<NameValuePair> paramList)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    paramString2 = new HttpPost(paramString2);
    try
    {
      paramString2.setHeader("Authorization", "Basic " + Base64.encodeToString(paramString1.getBytes(), 2));
      paramString2.setHeader("Content-Type", "application/x-www-form-urlencoded");
      paramString2.setEntity(new UrlEncodedFormEntity(paramList));
      paramString1 = localDefaultHttpClient.execute(paramString2);
      if (paramString1.getStatusLine().getStatusCode() != 200) {
        new StringBuilder("Failed to submit AER. Server response: ").append(paramString1.getStatusLine());
      }
      return;
    }
    catch (IOException paramString1) {}catch (ClientProtocolException paramString1) {}
  }
  
  private String networkType()
  {
    switch (((TelephonyManager)ctx.getSystemService("phone")).getNetworkType())
    {
    default: 
      return "Unknown";
    case 7: 
      return "1xRTT";
    case 4: 
      return "CDMA";
    case 2: 
      return "EDGE";
    case 14: 
      return "eHRPD";
    case 5: 
      return "EVDO rev. 0";
    case 6: 
      return "EVDO rev. A";
    case 12: 
      return "EVDO rev. B";
    case 1: 
      return "GPRS";
    case 8: 
      return "HSDPA";
    case 10: 
      return "HSPA";
    case 15: 
      return "HSPA+";
    case 9: 
      return "HSUPA";
    case 11: 
      return "iDen";
    case 13: 
      return "LTE";
    }
    return "UMTS";
  }
  
  public String collectLogs()
  {
    new ByteArrayOutputStream();
    localStringBuilder = new StringBuilder();
    Object localObject1 = new ArrayList();
    ((List)localObject1).add("logcat");
    ((List)localObject1).add("-d");
    ((List)localObject1).add("-v");
    ((List)localObject1).add("threadtime");
    ((List)localObject1).add("AddLive_SDK:V");
    ((List)localObject1).add("AddLive_SDK:V");
    ((List)localObject1).add("*:S");
    Object localObject2 = new String[((List)localObject1).size()];
    ((List)localObject1).toArray((Object[])localObject2);
    try
    {
      localObject1 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[])localObject2).getInputStream()));
      for (;;)
      {
        localObject2 = ((BufferedReader)localObject1).readLine();
        if (localObject2 == null) {
          break;
        }
        localStringBuilder.append((String)localObject2);
        localStringBuilder.append('\n');
      }
      return localStringBuilder.toString();
    }
    catch (IOException localIOException) {}
  }
  
  public void publish(String paramString1, String paramString2)
  {
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("Dear developer,\n\nThis message contains an AER send from an Android device.");
    localStringBuilder.append("\nDevice details:");
    localStringBuilder.append("\nManufacturer: ").append(Build.MANUFACTURER);
    localStringBuilder.append("\nModel: ").append(Build.MODEL);
    localStringBuilder.append("\n\nDevice: ").append(Build.DEVICE);
    localStringBuilder.append("\nCPU Abi: ").append(Build.CPU_ABI).append('/').append(Build.CPU_ABI2);
    localStringBuilder.append("\nHardware: ").append(Build.HARDWARE);
    localStringBuilder.append("\nBoard: ").append(Build.BOARD);
    localStringBuilder.append("\nBootloader: ").append(Build.BOOTLOADER);
    localStringBuilder.append("\nBrand: ").append(Build.BRAND);
    localStringBuilder.append("\nBuild type: ").append(Build.TYPE);
    localStringBuilder.append("\n\nNetwork info: \n");
    for (;;)
    {
      try
      {
        localObject = ((ConnectivityManager)ctx.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localObject != null) {
          continue;
        }
        localStringBuilder.append("There is no active network");
      }
      catch (SecurityException localSecurityException)
      {
        Object localObject;
        localStringBuilder.append("\nNetwork info not available due to lack of ACCESS_NETWORK_STATE permission");
        continue;
        localStringBuilder.append("/n Mobile network type: ").append(networkType());
        continue;
      }
      localStringBuilder.append("\n\n===========================================\n\n");
      localStringBuilder.append("Cause: ").append(paramString2);
      localStringBuilder.append("\n\n\nLogs:\n\n").append(collectLogs());
      localStringBuilder.append("\n\nGood luck with debugging!!");
      paramString2 = new LinkedList();
      paramString2.add(new BasicNameValuePair("from", "bugreports@addlive.com"));
      paramString2.add(new BasicNameValuePair("to", "aers@addlive.com"));
      paramString2.add(new BasicNameValuePair("subject", "Android AER"));
      paramString2.add(new BasicNameValuePair("text", localStringBuilder.toString()));
      doHttpPost(paramString1, "https://api.mailgun.net/v2/addlive.com/messages", paramString2);
      return;
      localStringBuilder.append(localObject);
      if (((NetworkInfo)localObject).getType() != 1) {
        continue;
      }
      localObject = ((WifiManager)ctx.getSystemService("wifi")).getConnectionInfo();
      localStringBuilder.append("\nWifi Signal strength (0-10): ").append(WifiManager.calculateSignalLevel(((WifiInfo)localObject).getRssi(), 10));
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.AerPublisher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */