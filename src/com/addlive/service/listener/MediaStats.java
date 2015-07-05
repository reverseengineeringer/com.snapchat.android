package com.addlive.service.listener;

import org.json.JSONObject;

public class MediaStats
{
  private long audioDelay;
  private long avOffset;
  private long avgJitter;
  private long bitRate;
  private long cpu;
  private int direction;
  private long fps;
  private int height;
  private int layer;
  private long loss;
  private long maxJitter;
  private int processingTime;
  private long psnr;
  private int quality;
  private long queueDelay;
  private long rtt;
  private long ssrc;
  private long timestamp;
  private long totalCpu;
  private int totalLoss;
  private int totalVideoKbps;
  private int width;
  
  public MediaStats(JSONObject paramJSONObject)
  {
    direction = paramJSONObject.getInt("direction");
    bitRate = paramJSONObject.getLong("netBps");
    rtt = paramJSONObject.getLong("rtt");
    totalLoss = paramJSONObject.getInt("cumulativePacketLoss");
    loss = paramJSONObject.getInt("fractionLoss");
    timestamp = paramJSONObject.getInt("timestamp");
    ssrc = paramJSONObject.getInt("ssrc");
    avgJitter = paramJSONObject.getInt("interarrivalJitter");
    if (paramJSONObject.has("layer"))
    {
      layer = paramJSONObject.getInt("layer");
      fps = paramJSONObject.getInt("fps");
      processingTime = paramJSONObject.getInt("processingTime");
      width = paramJSONObject.getInt("width");
      height = paramJSONObject.getInt("height");
      if (direction == 0)
      {
        totalVideoKbps = paramJSONObject.getInt("totalKbps");
        cpu = paramJSONObject.getInt("cpu");
        totalCpu = paramJSONObject.getInt("totalCpu");
        psnr = paramJSONObject.getInt("psnr");
        queueDelay = paramJSONObject.getInt("queueDelay");
        quality = paramJSONObject.getInt("quality");
      }
    }
    while (direction != 1)
    {
      return;
      avOffset = paramJSONObject.getInt("avOffset");
      return;
    }
    maxJitter = paramJSONObject.getInt("maxJitter");
    audioDelay = paramJSONObject.getInt("audioDelay");
  }
  
  public long getAudioDelay()
  {
    return audioDelay;
  }
  
  public long getAvOffset()
  {
    return avOffset;
  }
  
  public long getAvgJitter()
  {
    return avgJitter;
  }
  
  public long getBitRate()
  {
    return bitRate;
  }
  
  public long getCpu()
  {
    return cpu;
  }
  
  public int getDirection()
  {
    return direction;
  }
  
  public long getFps()
  {
    return fps;
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public int getLayer()
  {
    return layer;
  }
  
  public long getLoss()
  {
    return loss;
  }
  
  public long getMaxJitter()
  {
    return maxJitter;
  }
  
  public int getProcessingTime()
  {
    return processingTime;
  }
  
  public long getPsnr()
  {
    return psnr;
  }
  
  public int getQuality()
  {
    return quality;
  }
  
  public long getQueueDelay()
  {
    return queueDelay;
  }
  
  public long getRtt()
  {
    return rtt;
  }
  
  public long getSsrc()
  {
    return ssrc;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public long getTotalCpu()
  {
    return totalCpu;
  }
  
  public int getTotalLoss()
  {
    return totalLoss;
  }
  
  public int getTotalVideoKbps()
  {
    return totalVideoKbps;
  }
  
  public int getWidth()
  {
    return width;
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.MediaStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */