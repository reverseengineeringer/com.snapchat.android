package android.media;

import android.util.LongSparseArray;

class SubtitleTrack$Run
{
  public long mEndTimeMs = -1L;
  public SubtitleTrack.Cue mFirstCue;
  public Run mNextRunAtEndTimeMs;
  public Run mPrevRunAtEndTimeMs;
  public long mRunID = 0L;
  private long mStoredEndTimeMs = -1L;
  
  static
  {
    if (!SubtitleTrack.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public void removeAtEndTimeMs()
  {
    Run localRun = mPrevRunAtEndTimeMs;
    if (mPrevRunAtEndTimeMs != null)
    {
      mPrevRunAtEndTimeMs.mNextRunAtEndTimeMs = mNextRunAtEndTimeMs;
      mPrevRunAtEndTimeMs = null;
    }
    if (mNextRunAtEndTimeMs != null)
    {
      mNextRunAtEndTimeMs.mPrevRunAtEndTimeMs = localRun;
      mNextRunAtEndTimeMs = null;
    }
  }
  
  public void storeByEndTimeMs(LongSparseArray<Run> paramLongSparseArray)
  {
    int i = paramLongSparseArray.indexOfKey(mStoredEndTimeMs);
    if (i >= 0) {
      if (mPrevRunAtEndTimeMs == null)
      {
        assert (this == paramLongSparseArray.valueAt(i));
        if (mNextRunAtEndTimeMs != null) {
          break label121;
        }
        paramLongSparseArray.removeAt(i);
      }
    }
    for (;;)
    {
      removeAtEndTimeMs();
      if (mEndTimeMs >= 0L)
      {
        mPrevRunAtEndTimeMs = null;
        mNextRunAtEndTimeMs = ((Run)paramLongSparseArray.get(mEndTimeMs));
        if (mNextRunAtEndTimeMs != null) {
          mNextRunAtEndTimeMs.mPrevRunAtEndTimeMs = this;
        }
        paramLongSparseArray.put(mEndTimeMs, this);
        mStoredEndTimeMs = mEndTimeMs;
      }
      return;
      label121:
      paramLongSparseArray.setValueAt(i, mNextRunAtEndTimeMs);
    }
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.Run
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */