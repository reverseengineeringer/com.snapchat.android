public final class aej$13
  implements Runnable
{
  public aej$13(aej paramaej, String paramString, aej.b[] paramArrayOfb) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	aej$13:c	Laej;
    //   4: astore 8
    //   6: aload_0
    //   7: getfield 20	aej$13:a	Ljava/lang/String;
    //   10: astore 5
    //   12: aload_0
    //   13: getfield 22	aej$13:b	[Laej$b;
    //   16: astore 6
    //   18: aload 6
    //   20: arraylength
    //   21: ifeq +17 -> 38
    //   24: invokestatic 37	akr:m	()Z
    //   27: ifeq +11 -> 38
    //   30: aload 8
    //   32: getfield 41	aej:k	Z
    //   35: ifne +4 -> 39
    //   38: return
    //   39: invokestatic 47	android/os/SystemClock:currentThreadTimeMillis	()J
    //   42: pop2
    //   43: new 49	java/util/LinkedList
    //   46: dup
    //   47: invokespecial 50	java/util/LinkedList:<init>	()V
    //   50: astore 7
    //   52: aconst_null
    //   53: astore 4
    //   55: aload 8
    //   57: getfield 54	aej:j	Landroid/content/ContentResolver;
    //   60: astore 9
    //   62: getstatic 59	com/snapchat/android/content/SnapchatProvider:c	Landroid/net/Uri;
    //   65: astore 10
    //   67: getstatic 64	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable:a	[Ljava/lang/String;
    //   70: astore 11
    //   72: new 66	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   79: getstatic 73	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:EDITION_ID	Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
    //   82: invokevirtual 77	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:getColumnName	()Ljava/lang/String;
    //   85: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc 83
    //   90: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: astore 12
    //   98: new 66	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   105: getstatic 89	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:POSITION	Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
    //   108: invokevirtual 77	com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema:getColumnName	()Ljava/lang/String;
    //   111: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc 91
    //   116: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: astore 13
    //   124: aload 9
    //   126: aload 10
    //   128: aload 11
    //   130: aload 12
    //   132: iconst_1
    //   133: anewarray 93	java/lang/String
    //   136: dup
    //   137: iconst_0
    //   138: aload 5
    //   140: aastore
    //   141: aload 13
    //   143: invokevirtual 99	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   146: astore 5
    //   148: aload 5
    //   150: astore 4
    //   152: invokestatic 47	android/os/SystemClock:currentThreadTimeMillis	()J
    //   155: pop2
    //   156: aload 4
    //   158: ifnull +49 -> 207
    //   161: aload 4
    //   163: invokeinterface 104 1 0
    //   168: ifeq +39 -> 207
    //   171: aload 8
    //   173: aload 4
    //   175: invokevirtual 107	aej:a	(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;
    //   178: astore 5
    //   180: aload 5
    //   182: ifnull +13 -> 195
    //   185: aload 7
    //   187: aload 5
    //   189: invokeinterface 113 2 0
    //   194: pop
    //   195: aload 4
    //   197: invokeinterface 116 1 0
    //   202: istore_3
    //   203: iload_3
    //   204: ifne -33 -> 171
    //   207: aload 4
    //   209: invokestatic 121	bgo:a	(Landroid/database/Cursor;)V
    //   212: aload 6
    //   214: arraylength
    //   215: istore_2
    //   216: iconst_0
    //   217: istore_1
    //   218: iload_1
    //   219: iload_2
    //   220: if_icmpge +44 -> 264
    //   223: aload 6
    //   225: iload_1
    //   226: aaload
    //   227: aload 7
    //   229: invokeinterface 126 2 0
    //   234: iload_1
    //   235: iconst_1
    //   236: iadd
    //   237: istore_1
    //   238: goto -20 -> 218
    //   241: astore 4
    //   243: aconst_null
    //   244: astore 4
    //   246: aload 4
    //   248: invokestatic 121	bgo:a	(Landroid/database/Cursor;)V
    //   251: goto -39 -> 212
    //   254: astore 5
    //   256: aload 4
    //   258: invokestatic 121	bgo:a	(Landroid/database/Cursor;)V
    //   261: aload 5
    //   263: athrow
    //   264: invokestatic 47	android/os/SystemClock:currentThreadTimeMillis	()J
    //   267: pop2
    //   268: return
    //   269: astore 5
    //   271: goto -15 -> 256
    //   274: astore 5
    //   276: goto -30 -> 246
    //   279: astore 4
    //   281: aconst_null
    //   282: astore 4
    //   284: goto -38 -> 246
    //   287: astore 5
    //   289: goto -43 -> 246
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	13
    //   217	21	1	i	int
    //   215	6	2	j	int
    //   202	2	3	bool	boolean
    //   53	155	4	localObject1	Object
    //   241	1	4	localSQLiteException1	android.database.sqlite.SQLiteException
    //   244	13	4	localCursor	android.database.Cursor
    //   279	1	4	localIllegalArgumentException1	IllegalArgumentException
    //   282	1	4	localObject2	Object
    //   10	178	5	localObject3	Object
    //   254	8	5	localObject4	Object
    //   269	1	5	localObject5	Object
    //   274	1	5	localSQLiteException2	android.database.sqlite.SQLiteException
    //   287	1	5	localIllegalArgumentException2	IllegalArgumentException
    //   16	208	6	arrayOfb	aej.b[]
    //   50	178	7	localLinkedList	java.util.LinkedList
    //   4	168	8	localaej	aej
    //   60	65	9	localContentResolver	android.content.ContentResolver
    //   65	62	10	localUri	android.net.Uri
    //   70	59	11	arrayOfString	String[]
    //   96	35	12	str1	String
    //   122	20	13	str2	String
    // Exception table:
    //   from	to	target	type
    //   55	148	241	android/database/sqlite/SQLiteException
    //   55	148	254	finally
    //   152	156	269	finally
    //   161	171	269	finally
    //   171	180	269	finally
    //   185	195	269	finally
    //   195	203	269	finally
    //   152	156	274	android/database/sqlite/SQLiteException
    //   161	171	274	android/database/sqlite/SQLiteException
    //   171	180	274	android/database/sqlite/SQLiteException
    //   185	195	274	android/database/sqlite/SQLiteException
    //   195	203	274	android/database/sqlite/SQLiteException
    //   55	148	279	java/lang/IllegalArgumentException
    //   152	156	287	java/lang/IllegalArgumentException
    //   161	171	287	java/lang/IllegalArgumentException
    //   171	180	287	java/lang/IllegalArgumentException
    //   185	195	287	java/lang/IllegalArgumentException
    //   195	203	287	java/lang/IllegalArgumentException
  }
}

/* Location:
 * Qualified Name:     aej.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */