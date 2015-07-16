import com.snapchat.android.Timber.LogType;
import java.util.concurrent.ConcurrentHashMap;

final class baj$1
  extends ConcurrentHashMap<String, baq>
{
  baj$1()
  {
    put(Timber.LogType.CHAT.name(), new baq("snapchat_shake2report_chat_"));
    put(Timber.LogType.LOCATION_MANAGER.name(), new baq("snapchat_shake2report_location_manager_"));
    put(Timber.LogType.BITMAP_POOL_MONITOR.name(), new baq("snapchat_shake2report_bitmap_pool_monitor_"));
    put(Timber.LogType.DOWNLOAD_PROGRESS.name(), new baq("snapchat_shake2report_download_progress_"));
    put("DEFAULT", new baq("snapchat_shake2report_default_"));
  }
}

/* Location:
 * Qualified Name:     baj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */