package com.snapchat.android.database.table;

import android.content.Context;
import android.os.AsyncTask;
import com.snapchat.android.model.chat.CashFeedItem;

final class CashFeedItemTable$1
  extends AsyncTask<Void, Void, Void>
{
  CashFeedItemTable$1(Context paramContext, CashFeedItem paramCashFeedItem) {}
  
  /* Error */
  private Void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/snapchat/android/database/table/CashFeedItemTable$1:a	Landroid/content/Context;
    //   4: invokestatic 28	com/snapchat/android/database/DatabaseHelper:a	(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;
    //   7: invokevirtual 32	com/snapchat/android/database/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 37	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   15: aload_2
    //   16: ldc 39
    //   18: getstatic 42	com/snapchat/android/database/table/CashFeedItemTable:a	[Ljava/lang/String;
    //   21: new 44	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   28: getstatic 51	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:ID	Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    //   31: invokevirtual 55	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:getColumnName	()Ljava/lang/String;
    //   34: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 61
    //   39: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: getstatic 64	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:TARGET_VIEW	Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    //   45: invokevirtual 55	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:getColumnName	()Ljava/lang/String;
    //   48: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc 66
    //   53: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: iconst_2
    //   60: anewarray 71	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: aload_0
    //   66: getfield 18	com/snapchat/android/database/table/CashFeedItemTable$1:b	Lcom/snapchat/android/model/chat/CashFeedItem;
    //   69: invokevirtual 76	com/snapchat/android/model/chat/CashFeedItem:d	()Ljava/lang/String;
    //   72: aastore
    //   73: dup
    //   74: iconst_1
    //   75: getstatic 82	com/snapchat/android/model/Snap$TargetView:CHAT	Lcom/snapchat/android/model/Snap$TargetView;
    //   78: invokevirtual 85	com/snapchat/android/model/Snap$TargetView:name	()Ljava/lang/String;
    //   81: aastore
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 89	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore_3
    //   89: aload_3
    //   90: ifnull +94 -> 184
    //   93: aload_3
    //   94: invokeinterface 95 1 0
    //   99: istore_1
    //   100: aload_3
    //   101: invokeinterface 98 1 0
    //   106: iload_1
    //   107: ifle +83 -> 190
    //   110: new 100	android/content/ContentValues
    //   113: dup
    //   114: invokespecial 101	android/content/ContentValues:<init>	()V
    //   117: astore_3
    //   118: aload_3
    //   119: getstatic 64	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:TARGET_VIEW	Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    //   122: invokevirtual 55	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:getColumnName	()Ljava/lang/String;
    //   125: getstatic 104	com/snapchat/android/model/Snap$TargetView:CHAT_AND_FEED	Lcom/snapchat/android/model/Snap$TargetView;
    //   128: invokevirtual 85	com/snapchat/android/model/Snap$TargetView:name	()Ljava/lang/String;
    //   131: invokevirtual 108	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload_2
    //   135: ldc 39
    //   137: aload_3
    //   138: new 44	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   145: getstatic 51	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:ID	Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    //   148: invokevirtual 55	com/snapchat/android/database/table/CashFeedItemTable$CashSchema:getColumnName	()Ljava/lang/String;
    //   151: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: ldc 66
    //   156: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: iconst_1
    //   163: anewarray 71	java/lang/String
    //   166: dup
    //   167: iconst_0
    //   168: aload_0
    //   169: getfield 18	com/snapchat/android/database/table/CashFeedItemTable$1:b	Lcom/snapchat/android/model/chat/CashFeedItem;
    //   172: invokevirtual 76	com/snapchat/android/model/chat/CashFeedItem:d	()Ljava/lang/String;
    //   175: aastore
    //   176: invokevirtual 112	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   179: pop
    //   180: aload_2
    //   181: invokevirtual 115	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   184: aload_2
    //   185: invokevirtual 118	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   188: aconst_null
    //   189: areturn
    //   190: aload_2
    //   191: aload_0
    //   192: getfield 18	com/snapchat/android/database/table/CashFeedItemTable$1:b	Lcom/snapchat/android/model/chat/CashFeedItem;
    //   195: getstatic 121	com/snapchat/android/model/Snap$TargetView:FEED	Lcom/snapchat/android/model/Snap$TargetView;
    //   198: invokestatic 124	com/snapchat/android/database/table/CashFeedItemTable:a	(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/Snap$TargetView;)V
    //   201: goto -21 -> 180
    //   204: astore_3
    //   205: aload_2
    //   206: invokevirtual 118	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   209: aload_3
    //   210: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	211	0	this	1
    //   99	8	1	i	int
    //   10	196	2	localSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   88	50	3	localObject1	Object
    //   204	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   15	89	204	finally
    //   93	106	204	finally
    //   110	180	204	finally
    //   180	184	204	finally
    //   190	201	204	finally
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.CashFeedItemTable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */