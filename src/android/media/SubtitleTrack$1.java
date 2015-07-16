package android.media;

class SubtitleTrack$1
  implements Runnable
{
  SubtitleTrack$1(SubtitleTrack paramSubtitleTrack1, SubtitleTrack paramSubtitleTrack2, long paramLong) {}
  
  public void run()
  {
    synchronized (val$track)
    {
      SubtitleTrack.access$102(this$0, null);
      this$0.updateActiveCues(true, val$thenMs);
      this$0.updateView(this$0.mActiveCues);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */