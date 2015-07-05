package com.addlive;

import com.addlive.impl.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Constants
{
  public static final String LOG_TAG = "AddLive_SDK";
  public static final int MAX_SIZE_MESSAGE = 5120;
  private static Properties compileTimeProps = null;
  
  public static String SDK_VERSION()
  {
    if (compileTimeProps == null) {}
    try
    {
      compileTimeProps = new Properties();
      InputStream localInputStream = Constants.class.getClassLoader().getResourceAsStream("consts.properties");
      compileTimeProps.load(localInputStream);
      localInputStream.close();
      return compileTimeProps.getProperty("nativeSdk.version");
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Log.e("AddLive_SDK", "Failed to read the compile time properties", localIOException);
      }
    }
  }
  
  public static final class AECModes
  {
    public static final int DISABLED = 0;
    public static final int EARPIECE = 2;
    public static final int HEADSET = 1;
    public static final int LOUD_EARPIECE = 3;
    public static final int LOUD_SPEAKERPHONE = 5;
    public static final int SPEAKERPHONE = 4;
  }
  
  public static final class MediaIssue
  {
    public static final int CONNECTION_FROZEN = 1;
    public static final int CPU_LOAD_HIGH = 2;
    public static final int LOW_BANDWIDTH = 4;
    public static final int NETWORK_PROBLEM = 3;
  }
  
  public static final class MediaStatsDirection
  {
    public static final int DOWNLINK = 1;
    public static final int UPLINK = 0;
  }
  
  public static final class NSModes
  {
    public static final int CONFERENCE = 2;
    public static final int DEFAULT = 1;
    public static final int DISABLED = 0;
    public static final int HIGH_SUPPRESSION = 5;
    public static final int LOW_SUPPRESSION = 3;
    public static final int MODERATE_SUPPRESSION = 4;
    public static final int VERY_HIGH_SUPPRESSION = 6;
  }
  
  public static final class NetworkTest
  {
    public static final int AVERAGE = 1;
    public static final int BAD = 2;
    public static final int FINE = 0;
  }
}

/* Location:
 * Qualified Name:     com.addlive.Constants
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */