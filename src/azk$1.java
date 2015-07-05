import com.snapchat.android.Timber.LogType;
import java.util.concurrent.ConcurrentHashMap;

final class azk$1
  extends ConcurrentHashMap<String, azr>
{
  azk$1()
  {
    put(Timber.LogType.CHAT.name(), new azr("snapchat_shake2report_chat_"));
    put(Timber.LogType.LOCATION_MANAGER.name(), new azr("snapchat_shake2report_location_manager_"));
    put(Timber.LogType.BITMAP_POOL_MONITOR.name(), new azr("snapchat_shake2report_bitmap_pool_monitor_"));
    put("DEFAULT", new azr("snapchat_shake2report_default_"));
  }
}

/* Location:
 * Qualified Name:     azk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */