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
    //   29: ldc 62
    //   31: ldc 64
    //   33: iconst_1
    //   34: anewarray 66	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload 5
    //   41: aastore
    //   42: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   45: aload_0
    //   46: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   49: goto -26 -> 23
    //   52: astore 5
    //   54: aload_0
    //   55: monitorexit
    //   56: aload 5
    //   58: athrow
    //   59: astore 5
    //   61: aload_0
    //   62: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   65: aload 5
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	DatabaseHelper
    //   3	23	1	l1	long
    //   16	2	3	l2	long
    //   27	13	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   52	5	5	localObject1	Object
    //   59	7	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	17	27	android/database/sqlite/SQLiteException
    //   19	23	52	finally
    //   45	49	52	finally
    //   61	68	52	finally
    //   4	17	59	finally
    //   29	45	59	finally
  }
  
  /* Error */
  final long a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 78	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore 4
    //   8: new 80	android/content/ContentValues
    //   11: dup
    //   12: invokespecial 82	android/content/ContentValues:<init>	()V
    //   15: astore 5
    //   17: aload 5
    //   19: ldc 84
    //   21: aload_1
    //   22: invokevirtual 88	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aload 4
    //   27: ldc 90
    //   29: aconst_null
    //   30: aload 5
    //   32: invokevirtual 94	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   35: lstore_2
    //   36: lload_2
    //   37: ldc2_w 95
    //   40: lcmp
    //   41: ifne +14 -> 55
    //   44: ldc 62
    //   46: ldc 98
    //   48: iconst_0
    //   49: anewarray 66	java/lang/Object
    //   52: invokestatic 101	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   55: aload_0
    //   56: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   59: aload_0
    //   60: monitorexit
    //   61: lload_2
    //   62: lreturn
    //   63: astore_1
    //   64: ldc2_w 95
    //   67: lstore_2
    //   68: ldc 62
    //   70: ldc 103
    //   72: iconst_1
    //   73: anewarray 66	java/lang/Object
    //   76: dup
    //   77: iconst_0
    //   78: aload_1
    //   79: aastore
    //   80: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   83: aload_0
    //   84: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   87: aload_0
    //   88: getfield 26	com/snapchat/android/analytics/framework/DatabaseHelper:b	Ljava/io/File;
    //   91: invokevirtual 109	java/io/File:delete	()Z
    //   94: pop
    //   95: aload_0
    //   96: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   99: goto -40 -> 59
    //   102: astore_1
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    //   107: astore_1
    //   108: ldc 62
    //   110: ldc 111
    //   112: iconst_1
    //   113: anewarray 66	java/lang/Object
    //   116: dup
    //   117: iconst_0
    //   118: aload_1
    //   119: aastore
    //   120: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   123: goto -28 -> 95
    //   126: astore_1
    //   127: aload_0
    //   128: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   131: aload_1
    //   132: athrow
    //   133: astore_1
    //   134: goto -66 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	DatabaseHelper
    //   0	137	1	paramString	String
    //   35	33	2	l	long
    //   6	20	4	localSQLiteDatabase	SQLiteDatabase
    //   15	16	5	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   2	36	63	android/database/sqlite/SQLiteException
    //   55	59	102	finally
    //   95	99	102	finally
    //   127	133	102	finally
    //   83	95	107	java/lang/SecurityException
    //   2	36	126	finally
    //   44	55	126	finally
    //   68	83	126	finally
    //   83	95	126	finally
    //   108	123	126	finally
    //   44	55	133	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  final android.util.Pair<Long, org.json.JSONArray> a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 114	org/json/JSONArray
    //   5: dup
    //   6: invokespecial 115	org/json/JSONArray:<init>	()V
    //   9: astore 9
    //   11: aload_0
    //   12: invokevirtual 43	com/snapchat/android/analytics/framework/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 7
    //   17: iload_1
    //   18: iflt +125 -> 143
    //   21: iload_1
    //   22: invokestatic 121	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   25: astore 6
    //   27: aload 7
    //   29: ldc 90
    //   31: iconst_2
    //   32: anewarray 117	java/lang/String
    //   35: dup
    //   36: iconst_0
    //   37: ldc 123
    //   39: aastore
    //   40: dup
    //   41: iconst_1
    //   42: ldc 84
    //   44: aastore
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: ldc 125
    //   51: aload 6
    //   53: invokevirtual 129	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   56: astore 7
    //   58: ldc2_w 95
    //   61: lstore_2
    //   62: aload 7
    //   64: astore 6
    //   66: aload 7
    //   68: invokeinterface 134 1 0
    //   73: ifeq +76 -> 149
    //   76: aload 7
    //   78: astore 6
    //   80: aload 7
    //   82: iconst_0
    //   83: invokeinterface 138 2 0
    //   88: lstore 4
    //   90: aload 7
    //   92: astore 6
    //   94: new 140	org/json/JSONObject
    //   97: dup
    //   98: aload 7
    //   100: iconst_1
    //   101: invokeinterface 143 2 0
    //   106: invokespecial 146	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   109: astore 8
    //   111: aload 7
    //   113: astore 6
    //   115: aload 8
    //   117: ldc -108
    //   119: lload 4
    //   121: invokevirtual 151	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   124: pop
    //   125: aload 7
    //   127: astore 6
    //   129: aload 9
    //   131: aload 8
    //   133: invokevirtual 154	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   136: pop
    //   137: lload 4
    //   139: lstore_2
    //   140: goto -78 -> 62
    //   143: aconst_null
    //   144: astore 6
    //   146: goto -119 -> 27
    //   149: aload 7
    //   151: ifnull +10 -> 161
    //   154: aload 7
    //   156: invokeinterface 155 1 0
    //   161: aload_0
    //   162: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   165: new 157	android/util/Pair
    //   168: dup
    //   169: lload_2
    //   170: invokestatic 162	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   173: aload 9
    //   175: invokespecial 165	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   178: astore 6
    //   180: aload_0
    //   181: monitorexit
    //   182: aload 6
    //   184: areturn
    //   185: astore 8
    //   187: aconst_null
    //   188: astore 7
    //   190: ldc2_w 95
    //   193: lstore_2
    //   194: aload 7
    //   196: astore 6
    //   198: ldc 62
    //   200: ldc -89
    //   202: iconst_1
    //   203: anewarray 66	java/lang/Object
    //   206: dup
    //   207: iconst_0
    //   208: aload 8
    //   210: aastore
    //   211: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   214: aload 7
    //   216: ifnull +10 -> 226
    //   219: aload 7
    //   221: invokeinterface 155 1 0
    //   226: aload_0
    //   227: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   230: goto -65 -> 165
    //   233: astore 6
    //   235: aload_0
    //   236: monitorexit
    //   237: aload 6
    //   239: athrow
    //   240: astore 7
    //   242: aconst_null
    //   243: astore 6
    //   245: aload 6
    //   247: ifnull +10 -> 257
    //   250: aload 6
    //   252: invokeinterface 155 1 0
    //   257: aload_0
    //   258: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   261: aload 7
    //   263: athrow
    //   264: astore 7
    //   266: goto -21 -> 245
    //   269: astore 8
    //   271: goto -77 -> 194
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	274	0	this	DatabaseHelper
    //   0	274	1	paramInt	int
    //   61	133	2	l1	long
    //   88	50	4	l2	long
    //   25	172	6	localObject1	Object
    //   233	5	6	localObject2	Object
    //   243	8	6	localObject3	Object
    //   15	205	7	localObject4	Object
    //   240	22	7	localObject5	Object
    //   264	1	7	localObject6	Object
    //   109	23	8	localJSONObject	org.json.JSONObject
    //   185	24	8	localSQLiteException1	android.database.sqlite.SQLiteException
    //   269	1	8	localSQLiteException2	android.database.sqlite.SQLiteException
    //   9	165	9	localJSONArray	org.json.JSONArray
    // Exception table:
    //   from	to	target	type
    //   11	17	185	android/database/sqlite/SQLiteException
    //   21	27	185	android/database/sqlite/SQLiteException
    //   27	58	185	android/database/sqlite/SQLiteException
    //   2	11	233	finally
    //   154	161	233	finally
    //   161	165	233	finally
    //   165	180	233	finally
    //   219	226	233	finally
    //   226	230	233	finally
    //   250	257	233	finally
    //   257	264	233	finally
    //   11	17	240	finally
    //   21	27	240	finally
    //   27	58	240	finally
    //   66	76	264	finally
    //   80	90	264	finally
    //   94	111	264	finally
    //   115	125	264	finally
    //   129	137	264	finally
    //   198	214	264	finally
    //   66	76	269	android/database/sqlite/SQLiteException
    //   80	90	269	android/database/sqlite/SQLiteException
    //   94	111	269	android/database/sqlite/SQLiteException
    //   115	125	269	android/database/sqlite/SQLiteException
    //   129	137	269	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  final void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 78	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 90
    //   8: new 172	java/lang/StringBuilder
    //   11: dup
    //   12: ldc -82
    //   14: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: lload_1
    //   18: invokevirtual 179	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   21: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: aconst_null
    //   25: invokevirtual 186	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: aload_0
    //   30: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_3
    //   37: ldc 62
    //   39: ldc -68
    //   41: iconst_1
    //   42: anewarray 66	java/lang/Object
    //   45: dup
    //   46: iconst_0
    //   47: aload_3
    //   48: aastore
    //   49: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   52: aload_0
    //   53: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   56: goto -23 -> 33
    //   59: astore_3
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_3
    //   63: athrow
    //   64: astore_3
    //   65: aload_0
    //   66: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   69: aload_3
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	DatabaseHelper
    //   0	71	1	paramLong	long
    //   36	12	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   59	4	3	localObject1	Object
    //   64	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	36	android/database/sqlite/SQLiteException
    //   29	33	59	finally
    //   52	56	59	finally
    //   65	71	59	finally
    //   2	29	64	finally
    //   37	52	64	finally
  }
  
  /* Error */
  final long b()
  {
    // Byte code:
    //   0: ldc2_w 95
    //   3: lstore_1
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: invokevirtual 43	com/snapchat/android/analytics/framework/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: ldc -64
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
    //   35: ldc 62
    //   37: aload 5
    //   39: invokevirtual 195	android/database/sqlite/SQLiteDoneException:getMessage	()Ljava/lang/String;
    //   42: iconst_0
    //   43: anewarray 66	java/lang/Object
    //   46: invokestatic 101	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   49: goto -24 -> 25
    //   52: astore 5
    //   54: ldc 62
    //   56: ldc -59
    //   58: iconst_1
    //   59: anewarray 66	java/lang/Object
    //   62: dup
    //   63: iconst_0
    //   64: aload 5
    //   66: aastore
    //   67: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   70: aload_0
    //   71: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   74: goto -45 -> 29
    //   77: astore 5
    //   79: aload_0
    //   80: monitorexit
    //   81: aload 5
    //   83: athrow
    //   84: astore 5
    //   86: aload_0
    //   87: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   90: aload 5
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	DatabaseHelper
    //   3	29	1	l1	long
    //   22	2	3	l2	long
    //   15	3	5	localSQLiteStatement	android.database.sqlite.SQLiteStatement
    //   33	5	5	localSQLiteDoneException	android.database.sqlite.SQLiteDoneException
    //   52	13	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   77	5	5	localObject1	Object
    //   84	7	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   17	23	33	android/database/sqlite/SQLiteDoneException
    //   6	17	52	android/database/sqlite/SQLiteException
    //   17	23	52	android/database/sqlite/SQLiteException
    //   35	49	52	android/database/sqlite/SQLiteException
    //   25	29	77	finally
    //   70	74	77	finally
    //   86	93	77	finally
    //   6	17	84	finally
    //   17	23	84	finally
    //   35	49	84	finally
    //   54	70	84	finally
  }
  
  /* Error */
  final void b(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 78	com/snapchat/android/analytics/framework/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 90
    //   8: new 172	java/lang/StringBuilder
    //   11: dup
    //   12: ldc -57
    //   14: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: lload_1
    //   18: invokevirtual 179	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   21: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: aconst_null
    //   25: invokevirtual 186	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: aload_0
    //   30: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_3
    //   37: ldc 62
    //   39: ldc -55
    //   41: iconst_1
    //   42: anewarray 66	java/lang/Object
    //   45: dup
    //   46: iconst_0
    //   47: aload_3
    //   48: aastore
    //   49: invokestatic 72	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   52: aload_0
    //   53: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   56: goto -23 -> 33
    //   59: astore_3
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_3
    //   63: athrow
    //   64: astore_3
    //   65: aload_0
    //   66: invokevirtual 60	com/snapchat/android/analytics/framework/DatabaseHelper:close	()V
    //   69: aload_3
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	DatabaseHelper
    //   0	71	1	paramLong	long
    //   36	12	3	localSQLiteException	android.database.sqlite.SQLiteException
    //   59	4	3	localObject1	Object
    //   64	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	36	android/database/sqlite/SQLiteException
    //   29	33	59	finally
    //   52	56	59	finally
    //   65	71	59	finally
    //   2	29	64	finally
    //   37	52	64	finally
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