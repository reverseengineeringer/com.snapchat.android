package com.snapchat.android.dev;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import aqb;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable;
import java.util.List;

final class DbBrowserActivity$a
  extends aqb
{
  private int b = 2130968649;
  
  public DbBrowserActivity$a(Context paramContext, int paramInt)
  {
    super(paramInt, 2130968649, localList);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a.getLayoutInflater().inflate(b, paramViewGroup, false);
    }
    paramView = getItem(paramInt);
    paramViewGroup = (TextView)localView.findViewById(2131362209);
    if ((paramView instanceof DbTable.DatabaseTable)) {
      paramViewGroup.setText(((DbTable.DatabaseTable)paramView).name());
    }
    while (!(paramView instanceof DbVirtualTable.DatabaseVirtualTable)) {
      return localView;
    }
    paramViewGroup.setText(((DbVirtualTable.DatabaseVirtualTable)paramView).name());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.dev.DbBrowserActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */