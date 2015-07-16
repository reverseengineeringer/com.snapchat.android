package android.media;

public abstract interface MediaTimeProvider
{
  public static final long NO_TIME = -1L;
  
  public abstract void cancelNotifications(OnMediaTimeListener paramOnMediaTimeListener);
  
  public abstract long getCurrentTimeUs(boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void notifyAt(long paramLong, OnMediaTimeListener paramOnMediaTimeListener);
  
  public abstract void scheduleUpdate(OnMediaTimeListener paramOnMediaTimeListener);
  
  public static abstract interface OnMediaTimeListener
  {
    public abstract void onSeek(long paramLong);
    
    public abstract void onStop();
    
    public abstract void onTimedEvent(long paramLong);
  }
}

/* Location:
 * Qualified Name:     android.media.MediaTimeProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */