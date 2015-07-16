import com.snapchat.android.database.DataType;

 enum abm$a
  implements aav
{
  private int c;
  private String d;
  private DataType e;
  
  private abm$a(int paramInt, String paramString, DataType paramDataType)
  {
    c = paramInt;
    d = paramString;
    e = paramDataType;
  }
  
  public final String getColumnName()
  {
    return d;
  }
  
  public final int getColumnNumber()
  {
    return c;
  }
  
  public final String getConstraints()
  {
    return null;
  }
  
  public final DataType getDataType()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     abm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */