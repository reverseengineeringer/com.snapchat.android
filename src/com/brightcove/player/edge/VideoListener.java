package com.brightcove.player.edge;

import com.brightcove.player.model.Video;

public abstract class VideoListener
  extends ErrorListener
{
  public abstract void onVideo(Video paramVideo);
}

/* Location:
 * Qualified Name:     com.brightcove.player.edge.VideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */