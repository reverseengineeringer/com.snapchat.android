import com.snapchat.android.Timber;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

final class ajv$5
  implements Runnable
{
  ajv$5(ajv paramajv) {}
  
  public final void run()
  {
    int i = 0;
    for (;;)
    {
      synchronized (ajv.z())
      {
        DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
        int j = arrayOfDatabaseTable.length;
        if (i < j)
        {
          DbTable.DatabaseTable localDatabaseTable = arrayOfDatabaseTable[i];
          if (localDatabaseTable.getTable().l()) {
            localDatabaseTable.getTable().k();
          } else {
            Timber.c("User", "DB-LOG: Not deleting %s table because not user-specific", new Object[] { localDatabaseTable.getTable().c() });
          }
        }
      }
      return;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     ajv.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */