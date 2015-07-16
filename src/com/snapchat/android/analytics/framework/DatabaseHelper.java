package com.snapchat.android.analytics.framework;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

class DatabaseHelper
  extends SQLiteOpenHelper
{
  private static DatabaseHelper a;
  private File b;
  
  private DatabaseHelper(Context paramContext)
  {
    super(paramContext, Constants.b, null, 1);
    b = paramContext.getDatabasePath(Constants.b);
  }
  
  public static DatabaseHelper a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new DatabaseHelper(paramContext.getApplicationContext());
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  /* Error */
  final long a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: lconst_0
    //   3: lstore_1
    //   4: aload_0
    //   5: invokevirtual 43	com/snapchat/android/analytics/framework/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: ldc 45
    //   10: invokevirtual 51	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   13: invokevirtual 56	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   16: lstore_3
    //   17: lload_3
    //   18: lstore_1
    //   19: aload_0
    //   20: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   23: aload_0
    //   24: monitorexit
    //   25: lload_1
    //   26: lreturn
    //   27: astore 5
    //   29: aload_0
    //   30: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   33: goto -10 -> 23
    //   36: astore 5
    //   38: aload_0
    //   39: monitorexit
    //   40: aload 5
    //   42: athrow
    //   43: astore 5
    //   45: aload_0
    //   46: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   49: aload 5
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	DatabaseHelper
    //   3	23	1	l1	long
    //   16	2	3	l2	long
    //   27	1	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   36	5	5	localObject1	Object
    //   43	7	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	17	27	android/database/sqlite/SQLiteException
    //   19	23	36	finally
    //   29	33	36	finally
    //   45	52	36	finally
    //   4	17	43	finally
  }
  
  /* Error */
  final long a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc2_w 64
    //   5: lstore_2
    //   6: aload_0
    //   7: invokevirtual 68	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore 6
    //   12: new 70	android/content/ContentValues
    //   15: dup
    //   16: invokespecial 72	android/content/ContentValues:<init>	()V
    //   19: astore 7
    //   21: aload 7
    //   23: ldc 74
    //   25: aload_1
    //   26: invokevirtual 78	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: aload 6
    //   31: ldc 80
    //   33: aconst_null
    //   34: aload 7
    //   36: invokevirtual 84	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   39: lstore 4
    //   41: lload 4
    //   43: lstore_2
    //   44: aload_0
    //   45: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   48: aload_0
    //   49: monitorexit
    //   50: lload_2
    //   51: lreturn
    //   52: astore_1
    //   53: aload_0
    //   54: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   57: aload_0
    //   58: getfield 26	com/snapchat/android/analytics/framework/DatabaseHelper:b	Ljava/io/File;
    //   61: invokevirtual 90	java/io/File:delete	()Z
    //   64: pop
    //   65: aload_0
    //   66: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   69: goto -21 -> 48
    //   72: astore_1
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    //   77: astore_1
    //   78: goto -13 -> 65
    //   81: astore_1
    //   82: aload_0
    //   83: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	DatabaseHelper
    //   0	88	1	paramString	String
    //   5	46	2	l1	long
    //   39	3	4	l2	long
    //   10	20	6	localSQLiteDatabase	SQLiteDatabase
    //   19	16	7	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   6	41	52	android/database/sqlite/SQLiteException
    //   44	48	72	finally
    //   65	69	72	finally
    //   82	88	72	finally
    //   53	65	77	java/lang/SecurityException
    //   6	41	81	finally
    //   53	65	81	finally
  }
  
  /* Error */
  final android.util.Pair<Long, org.json.JSONArray> a(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: new 93	org/json/JSONArray
    //   8: dup
    //   9: invokespecial 94	org/json/JSONArray:<init>	()V
    //   12: astore 8
    //   14: aload_0
    //   15: invokevirtual 43	com/snapchat/android/analytics/framework/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore 9
    //   20: iload_1
    //   21: iflt +125 -> 146
    //   24: iload_1
    //   25: invokestatic 100	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   28: astore 6
    //   30: aload 9
    //   32: ldc 80
    //   34: iconst_2
    //   35: anewarray 96	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: ldc 102
    //   42: aastore
    //   43: dup
    //   44: iconst_1
    //   45: ldc 74
    //   47: aastore
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: aconst_null
    //   52: ldc 104
    //   54: aload 6
    //   56: invokevirtual 108	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore 6
    //   61: ldc2_w 64
    //   64: lstore_2
    //   65: aload 6
    //   67: astore 7
    //   69: aload 6
    //   71: invokeinterface 113 1 0
    //   76: ifeq +76 -> 152
    //   79: aload 6
    //   81: astore 7
    //   83: aload 6
    //   85: iconst_0
    //   86: invokeinterface 117 2 0
    //   91: lstore 4
    //   93: aload 6
    //   95: astore 7
    //   97: new 119	org/json/JSONObject
    //   100: dup
    //   101: aload 6
    //   103: iconst_1
    //   104: invokeinterface 122 2 0
    //   109: invokespecial 125	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   112: astore 9
    //   114: aload 6
    //   116: astore 7
    //   118: aload 9
    //   120: ldc 127
    //   122: lload 4
    //   124: invokevirtual 130	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   127: pop
    //   128: aload 6
    //   130: astore 7
    //   132: aload 8
    //   134: aload 9
    //   136: invokevirtual 133	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   139: pop
    //   140: lload 4
    //   142: lstore_2
    //   143: goto -78 -> 65
    //   146: aconst_null
    //   147: astore 6
    //   149: goto -119 -> 30
    //   152: aload 6
    //   154: ifnull +10 -> 164
    //   157: aload 6
    //   159: invokeinterface 134 1 0
    //   164: aload_0
    //   165: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   168: new 136	android/util/Pair
    //   171: dup
    //   172: lload_2
    //   173: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   176: aload 8
    //   178: invokespecial 144	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   181: astore 6
    //   183: aload_0
    //   184: monitorexit
    //   185: aload 6
    //   187: areturn
    //   188: astore 7
    //   190: aconst_null
    //   191: astore 6
    //   193: ldc2_w 64
    //   196: lstore_2
    //   197: aload 6
    //   199: ifnull +10 -> 209
    //   202: aload 6
    //   204: invokeinterface 134 1 0
    //   209: aload_0
    //   210: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   213: goto -45 -> 168
    //   216: astore 6
    //   218: aload_0
    //   219: monitorexit
    //   220: aload 6
    //   222: athrow
    //   223: astore 6
    //   225: aload 7
    //   227: ifnull +10 -> 237
    //   230: aload 7
    //   232: invokeinterface 134 1 0
    //   237: aload_0
    //   238: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   241: aload 6
    //   243: athrow
    //   244: astore 6
    //   246: goto -21 -> 225
    //   249: astore 7
    //   251: goto -54 -> 197
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	DatabaseHelper
    //   0	254	1	paramInt	int
    //   64	133	2	l1	long
    //   91	50	4	l2	long
    //   28	175	6	localObject1	Object
    //   216	5	6	localObject2	Object
    //   223	19	6	localObject3	Object
    //   244	1	6	localObject4	Object
    //   1	130	7	localObject5	Object
    //   188	43	7	localSQLiteException1	android.database.sqlite.SQLiteException
    //   249	1	7	localSQLiteException2	android.database.sqlite.SQLiteException
    //   12	165	8	localJSONArray	org.json.JSONArray
    //   18	117	9	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   14	20	188	android/database/sqlite/SQLiteException
    //   24	30	188	android/database/sqlite/SQLiteException
    //   30	61	188	android/database/sqlite/SQLiteException
    //   5	14	216	finally
    //   157	164	216	finally
    //   164	168	216	finally
    //   168	183	216	finally
    //   202	209	216	finally
    //   209	213	216	finally
    //   230	237	216	finally
    //   237	244	216	finally
    //   14	20	223	finally
    //   24	30	223	finally
    //   30	61	223	finally
    //   69	79	244	finally
    //   83	93	244	finally
    //   97	114	244	finally
    //   118	128	244	finally
    //   132	140	244	finally
    //   69	79	249	android/database/sqlite/SQLiteException
    //   83	93	249	android/database/sqlite/SQLiteException
    //   97	114	249	android/database/sqlite/SQLiteException
    //   118	128	249	android/database/sqlite/SQLiteException
    //   132	140	249	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  final void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 68	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 80
    //   8: new 149	java/lang/StringBuilder
    //   11: dup
    //   12: ldc -105
    //   14: invokespecial 152	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: lload_1
    //   18: invokevirtual 156	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   21: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: aconst_null
    //   25: invokevirtual 163	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: aload_0
    //   30: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_3
    //   37: aload_0
    //   38: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   41: goto -8 -> 33
    //   44: astore_3
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_3
    //   48: athrow
    //   49: astore_3
    //   50: aload_0
    //   51: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   54: aload_3
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	DatabaseHelper
    //   0	56	1	paramLong	long
    //   36	1	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   44	4	3	localObject1	Object
    //   49	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	36	android/database/sqlite/SQLiteException
    //   29	33	44	finally
    //   37	41	44	finally
    //   50	56	44	finally
    //   2	29	49	finally
  }
  
  /* Error */
  final long b()
  {
    // Byte code:
    //   0: ldc2_w 64
    //   3: lstore_1
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: invokevirtual 43	com/snapchat/android/analytics/framework/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: ldc -89
    //   12: invokevirtual 51	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   15: astore 5
    //   17: aload 5
    //   19: invokevirtual 56	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   22: lstore_3
    //   23: lload_3
    //   24: lstore_1
    //   25: aload_0
    //   26: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   29: aload_0
    //   30: monitorexit
    //   31: lload_1
    //   32: lreturn
    //   33: astore 5
    //   35: aload 5
    //   37: invokevirtual 170	android/database/sqlite/SQLiteDoneException:getMessage	()Ljava/lang/String;
    //   40: pop
    //   41: goto -16 -> 25
    //   44: astore 5
    //   46: aload_0
    //   47: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   50: goto -21 -> 29
    //   53: astore 5
    //   55: aload_0
    //   56: monitorexit
    //   57: aload 5
    //   59: athrow
    //   60: astore 5
    //   62: aload_0
    //   63: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   66: aload 5
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	DatabaseHelper
    //   3	29	1	l1	long
    //   22	2	3	l2	long
    //   15	3	5	localSQLiteStatement	android.database.sqlite.SQLiteStatement
    //   33	3	5	localSQLiteDoneException	android.database.sqlite.SQLiteDoneException
    //   44	1	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   53	5	5	localObject1	Object
    //   60	7	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   17	23	33	android/database/sqlite/SQLiteDoneException
    //   6	17	44	android/database/sqlite/SQLiteException
    //   17	23	44	android/database/sqlite/SQLiteException
    //   35	41	44	android/database/sqlite/SQLiteException
    //   25	29	53	finally
    //   46	50	53	finally
    //   62	69	53	finally
    //   6	17	60	finally
    //   17	23	60	finally
    //   35	41	60	finally
  }
  
  /* Error */
  final void b(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 68	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 80
    //   8: new 149	java/lang/StringBuilder
    //   11: dup
    //   12: ldc -84
    //   14: invokespecial 152	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: lload_1
    //   18: invokevirtual 156	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   21: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: aconst_null
    //   25: invokevirtual 163	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: aload_0
    //   30: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_3
    //   37: aload_0
    //   38: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   41: goto -8 -> 33
    //   44: astore_3
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_3
    //   48: athrow
    //   49: astore_3
    //   50: aload_0
    //   51: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   54: aload_3
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	DatabaseHelper
    //   0	56	1	paramLong	long
    //   36	1	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   44	4	3	localObject1	Object
    //   49	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	36	android/database/sqlite/SQLiteException
    //   29	33	44	finally
    //   37	41	44	finally
    //   50	56	44	finally
    //   2	29	49	finally
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.DatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */