public final class zv
{
  public static String a(String paramString1, zw paramzw1, String paramString2, zw paramzw2)
  {
    return " DELETE FROM " + paramString1 + " WHERE " + a(paramString1, paramzw1) + " IN  (  SELECT " + a(paramString1, paramzw1) + " FROM " + paramString1 + " LEFT JOIN " + paramString2 + " ON " + a(paramString1, paramzw1) + " = " + a(paramString2, paramzw2) + " WHERE " + a(paramString2, paramzw2) + " IS NULL  ) ";
  }
  
  public static StringBuilder a(String paramString, zw paramzw)
  {
    return new StringBuilder().append(paramString).append('.').append(paramzw.getColumnName());
  }
}

/* Location:
 * Qualified Name:     zv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */