package com.snapchat.videotranscoder.utils;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.widget.Toast;
import com.snapchat.videotranscoder.task.SetupException;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class MimeTools
{
  private static final String TAG = "MimeTools";
  private static final MimeTools sInstance = new MimeTools();
  
  public static MimeTools getInstance()
  {
    return sInstance;
  }
  
  public MediaExtractor createExtractor(String paramString)
  {
    MediaExtractor localMediaExtractor = new MediaExtractor();
    VerboseLogging.verboseLog("MimeTools", "Setting video to be " + paramString);
    localMediaExtractor.setDataSource(paramString);
    return localMediaExtractor;
  }
  
  public void displayVideoInformation(String paramString, Context paramContext)
  {
    String str = getMediaMetaData(paramString);
    long l = getFileSize(paramString);
    Toast.makeText(paramContext, str + " " + l, 1).show();
  }
  
  public MediaFormat generateAudioOutputFormat(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramString = MediaFormat.createAudioFormat(paramString, paramInt1, paramInt2);
    paramString.setInteger("bitrate", paramInt3);
    paramString.setInteger("aac-profile", paramInt4);
    return paramString;
  }
  
  public int getAndSelectAudioTrackIndex(MediaExtractor paramMediaExtractor)
  {
    int i = getAudioTrack(paramMediaExtractor);
    if (i != -1) {
      paramMediaExtractor.selectTrack(i);
    }
    return i;
  }
  
  public int getAndSelectVideoTrackIndex(MediaExtractor paramMediaExtractor)
  {
    int i = getVideoTrack(paramMediaExtractor);
    if (i != -1) {
      paramMediaExtractor.selectTrack(i);
    }
    return i;
  }
  
  public int getAudioChannelCount(MediaFormat paramMediaFormat)
  {
    return paramMediaFormat.getInteger("channel-count");
  }
  
  public int getAudioSampleRate(MediaFormat paramMediaFormat)
  {
    return paramMediaFormat.getInteger("sample-rate");
  }
  
  public int getAudioTrack(MediaExtractor paramMediaExtractor)
  {
    int i = 0;
    while (i < paramMediaExtractor.getTrackCount())
    {
      VerboseLogging.verboseLog("MimeTools", "format for track:" + i + " is " + getMimeTypeFor(paramMediaExtractor.getTrackFormat(i)));
      if (isAudioFormat(paramMediaExtractor.getTrackFormat(i)))
      {
        VerboseLogging.verboseLog("MimeTools", "Selecting track:" + i);
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public long getFileSize(String paramString)
  {
    return new File(paramString).length();
  }
  
  public MediaFormat getMediaFormatFromFile(String paramString, boolean paramBoolean)
  {
    try
    {
      MediaExtractor localMediaExtractor = new MediaExtractor();
      localMediaExtractor.setDataSource(paramString);
      if (paramBoolean) {}
      for (int i = getVideoTrack(localMediaExtractor);; i = getAudioTrack(localMediaExtractor))
      {
        paramString = localMediaExtractor.getTrackFormat(i);
        localMediaExtractor.release();
        return paramString;
      }
      return null;
    }
    catch (Exception paramString) {}
  }
  
  public String getMediaMetaData(String paramString)
  {
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    localMediaMetadataRetriever.setDataSource(paramString);
    paramString = localMediaMetadataRetriever.extractMetadata(20);
    String str1 = localMediaMetadataRetriever.extractMetadata(12);
    String str2 = localMediaMetadataRetriever.extractMetadata(9);
    paramString = "BitRate: " + paramString + "\n MIME: " + str1 + "Length: " + str2;
    localMediaMetadataRetriever.release();
    return paramString;
  }
  
  public Map<Integer, String> getMetaDataFromVideoFile(String paramString)
  {
    HashMap localHashMap = new HashMap();
    MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
    localMediaMetadataRetriever.setDataSource(paramString);
    localHashMap.put(Integer.valueOf(20), localMediaMetadataRetriever.extractMetadata(20));
    localHashMap.put(Integer.valueOf(19), localMediaMetadataRetriever.extractMetadata(19));
    localHashMap.put(Integer.valueOf(18), localMediaMetadataRetriever.extractMetadata(18));
    localMediaMetadataRetriever.release();
    return localHashMap;
  }
  
  public String getMimeTypeFor(MediaFormat paramMediaFormat)
  {
    paramMediaFormat = paramMediaFormat.getString("mime");
    VerboseLogging.verboseLog("MimeTools", "Type is " + paramMediaFormat);
    return paramMediaFormat;
  }
  
  public int getVideoTrack(MediaExtractor paramMediaExtractor)
  {
    int i = 0;
    while (i < paramMediaExtractor.getTrackCount())
    {
      VerboseLogging.verboseLog("MimeTools", "format for track " + i + " is " + getMimeTypeFor(paramMediaExtractor.getTrackFormat(i)));
      if (isVideoFormat(paramMediaExtractor.getTrackFormat(i)))
      {
        VerboseLogging.verboseLog("MimeTools", "Selecting track:" + i);
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public boolean isAudioFormat(MediaFormat paramMediaFormat)
  {
    return getMimeTypeFor(paramMediaFormat).startsWith("audio/");
  }
  
  public boolean isVideoFormat(MediaFormat paramMediaFormat)
  {
    return getMimeTypeFor(paramMediaFormat).startsWith("video/");
  }
  
  public void printCodecs()
  {
    int k = MediaCodecList.getCodecCount();
    int i = 0;
    while (i < k)
    {
      MediaCodecInfo localMediaCodecInfo = MediaCodecList.getCodecInfoAt(i);
      String[] arrayOfString = localMediaCodecInfo.getSupportedTypes();
      int m = arrayOfString.length;
      String str1 = " ";
      int j = 0;
      while (j < m)
      {
        String str2 = arrayOfString[j];
        str1 = str1 + str2 + " ";
        j += 1;
      }
      new StringBuilder("Codec is ").append(localMediaCodecInfo.getName()).append(str1);
      i += 1;
    }
  }
  
  public MediaCodecInfo selectCodec(String paramString)
  {
    VerboseLogging.verboseLog("MimeTools", "Finding codec for mimeType: " + paramString);
    int k = MediaCodecList.getCodecCount();
    int i = 0;
    while (i < k)
    {
      MediaCodecInfo localMediaCodecInfo = MediaCodecList.getCodecInfoAt(i);
      if (localMediaCodecInfo.isEncoder())
      {
        String[] arrayOfString = localMediaCodecInfo.getSupportedTypes();
        int j = 0;
        while (j < arrayOfString.length)
        {
          if (arrayOfString[j].equalsIgnoreCase(paramString))
          {
            VerboseLogging.verboseLog("MimeTools", "Using codec : " + localMediaCodecInfo.getName());
            return localMediaCodecInfo;
          }
          j += 1;
        }
      }
      i += 1;
    }
    throw new SetupException("No codec for " + paramString);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.MimeTools
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */