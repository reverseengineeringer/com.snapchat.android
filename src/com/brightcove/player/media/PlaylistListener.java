package com.brightcove.player.media;

import com.brightcove.player.model.Playlist;

public abstract interface PlaylistListener
  extends ErrorListener
{
  public abstract void onPlaylist(Playlist paramPlaylist);
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.PlaylistListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */