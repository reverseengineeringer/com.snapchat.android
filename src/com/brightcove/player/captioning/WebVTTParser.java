package com.brightcove.player.captioning;

import com.brightcove.player.model.WebVTTDocument;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WebVTTParser
{
  private static final String TAG = WebVTTParser.class.getSimpleName();
  private static final Pattern WEBVTT_TIMESTAMP = Pattern.compile("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}");
  private static final String WEBVTT_TIMESTAMP_STRING = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}";
  
  public static WebVTTDocument parse(InputStream paramInputStream, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream, paramString));
    paramString = localBufferedReader.readLine();
    if (paramString == null) {
      throw new IOException("Expected WEBVTT. Got null");
    }
    if (!paramString.startsWith("WEBVTT")) {
      throw new IOException("Expected WEBVTT. Got " + paramString);
    }
    do
    {
      paramString = localBufferedReader.readLine();
      if (paramString == null) {
        throw new IOException("Expected an empty line after webvtt header");
      }
    } while (!paramString.isEmpty());
    for (;;)
    {
      paramString = localBufferedReader.readLine();
      if (paramString == null) {
        break;
      }
      Matcher localMatcher = WEBVTT_TIMESTAMP.matcher(paramString);
      long l1 = 0L;
      String str = "";
      if (localMatcher.find())
      {
        long l2 = parseTimestamp(localMatcher.group());
        paramString = str;
        if (localMatcher.find()) {
          l1 = parseTimestamp(localMatcher.group());
        }
        for (paramString = str;; paramString = paramString + str.trim() + "\n")
        {
          str = localBufferedReader.readLine();
          if ((str == null) || (str.isEmpty())) {
            break;
          }
        }
        localArrayList.add(new BrightcoveClosedCaption((int)l2, (int)l1, paramString));
      }
    }
    localBufferedReader.close();
    paramInputStream.close();
    return new WebVTTDocument(localArrayList);
  }
  
  private static long parseTimestamp(String paramString)
  {
    int i = 0;
    if (!paramString.matches("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}")) {
      throw new NumberFormatException("has invalid format");
    }
    paramString = paramString.split("\\.", 2);
    long l = 0L;
    String[] arrayOfString = paramString[0].split(":");
    int j = arrayOfString.length;
    while (i < j)
    {
      l = l * 60L + Long.parseLong(arrayOfString[i]);
      i += 1;
    }
    return Long.parseLong(paramString[1]) + l * 1000L;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.WebVTTParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */