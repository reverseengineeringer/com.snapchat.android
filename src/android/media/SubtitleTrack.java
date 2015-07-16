package android.media;

import android.graphics.Canvas;
import android.os.Handler;
import android.util.LongSparseArray;
import android.util.Pair;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Vector;

public abstract class SubtitleTrack
  implements MediaTimeProvider.OnMediaTimeListener
{
  private static final String TAG = "SubtitleTrack";
  public boolean DEBUG = false;
  protected final Vector<Cue> mActiveCues = new Vector();
  protected CueList mCues;
  private MediaFormat mFormat;
  protected Handler mHandler = new Handler();
  private long mLastTimeMs;
  private long mLastUpdateTimeMs;
  private long mNextScheduledTimeMs = -1L;
  private Runnable mRunnable;
  protected final LongSparseArray<Run> mRunsByEndTime = new LongSparseArray();
  protected final LongSparseArray<Run> mRunsByID = new LongSparseArray();
  protected MediaTimeProvider mTimeProvider;
  protected boolean mVisible;
  
  public SubtitleTrack(MediaFormat paramMediaFormat)
  {
    mFormat = paramMediaFormat;
    mCues = new CueList();
    clearActiveCues();
    mLastTimeMs = -1L;
  }
  
  private void removeRunsByEndTimeIndex(int paramInt)
  {
    Object localObject2;
    for (Object localObject1 = (Run)mRunsByEndTime.valueAt(paramInt); localObject1 != null; localObject1 = localObject2)
    {
      Cue localCue;
      for (localObject2 = mFirstCue; localObject2 != null; localObject2 = localCue)
      {
        mCues.remove((Cue)localObject2);
        localCue = mNextInRun;
        mNextInRun = null;
      }
      mRunsByID.remove(mRunID);
      localObject2 = mNextRunAtEndTimeMs;
      mPrevRunAtEndTimeMs = null;
      mNextRunAtEndTimeMs = null;
    }
    mRunsByEndTime.removeAt(paramInt);
  }
  
  private void takeTime(long paramLong)
  {
    try
    {
      mLastTimeMs = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  protected boolean addCue(Cue paramCue)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 89	android/media/SubtitleTrack:mCues	Landroid/media/SubtitleTrack$CueList;
    //   6: aload_1
    //   7: invokevirtual 140	android/media/SubtitleTrack$CueList:add	(Landroid/media/SubtitleTrack$Cue;)V
    //   10: aload_1
    //   11: getfield 141	android/media/SubtitleTrack$Cue:mRunID	J
    //   14: lconst_0
    //   15: lcmp
    //   16: ifeq +71 -> 87
    //   19: aload_0
    //   20: getfield 68	android/media/SubtitleTrack:mRunsByID	Landroid/util/LongSparseArray;
    //   23: aload_1
    //   24: getfield 141	android/media/SubtitleTrack$Cue:mRunID	J
    //   27: invokevirtual 145	android/util/LongSparseArray:get	(J)Ljava/lang/Object;
    //   30: checkcast 27	android/media/SubtitleTrack$Run
    //   33: astore 8
    //   35: aload 8
    //   37: ifnonnull +237 -> 274
    //   40: new 27	android/media/SubtitleTrack$Run
    //   43: dup
    //   44: aconst_null
    //   45: invokespecial 148	android/media/SubtitleTrack$Run:<init>	(Landroid/media/SubtitleTrack$1;)V
    //   48: astore 7
    //   50: aload_0
    //   51: getfield 68	android/media/SubtitleTrack:mRunsByID	Landroid/util/LongSparseArray;
    //   54: aload_1
    //   55: getfield 141	android/media/SubtitleTrack$Cue:mRunID	J
    //   58: aload 7
    //   60: invokevirtual 152	android/util/LongSparseArray:put	(JLjava/lang/Object;)V
    //   63: aload 7
    //   65: aload_1
    //   66: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   69: putfield 156	android/media/SubtitleTrack$Run:mEndTimeMs	J
    //   72: aload_1
    //   73: aload 7
    //   75: getfield 109	android/media/SubtitleTrack$Run:mFirstCue	Landroid/media/SubtitleTrack$Cue;
    //   78: putfield 116	android/media/SubtitleTrack$Cue:mNextInRun	Landroid/media/SubtitleTrack$Cue;
    //   81: aload 7
    //   83: aload_1
    //   84: putfield 109	android/media/SubtitleTrack$Run:mFirstCue	Landroid/media/SubtitleTrack$Cue;
    //   87: ldc2_w 81
    //   90: lstore 4
    //   92: aload_0
    //   93: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   96: astore 7
    //   98: lload 4
    //   100: lstore_2
    //   101: aload 7
    //   103: ifnull +19 -> 122
    //   106: aload_0
    //   107: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   110: iconst_0
    //   111: iconst_1
    //   112: invokeinterface 164 3 0
    //   117: ldc2_w 165
    //   120: ldiv
    //   121: lstore_2
    //   122: aload_0
    //   123: getfield 75	android/media/SubtitleTrack:DEBUG	Z
    //   126: ifeq +65 -> 191
    //   129: new 168	java/lang/StringBuilder
    //   132: dup
    //   133: ldc -86
    //   135: invokespecial 173	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: aload_0
    //   139: getfield 175	android/media/SubtitleTrack:mVisible	Z
    //   142: invokevirtual 179	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   145: ldc -75
    //   147: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_1
    //   151: getfield 187	android/media/SubtitleTrack$Cue:mStartTimeMs	J
    //   154: invokevirtual 190	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   157: ldc -64
    //   159: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: lload_2
    //   163: invokevirtual 190	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   166: ldc -75
    //   168: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_1
    //   172: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   175: invokevirtual 190	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   178: ldc -62
    //   180: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload_0
    //   184: getfield 94	android/media/SubtitleTrack:mLastTimeMs	J
    //   187: invokevirtual 190	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload_0
    //   192: getfield 175	android/media/SubtitleTrack:mVisible	Z
    //   195: ifeq +117 -> 312
    //   198: aload_1
    //   199: getfield 187	android/media/SubtitleTrack$Cue:mStartTimeMs	J
    //   202: lload_2
    //   203: lcmp
    //   204: ifgt +108 -> 312
    //   207: aload_1
    //   208: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   211: aload_0
    //   212: getfield 94	android/media/SubtitleTrack:mLastTimeMs	J
    //   215: lcmp
    //   216: iflt +96 -> 312
    //   219: aload_0
    //   220: getfield 99	android/media/SubtitleTrack:mRunnable	Ljava/lang/Runnable;
    //   223: ifnull +14 -> 237
    //   226: aload_0
    //   227: getfield 80	android/media/SubtitleTrack:mHandler	Landroid/os/Handler;
    //   230: aload_0
    //   231: getfield 99	android/media/SubtitleTrack:mRunnable	Ljava/lang/Runnable;
    //   234: invokevirtual 198	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   237: aload_0
    //   238: new 8	android/media/SubtitleTrack$1
    //   241: dup
    //   242: aload_0
    //   243: aload_0
    //   244: lload_2
    //   245: invokespecial 201	android/media/SubtitleTrack$1:<init>	(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    //   248: putfield 99	android/media/SubtitleTrack:mRunnable	Ljava/lang/Runnable;
    //   251: aload_0
    //   252: getfield 80	android/media/SubtitleTrack:mHandler	Landroid/os/Handler;
    //   255: aload_0
    //   256: getfield 99	android/media/SubtitleTrack:mRunnable	Ljava/lang/Runnable;
    //   259: ldc2_w 202
    //   262: invokevirtual 207	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   265: pop
    //   266: iconst_1
    //   267: istore 6
    //   269: aload_0
    //   270: monitorexit
    //   271: iload 6
    //   273: ireturn
    //   274: aload 8
    //   276: astore 7
    //   278: aload 8
    //   280: getfield 156	android/media/SubtitleTrack$Run:mEndTimeMs	J
    //   283: aload_1
    //   284: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   287: lcmp
    //   288: ifge -216 -> 72
    //   291: aload 8
    //   293: aload_1
    //   294: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   297: putfield 156	android/media/SubtitleTrack$Run:mEndTimeMs	J
    //   300: aload 8
    //   302: astore 7
    //   304: goto -232 -> 72
    //   307: astore_1
    //   308: aload_0
    //   309: monitorexit
    //   310: aload_1
    //   311: athrow
    //   312: aload_0
    //   313: getfield 175	android/media/SubtitleTrack:mVisible	Z
    //   316: ifeq +40 -> 356
    //   319: aload_1
    //   320: getfield 155	android/media/SubtitleTrack$Cue:mEndTimeMs	J
    //   323: aload_0
    //   324: getfield 94	android/media/SubtitleTrack:mLastTimeMs	J
    //   327: lcmp
    //   328: iflt +28 -> 356
    //   331: aload_1
    //   332: getfield 187	android/media/SubtitleTrack$Cue:mStartTimeMs	J
    //   335: aload_0
    //   336: getfield 84	android/media/SubtitleTrack:mNextScheduledTimeMs	J
    //   339: lcmp
    //   340: iflt +12 -> 352
    //   343: aload_0
    //   344: getfield 84	android/media/SubtitleTrack:mNextScheduledTimeMs	J
    //   347: lconst_0
    //   348: lcmp
    //   349: ifge +7 -> 356
    //   352: aload_0
    //   353: invokevirtual 210	android/media/SubtitleTrack:scheduleTimedEvents	()V
    //   356: iconst_0
    //   357: istore 6
    //   359: goto -90 -> 269
    //   362: astore 7
    //   364: lload 4
    //   366: lstore_2
    //   367: goto -245 -> 122
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	370	0	this	SubtitleTrack
    //   0	370	1	paramCue	Cue
    //   100	267	2	l1	long
    //   90	275	4	l2	long
    //   267	91	6	bool	boolean
    //   48	255	7	localObject	Object
    //   362	1	7	localIllegalStateException	IllegalStateException
    //   33	268	8	localRun	Run
    // Exception table:
    //   from	to	target	type
    //   2	35	307	finally
    //   40	72	307	finally
    //   72	87	307	finally
    //   92	98	307	finally
    //   106	122	307	finally
    //   122	191	307	finally
    //   191	237	307	finally
    //   237	266	307	finally
    //   278	300	307	finally
    //   312	352	307	finally
    //   352	356	307	finally
    //   106	122	362	java/lang/IllegalStateException
  }
  
  protected void clearActiveCues()
  {
    try
    {
      if (DEBUG) {
        new StringBuilder("Clearing ").append(mActiveCues.size()).append(" active cues");
      }
      mActiveCues.clear();
      mLastUpdateTimeMs = -1L;
      return;
    }
    finally {}
  }
  
  protected void finalize()
  {
    int i = mRunsByEndTime.size() - 1;
    while (i >= 0)
    {
      removeRunsByEndTimeIndex(i);
      i -= 1;
    }
  }
  
  protected void finishedRun(long paramLong)
  {
    if ((paramLong != 0L) && (paramLong != -1L))
    {
      Run localRun = (Run)mRunsByID.get(paramLong);
      if (localRun != null) {
        localRun.storeByEndTimeMs(mRunsByEndTime);
      }
    }
  }
  
  public final MediaFormat getFormat()
  {
    return mFormat;
  }
  
  public abstract RenderingWidget getRenderingWidget();
  
  public void hide()
  {
    if (!mVisible) {
      return;
    }
    if (mTimeProvider != null) {
      mTimeProvider.cancelNotifications(this);
    }
    RenderingWidget localRenderingWidget = getRenderingWidget();
    if (localRenderingWidget != null) {
      localRenderingWidget.setVisible(false);
    }
    mVisible = false;
  }
  
  public boolean isTimedText()
  {
    return getRenderingWidget() == null;
  }
  
  protected void onData(SubtitleData paramSubtitleData)
  {
    long l = paramSubtitleData.getStartTimeUs() + 1L;
    onData(paramSubtitleData.getData(), true, l);
    setRunDiscardTimeMs(l, (paramSubtitleData.getStartTimeUs() + paramSubtitleData.getDurationUs()) / 1000L);
  }
  
  public abstract void onData(byte[] paramArrayOfByte, boolean paramBoolean, long paramLong);
  
  public void onSeek(long paramLong)
  {
    try
    {
      paramLong /= 1000L;
      updateActiveCues(true, paramLong);
      takeTime(paramLong);
      updateView(mActiveCues);
      scheduleTimedEvents();
      return;
    }
    finally {}
  }
  
  public void onStop()
  {
    try
    {
      clearActiveCues();
      mLastTimeMs = -1L;
      updateView(mActiveCues);
      mNextScheduledTimeMs = -1L;
      mTimeProvider.notifyAt(-1L, this);
      return;
    }
    finally {}
  }
  
  public void onTimedEvent(long paramLong)
  {
    try
    {
      paramLong /= 1000L;
      updateActiveCues(false, paramLong);
      takeTime(paramLong);
      updateView(mActiveCues);
      scheduleTimedEvents();
      return;
    }
    finally {}
  }
  
  protected void scheduleTimedEvents()
  {
    MediaTimeProvider localMediaTimeProvider;
    if (mTimeProvider != null)
    {
      mNextScheduledTimeMs = mCues.nextTimeAfter(mLastTimeMs);
      if (DEBUG) {
        new StringBuilder("sched @").append(mNextScheduledTimeMs).append(" after ").append(mLastTimeMs);
      }
      localMediaTimeProvider = mTimeProvider;
      if (mNextScheduledTimeMs < 0L) {
        break label92;
      }
    }
    label92:
    for (long l = mNextScheduledTimeMs * 1000L;; l = -1L)
    {
      localMediaTimeProvider.notifyAt(l, this);
      return;
    }
  }
  
  public void setRunDiscardTimeMs(long paramLong1, long paramLong2)
  {
    if ((paramLong1 != 0L) && (paramLong1 != -1L))
    {
      Run localRun = (Run)mRunsByID.get(paramLong1);
      if (localRun != null)
      {
        mEndTimeMs = paramLong2;
        localRun.storeByEndTimeMs(mRunsByEndTime);
      }
    }
  }
  
  /* Error */
  public void setTimeProvider(MediaTimeProvider paramMediaTimeProvider)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   6: astore_2
    //   7: aload_2
    //   8: aload_1
    //   9: if_acmpne +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   19: ifnull +13 -> 32
    //   22: aload_0
    //   23: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   26: aload_0
    //   27: invokeinterface 244 2 0
    //   32: aload_0
    //   33: aload_1
    //   34: putfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   37: aload_0
    //   38: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   41: ifnull -29 -> 12
    //   44: aload_0
    //   45: getfield 158	android/media/SubtitleTrack:mTimeProvider	Landroid/media/MediaTimeProvider;
    //   48: aload_0
    //   49: invokeinterface 304 2 0
    //   54: goto -42 -> 12
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	SubtitleTrack
    //   0	62	1	paramMediaTimeProvider	MediaTimeProvider
    //   6	2	2	localMediaTimeProvider	MediaTimeProvider
    // Exception table:
    //   from	to	target	type
    //   2	7	57	finally
    //   15	32	57	finally
    //   32	54	57	finally
  }
  
  public void show()
  {
    if (mVisible) {}
    do
    {
      return;
      mVisible = true;
      RenderingWidget localRenderingWidget = getRenderingWidget();
      if (localRenderingWidget != null) {
        localRenderingWidget.setVisible(true);
      }
    } while (mTimeProvider == null);
    mTimeProvider.scheduleUpdate(this);
  }
  
  protected void updateActiveCues(boolean paramBoolean, long paramLong)
  {
    if (!paramBoolean) {}
    for (;;)
    {
      Cue localCue;
      try
      {
        if (mLastUpdateTimeMs > paramLong) {
          clearActiveCues();
        }
        Iterator localIterator = mCues.entriesBetween(mLastUpdateTimeMs, paramLong).iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        Pair localPair = (Pair)localIterator.next();
        localCue = (Cue)second;
        if (mEndTimeMs == ((Long)first).longValue())
        {
          if (DEBUG) {
            new StringBuilder("Removing ").append(localCue);
          }
          mActiveCues.remove(localCue);
          if (mRunID != 0L) {
            continue;
          }
          localIterator.remove();
          continue;
        }
        if (mStartTimeMs != ((Long)first).longValue()) {
          break label220;
        }
      }
      finally {}
      if (DEBUG) {
        new StringBuilder("Adding ").append(localCue);
      }
      if (mInnerTimesMs != null) {
        localCue.onTime(paramLong);
      }
      mActiveCues.add(localCue);
      continue;
      label220:
      if (mInnerTimesMs != null) {
        localCue.onTime(paramLong);
      }
    }
    while ((mRunsByEndTime.size() > 0) && (mRunsByEndTime.keyAt(0) <= paramLong)) {
      removeRunsByEndTimeIndex(0);
    }
    mLastUpdateTimeMs = paramLong;
  }
  
  public abstract void updateView(Vector<Cue> paramVector);
  
  public static class Cue
  {
    public long mEndTimeMs;
    public long[] mInnerTimesMs;
    public Cue mNextInRun;
    public long mRunID;
    public long mStartTimeMs;
    
    public void onTime(long paramLong) {}
  }
  
  static class CueList
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
  
  public static abstract interface RenderingWidget
  {
    public abstract void draw(Canvas paramCanvas);
    
    public abstract void onAttachedToWindow();
    
    public abstract void onDetachedFromWindow();
    
    public abstract void setOnChangedListener(OnChangedListener paramOnChangedListener);
    
    public abstract void setSize(int paramInt1, int paramInt2);
    
    public abstract void setVisible(boolean paramBoolean);
    
    public static abstract interface OnChangedListener
    {
      public abstract void onChanged(SubtitleTrack.RenderingWidget paramRenderingWidget);
    }
  }
  
  static class Run
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
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */