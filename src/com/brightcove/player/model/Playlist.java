package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.List;
import java.util.Map;

public class Playlist
  extends MetadataObject
{
  private List<Video> videos;
  
  public Playlist(Map<String, Object> paramMap)
  {
    super(paramMap);
  }
  
  public Playlist(Map<String, Object> paramMap, List<Video> paramList)
  {
    super(paramMap);
    if (paramList == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("videosRequired"));
    }
    videos = paramList;
  }
  
  public Integer getCount()
  {
    return Integer.valueOf(videos.size());
  }
  
  public List<Video> getVideos()
  {
    return videos;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Playlist{");
    if (properties.get("name") != null)
    {
      localStringBuilder.append("name: ");
      localStringBuilder.append(properties.get("name"));
    }
    if (properties.get("shortDescription") != null)
    {
      localStringBuilder.append(" shortDescription: ");
      localStringBuilder.append(properties.get("shortDescription"));
    }
    localStringBuilder.append(" videos: ");
    if (videos != null) {}
    for (int i = videos.size();; i = 0)
    {
      localStringBuilder.append(i);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
  
  public static final class Fields
  {
    public static final String NAME = "name";
    public static final String SHORT_DESCRIPTION = "shortDescription";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Playlist
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */