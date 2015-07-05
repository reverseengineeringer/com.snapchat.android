import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;

final class adl$3
  implements Runnable
{
  adl$3(adl paramadl, adl.c paramc) {}
  
  public final void run()
  {
    Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: Saving channel and chunk to DB.", new Object[0]);
    if (a.d.mChannelListResponse != null) {
      PublisherChannelTable.a(b.h, a.d.mChannelListResponse);
    }
    if ((a.d.mLinkStatus == DiscoverLinkStatusResult.LinkStatus.ARCHIVED) && (a.d.mEditionChunkResponse != null)) {
      EditionTable.a(b.h, a.d.mEditionChunkResponse, a.c, a.d.mEditionId);
    }
  }
}

/* Location:
 * Qualified Name:     adl.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */