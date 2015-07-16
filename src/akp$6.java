import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

final class akp$6
  implements Runnable
{
  akp$6(akp paramakp, DbTable.DatabaseTable[] paramArrayOfDatabaseTable, akp.b paramb) {}
  
  public final void run()
  {
    akp localakp = this$0;
    DbTable.DatabaseTable[] arrayOfDatabaseTable = val$tablesToUpdate;
    synchronized (akp.sUserSyncLock)
    {
      if (!akr.m())
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
        arrayOfDatabaseTable[i].getTable().c(akp.sInstance);
        i += 1;
      }
      ChatsReceivedInLastHourTable.a(akp.y());
      mSlightlySecurePreferences.b();
    }
  }
}

/* Location:
 * Qualified Name:     akp.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */