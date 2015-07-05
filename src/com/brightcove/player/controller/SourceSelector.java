package com.brightcove.player.controller;

import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;

public abstract interface SourceSelector
{
  public abstract Source selectSource(Video paramVideo);
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.SourceSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */