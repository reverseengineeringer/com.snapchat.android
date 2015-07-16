package android.media;

import android.util.Pair;
import java.util.Iterator;
import java.util.SortedMap;

class SubtitleTrack$CueList$1
  implements Iterable<Pair<Long, SubtitleTrack.Cue>>
{
  SubtitleTrack$CueList$1(SubtitleTrack.CueList paramCueList, long paramLong1, long paramLong2) {}
  
  public Iterator<Pair<Long, SubtitleTrack.Cue>> iterator()
  {
    if (this$0.DEBUG) {
      new StringBuilder("slice (").append(val$lastTimeMs).append(", ").append(val$timeMs).append("]=");
    }
    try
    {
      SubtitleTrack.CueList.EntryIterator localEntryIterator = new SubtitleTrack.CueList.EntryIterator(this$0, SubtitleTrack.CueList.access$200(this$0).subMap(Long.valueOf(val$lastTimeMs + 1L), Long.valueOf(val$timeMs + 1L)));
      return localEntryIterator;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
    return new SubtitleTrack.CueList.EntryIterator(this$0, null);
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.CueList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */