package com.brightcove.player.media;

import com.brightcove.player.model.Video;

public abstract interface VideoListener
  extends ErrorListener
{
  public abstract void onVideo(Video paramVideo);
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.VideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */