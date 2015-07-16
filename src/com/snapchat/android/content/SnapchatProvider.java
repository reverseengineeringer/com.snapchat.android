package com.snapchat.android.content;

import abp;
import acf;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.schema.HttpMetricSchema;
import com.snapchat.android.database.schema.VerifiedDeviceSchema;
import com.snapchat.android.database.table.ChatTable;
import com.snapchat.android.database.table.ChatTable.ChatSchema;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable;
import com.snapchat.android.discover.model.database.vtable.DSnapPageVirtualTable.DSnapPageSchema;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable.ChannelSchema;
import java.util.List;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class SnapchatProvider
  extends ContentProvider
{
  public static final Uri a = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/HttpMetrics");
  public static final Uri b = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/PublisherAndEdition");
  public static final Uri c = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/DSnapPage");
  public static final Uri d = Uri.parse("content://com.snapchat.android.content.SnapchatProvider/VerifiedDeviceTable");
  private static final UriMatcher e;
  
  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    e = localUriMatcher;
    localUriMatcher.addURI("com.snapchat.android.content.SnapchatProvider", "Chat", 3);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "Chat/*", 4);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "HttpMetrics", 10);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "VerifiedDeviceTable", 15);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "PublisherAndEdition", 12);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "DSnapPage/*", 13);
    e.addURI("com.snapchat.android.content.SnapchatProvider", "DSnapPage", 14);
  }
  
  private static String[] a(String[] paramArrayOfString1, String... paramVarArgs)
  {
    if (paramArrayOfString1 == null) {}
    for (int i = 0;; i = paramArrayOfString1.length)
    {
      String[] arrayOfString = new String[i + 1];
      System.arraycopy(paramVarArgs, 0, arrayOfString, 0, 1);
      if (i > 0) {
        System.arraycopy(paramArrayOfString1, 0, arrayOfString, 1, i);
      }
      return arrayOfString;
    }
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    kkxxkk.b041E041EОО041EО(getContext());
    xkkkxk.b041E041EООО041E(getContext());
    return false;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    int i = e.match(paramUri);
    new StringBuilder("query ").append(paramUri).append(" -> ").append(i);
    String str2 = paramUri.getQueryParameter("limit");
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    Object localObject = paramArrayOfString2;
    switch (i)
    {
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 11: 
    default: 
      throw new IllegalArgumentException("Unknown URI " + paramUri);
    case 4: 
      localObject = (String)paramUri.getPathSegments().get(1);
      localSQLiteQueryBuilder.appendWhere(ChatTable.ChatSchema.CONVERSATION_ID.getColumnName());
      localSQLiteQueryBuilder.appendWhere("=?");
      localObject = a(paramArrayOfString2, new String[] { localObject });
    case 3: 
      localSQLiteQueryBuilder.setTables("Chat");
      localSQLiteQueryBuilder.setProjectionMap(ChatTable.b);
      paramArrayOfString2 = null;
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString2)) {}
      for (;;)
      {
        paramArrayOfString1 = localSQLiteQueryBuilder.query(DatabaseHelper.a(getContext()).getReadableDatabase(), paramArrayOfString1, paramString1, (String[])localObject, null, null, paramString2, str2);
        paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
        return paramArrayOfString1;
        localSQLiteQueryBuilder.setTables("HttpMetrics");
        localSQLiteQueryBuilder.setProjectionMap(abp.b);
        if (!TextUtils.isEmpty(paramString2)) {
          break label632;
        }
        paramString2 = HttpMetricSchema.TIMESTAMP.getColumnName() + " DESC";
        str1 = null;
        localObject = paramArrayOfString2;
        paramArrayOfString2 = str1;
        break;
        localSQLiteQueryBuilder.setTables("VerifiedDeviceTable");
        localSQLiteQueryBuilder.setProjectionMap(acf.a);
        if (!TextUtils.isEmpty(paramString2)) {
          break label632;
        }
        paramString2 = VerifiedDeviceSchema.LAST_LOGIN.getColumnName() + " DESC";
        str1 = null;
        localObject = paramArrayOfString2;
        paramArrayOfString2 = str1;
        break;
        localSQLiteQueryBuilder.setTables("PublisherAndEdition");
        localSQLiteQueryBuilder.setProjectionMap(PublisherAndEditionVirtualTable.b);
        str1 = PublisherAndEditionVirtualTable.ChannelSchema.POSITION.getColumnName() + " ASC";
        localObject = paramArrayOfString2;
        paramArrayOfString2 = str1;
        break;
        localObject = (String)paramUri.getPathSegments().get(1);
        localSQLiteQueryBuilder.appendWhere(DSnapPageVirtualTable.DSnapPageSchema.EDITION_ID.getColumnName());
        localSQLiteQueryBuilder.appendWhere("=?");
        localObject = a(paramArrayOfString2, new String[] { localObject });
        localSQLiteQueryBuilder.setTables("DSnapPage");
        localSQLiteQueryBuilder.setProjectionMap(DSnapPageVirtualTable.b);
        paramArrayOfString2 = DSnapPageVirtualTable.DSnapPageSchema.POSITION.getColumnName() + " ASC";
        break;
        localSQLiteQueryBuilder.setTables("DSnapPage");
        localSQLiteQueryBuilder.setProjectionMap(DSnapPageVirtualTable.b);
        localObject = DSnapPageVirtualTable.DSnapPageSchema.EDITION_ID.getColumnName() + " ASC";
        str1 = (String)localObject + ", " + DSnapPageVirtualTable.DSnapPageSchema.POSITION.getColumnName() + " ASC";
        localObject = paramArrayOfString2;
        paramArrayOfString2 = str1;
        break;
        paramString2 = paramArrayOfString2;
      }
      label632:
      String str1 = null;
      localObject = paramArrayOfString2;
      paramArrayOfString2 = str1;
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.content.SnapchatProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */