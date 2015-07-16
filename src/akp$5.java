import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;

final class akp$5
  implements Runnable
{
  akp$5(akp paramakp) {}
  
  public final void run()
  {
    int i = 0;
    for (;;)
    {
      synchronized (akp.z())
      {
        DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
        int j = arrayOfDatabaseTable.length;
        if (i < j)
        {
          DbTable.DatabaseTable localDatabaseTable = arrayOfDatabaseTable[i];
          if (localDatabaseTable.getTable().l()) {
            localDatabaseTable.getTable().k();
          } else {
            localDatabaseTable.getTable().c();
          }
        }
      }
      return;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     akp.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */