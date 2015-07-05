package com.snapchat.android.dev;

import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable;

final class DbBrowserActivity$3
  implements AdapterView.OnItemClickListener
{
  DbBrowserActivity$3(DbBrowserActivity paramDbBrowserActivity, DbBrowserActivity.a parama) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = a.getItem(paramInt);
    if ((paramAdapterView instanceof DbVirtualTable.DatabaseVirtualTable))
    {
      paramAdapterView = (DbVirtualTable.DatabaseVirtualTable)paramAdapterView;
      DbBrowserActivity.a(b, paramAdapterView);
      b.a();
    }
    DbBrowserActivity.b(b).closeDrawers(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.dev.DbBrowserActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */