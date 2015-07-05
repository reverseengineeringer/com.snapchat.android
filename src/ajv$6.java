import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

final class ajv$6
  implements Runnable
{
  ajv$6(ajv paramajv, DbTable.DatabaseTable[] paramArrayOfDatabaseTable, ajv.b paramb) {}
  
  public final void run()
  {
    ajv localajv = this$0;
    DbTable.DatabaseTable[] arrayOfDatabaseTable = val$tablesToUpdate;
    synchronized (ajv.sUserSyncLock)
    {
      if (!ajx.m())
      {
        if (val$inurface != null) {
          val$inurface.D_();
        }
        return;
      }
      int j = arrayOfDatabaseTable.length;
      int i = 0;
      while (i < j)
      {
        arrayOfDatabaseTable[i].getTable().c(ajv.sInstance);
        i += 1;
      }
      ChatsReceivedInLastHourTable.a(ajv.y());
      mSlightlySecurePreferences.b();
    }
  }
}

/* Location:
 * Qualified Name:     ajv.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */