package com.snapchat.android.discover.model.database.table;

import aav;
import abc;
import aef;
import aef.c;
import aej;
import akp;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import chc;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.table.DbTable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.TextUtils;

public final class EditionViewStateTable
  extends DbTable<aef.c>
{
  public static final String[] a;
  public static final HashMap<String, String> b;
  private static final EditionViewStateTable d = new EditionViewStateTable();
  public final aef c;
  
  static
  {
    EditionViewStateSchema[] arrayOfEditionViewStateSchema = EditionViewStateSchema.values();
    int j = arrayOfEditionViewStateSchema.length;
    a = new String[j];
    b = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      EditionViewStateSchema localEditionViewStateSchema = arrayOfEditionViewStateSchema[i];
      a[i] = arrayOfEditionViewStateSchema[i].getColumnName();
      b.put(localEditionViewStateSchema.getColumnName(), localEditionViewStateSchema.getColumnName());
      i += 1;
    }
  }
  
  protected EditionViewStateTable()
  {
    this(aef.a());
  }
  
  private EditionViewStateTable(aef paramaef)
  {
    c = paramaef;
  }
  
  public static ContentValues a(@chc aef.c paramc)
  {
    return abcaIDa).a(EditionViewStateSchema.LAST_INDEX_VIEWED, b).a(EditionViewStateSchema.VIEWED_ALL_DSNAPS, c).a;
  }
  
  public static EditionViewStateTable a()
  {
    return d;
  }
  
  /* Error */
  private static List<aef.c> a(@chc SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: new 102	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 103	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: ldc 105
    //   11: getstatic 32	com/snapchat/android/discover/model/database/table/EditionViewStateTable:a	[Ljava/lang/String;
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: invokevirtual 111	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore_0
    //   23: aload_0
    //   24: ifnull +107 -> 131
    //   27: aload_0
    //   28: invokeinterface 117 1 0
    //   33: ifeq +98 -> 131
    //   36: aload_0
    //   37: getstatic 68	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:ID	Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    //   40: invokevirtual 121	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:getColumnNumber	()I
    //   43: invokeinterface 125 2 0
    //   48: astore 4
    //   50: aload_0
    //   51: getstatic 79	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:LAST_INDEX_VIEWED	Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    //   54: invokevirtual 121	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:getColumnNumber	()I
    //   57: invokeinterface 129 2 0
    //   62: istore_1
    //   63: aload_0
    //   64: getstatic 88	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:VIEWED_ALL_DSNAPS	Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    //   67: invokevirtual 121	com/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema:getColumnNumber	()I
    //   70: invokeinterface 129 2 0
    //   75: ifeq +68 -> 143
    //   78: iconst_1
    //   79: istore_2
    //   80: new 131	aef$c$a
    //   83: dup
    //   84: invokespecial 132	aef$c$a:<init>	()V
    //   87: astore 5
    //   89: aload 5
    //   91: aload 4
    //   93: putfield 133	aef$c$a:a	Ljava/lang/String;
    //   96: aload 5
    //   98: iload_1
    //   99: putfield 134	aef$c$a:b	I
    //   102: aload 5
    //   104: iload_2
    //   105: putfield 135	aef$c$a:c	Z
    //   108: aload_3
    //   109: aload 5
    //   111: invokevirtual 138	aef$c$a:a	()Laef$c;
    //   114: invokeinterface 144 2 0
    //   119: pop
    //   120: aload_0
    //   121: invokeinterface 147 1 0
    //   126: istore_2
    //   127: iload_2
    //   128: ifne -92 -> 36
    //   131: aload_0
    //   132: ifnull +9 -> 141
    //   135: aload_0
    //   136: invokeinterface 150 1 0
    //   141: aload_3
    //   142: areturn
    //   143: iconst_0
    //   144: istore_2
    //   145: goto -65 -> 80
    //   148: astore_3
    //   149: aload_0
    //   150: ifnull +9 -> 159
    //   153: aload_0
    //   154: invokeinterface 150 1 0
    //   159: aload_3
    //   160: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	paramSQLiteDatabase	SQLiteDatabase
    //   62	37	1	i	int
    //   79	66	2	bool	boolean
    //   7	135	3	localArrayList	java.util.ArrayList
    //   148	12	3	localObject	Object
    //   48	44	4	str	String
    //   87	23	5	locala	aef.c.a
    // Exception table:
    //   from	to	target	type
    //   27	36	148	finally
    //   36	78	148	finally
    //   80	127	148	finally
  }
  
  protected final Collection<aef.c> a(akp paramakp)
  {
    return null;
  }
  
  public final void b(akp paramakp)
  {
    paramakp = DatabaseHelper.a(akp.y()).getReadableDatabase();
    paramakp.beginTransaction();
    try
    {
      Object localObject2 = a(paramakp);
      aef localaef = c;
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        aef.c localc = (aef.c)((Iterator)localObject2).next();
        localaef.a(a, b);
        localaef.a(a, c);
      }
      a.c();
    }
    finally
    {
      paramakp.endTransaction();
    }
    paramakp.endTransaction();
  }
  
  public final aav[] b()
  {
    return EditionViewStateSchema.values();
  }
  
  public final String c()
  {
    return "EditionViewState";
  }
  
  public final void c(akp paramakp) {}
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    EditionViewStateSchema[] arrayOfEditionViewStateSchema = EditionViewStateSchema.values();
    int j = arrayOfEditionViewStateSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfEditionViewStateSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(EditionViewStateSchema.a((EditionViewStateSchema)localObject) + " " + EditionViewStateSchema.b((EditionViewStateSchema)localObject).toString());
      localObject = ((EditionViewStateSchema)localObject).getConstraints();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append((String)localObject);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static enum EditionViewStateSchema
    implements aav
  {
    ID(DataType.TEXT, "PRIMARY KEY"),  LAST_INDEX_VIEWED("last_index_viewed", DataType.INTEGER),  VIEWED_ALL_DSNAPS("viewed_all_dsnaps", DataType.BOOLEAN);
    
    private String a;
    private DataType b;
    private String c;
    
    private EditionViewStateSchema(String paramString, DataType paramDataType)
    {
      a = paramString;
      b = paramDataType;
    }
    
    private EditionViewStateSchema(String paramString1, String paramString2)
    {
      this(???, paramString1);
      c = paramString2;
    }
    
    public final String getColumnName()
    {
      return a;
    }
    
    public final int getColumnNumber()
    {
      return ordinal();
    }
    
    public final String getConstraints()
    {
      return c;
    }
    
    public final DataType getDataType()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.database.table.EditionViewStateTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */