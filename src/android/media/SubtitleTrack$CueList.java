package android.media;

import android.util.Pair;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Vector;

class SubtitleTrack$CueList
{
  private static final String TAG = "CueList";
  public boolean DEBUG = false;
  private SortedMap<Long, Vector<SubtitleTrack.Cue>> mCues = new TreeMap();
  
  private boolean addEvent(SubtitleTrack.Cue paramCue, long paramLong)
  {
    Vector localVector2 = (Vector)mCues.get(Long.valueOf(paramLong));
    Vector localVector1;
    if (localVector2 == null)
    {
      localVector1 = new Vector(2);
      mCues.put(Long.valueOf(paramLong), localVector1);
    }
    do
    {
      localVector1.add(paramCue);
      return true;
      localVector1 = localVector2;
    } while (!localVector2.contains(paramCue));
    return false;
  }
  
  private void removeEvent(SubtitleTrack.Cue paramCue, long paramLong)
  {
    Vector localVector = (Vector)mCues.get(Long.valueOf(paramLong));
    if (localVector != null)
    {
      localVector.remove(paramCue);
      if (localVector.size() == 0) {
        mCues.remove(Long.valueOf(paramLong));
      }
    }
  }
  
  public void add(SubtitleTrack.Cue paramCue)
  {
    if (mStartTimeMs >= mEndTimeMs) {}
    while (!addEvent(paramCue, mStartTimeMs)) {
      return;
    }
    long l1 = mStartTimeMs;
    int i;
    if (mInnerTimesMs != null)
    {
      long[] arrayOfLong = mInnerTimesMs;
      int j = arrayOfLong.length;
      i = 0;
      if (i < j)
      {
        long l2 = arrayOfLong[i];
        if ((l2 <= l1) || (l2 >= mEndTimeMs)) {
          break label109;
        }
        addEvent(paramCue, l2);
        l1 = l2;
      }
    }
    label109:
    for (;;)
    {
      i += 1;
      break;
      addEvent(paramCue, mEndTimeMs);
      return;
    }
  }
  
  public Iterable<Pair<Long, SubtitleTrack.Cue>> entriesBetween(final long paramLong1, long paramLong2)
  {
    new Iterable()
    {
      public Iterator<Pair<Long, SubtitleTrack.Cue>> iterator()
      {
        if (DEBUG) {
          new StringBuilder("slice (").append(paramLong1).append(", ").append(val$timeMs).append("]=");
        }
        try
        {
          SubtitleTrack.CueList.EntryIterator localEntryIterator = new SubtitleTrack.CueList.EntryIterator(SubtitleTrack.CueList.this, mCues.subMap(Long.valueOf(paramLong1 + 1L), Long.valueOf(val$timeMs + 1L)));
          return localEntryIterator;
        }
        catch (IllegalArgumentException localIllegalArgumentException) {}
        return new SubtitleTrack.CueList.EntryIterator(SubtitleTrack.CueList.this, null);
      }
    };
  }
  
  public long nextTimeAfter(long paramLong)
  {
    try
    {
      SortedMap localSortedMap = mCues.tailMap(Long.valueOf(1L + paramLong));
      if (localSortedMap != null)
      {
        paramLong = ((Long)localSortedMap.firstKey()).longValue();
        return paramLong;
      }
      return -1L;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return -1L;
    }
    catch (NoSuchElementException localNoSuchElementException) {}
    return -1L;
  }
  
  public void remove(SubtitleTrack.Cue paramCue)
  {
    removeEvent(paramCue, mStartTimeMs);
    if (mInnerTimesMs != null)
    {
      long[] arrayOfLong = mInnerTimesMs;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        removeEvent(paramCue, arrayOfLong[i]);
        i += 1;
      }
    }
    removeEvent(paramCue, mEndTimeMs);
  }
  
  class EntryIterator
    implements Iterator<Pair<Long, SubtitleTrack.Cue>>
  {
    private long mCurrentTimeMs;
    private boolean mDone;
    private Pair<Long, SubtitleTrack.Cue> mLastEntry;
    private Iterator<SubtitleTrack.Cue> mLastListIterator;
    private Iterator<SubtitleTrack.Cue> mListIterator;
    private SortedMap<Long, Vector<SubtitleTrack.Cue>> mRemainingCues;
    
    public EntryIterator()
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
      if (((Vector)mCues.get(mLastEntry.first)).size() == 0) {
        mCues.remove(mLastEntry.first);
      }
      SubtitleTrack.Cue localCue = (SubtitleTrack.Cue)mLastEntry.second;
      SubtitleTrack.CueList.this.removeEvent(localCue, mStartTimeMs);
      if (mInnerTimesMs != null)
      {
        long[] arrayOfLong = mInnerTimesMs;
        int j = arrayOfLong.length;
        int i = 0;
        while (i < j)
        {
          long l = arrayOfLong[i];
          SubtitleTrack.CueList.this.removeEvent(localCue, l);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.CueList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */