public final class aau
{
  public static String a(String paramString1, aav paramaav1, String paramString2, aav paramaav2)
  {
    return " DELETE FROM " + paramString1 + " WHERE " + a(paramString1, paramaav1) + " IN  (  SELECT " + a(paramString1, paramaav1) + " FROM " + paramString1 + " LEFT JOIN " + paramString2 + " ON " + a(paramString1, paramaav1) + " = " + a(paramString2, paramaav2) + " WHERE " + a(paramString2, paramaav2) + " IS NULL  ) ";
  }
  
  public static StringBuilder a(String paramString, aav paramaav)
  {
    return new StringBuilder().append(paramString).append('.').append(paramaav.getColumnName());
  }
}

/* Location:
 * Qualified Name:     aau
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */