package android.media;

import android.util.Pair;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.Vector;

class SubtitleTrack$CueList$EntryIterator
  implements Iterator<Pair<Long, SubtitleTrack.Cue>>
{
  private long mCurrentTimeMs;
  private boolean mDone;
  private Pair<Long, SubtitleTrack.Cue> mLastEntry;
  private Iterator<SubtitleTrack.Cue> mLastListIterator;
  private Iterator<SubtitleTrack.Cue> mListIterator;
  private SortedMap<Long, Vector<SubtitleTrack.Cue>> mRemainingCues;
  
  public SubtitleTrack$CueList$EntryIterator(SortedMap<Long, Vector<SubtitleTrack.Cue>> paramSortedMap)
  {
    Object localObject;
    if (DEBUG) {
      new StringBuilder().append(localObject);
    }
    mRemainingCues = ((SortedMap)localObject);
    mLastListIterator = null;
    nextKey();
  }
  
  private void nextKey()
  {
    for (;;)
    {
      try
      {
        if (mRemainingCues == null) {
          throw new NoSuchElementException("");
        }
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
        mDone = true;
        mRemainingCues = null;
        mListIterator = null;
        return;
      }
      mCurrentTimeMs = ((Long)mRemainingCues.firstKey()).longValue();
      mListIterator = ((Vector)mRemainingCues.get(Long.valueOf(mCurrentTimeMs))).iterator();
      try
      {
        mRemainingCues = mRemainingCues.tailMap(Long.valueOf(mCurrentTimeMs + 1L));
        mDone = false;
        if (!mListIterator.hasNext()) {
          continue;
        }
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          mRemainingCues = null;
        }
      }
    }
  }
  
  public boolean hasNext()
  {
    return !mDone;
  }
  
  public Pair<Long, SubtitleTrack.Cue> next()
  {
    if (mDone) {
      throw new NoSuchElementException("");
    }
    mLastEntry = new Pair(Long.valueOf(mCurrentTimeMs), mListIterator.next());
    mLastListIterator = mListIterator;
    if (!mListIterator.hasNext()) {
      nextKey();
    }
    return mLastEntry;
  }
  
  public void remove()
  {
    if ((mLastListIterator == null) || (mLastEntry.second).mEndTimeMs != ((Long)mLastEntry.first).longValue())) {
      throw new IllegalStateException("");
    }
    mLastListIterator.remove();
    mLastListIterator = null;
    if (((Vector)SubtitleTrack.CueList.access$200(this$0).get(mLastEntry.first)).size() == 0) {
      SubtitleTrack.CueList.access$200(this$0).remove(mLastEntry.first);
    }
    SubtitleTrack.Cue localCue = (SubtitleTrack.Cue)mLastEntry.second;
    SubtitleTrack.CueList.access$300(this$0, localCue, mStartTimeMs);
    if (mInnerTimesMs != null)
    {
      long[] arrayOfLong = mInnerTimesMs;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        SubtitleTrack.CueList.access$300(this$0, localCue, l);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.CueList.EntryIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */