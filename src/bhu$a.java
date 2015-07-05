import java.util.HashMap;

public enum bhu$a
{
  private static final HashMap<Integer, a> VALUE_TO_ENUM;
  private final int intValue;
  
  static
  {
    int i = 0;
    FRIEND = new a("FRIEND", 0, 0);
    PENDING = new a("PENDING", 1, 1);
    BLOCKED = new a("BLOCKED", 2, 2);
    DELETED = new a("DELETED", 3, 3);
    INVITE_PLACEHOLDER = new a("INVITE_PLACEHOLDER", 4, 4);
    LOCKED_PLACEHOLDER = new a("LOCKED_PLACEHOLDER", 5, 5);
    FOLLOWING = new a("FOLLOWING", 6, 6);
    UNRECOGNIZED_VALUE = new a("UNRECOGNIZED_VALUE", 7, 55537);
    $VALUES = new a[] { FRIEND, PENDING, BLOCKED, DELETED, INVITE_PLACEHOLDER, LOCKED_PLACEHOLDER, FOLLOWING, UNRECOGNIZED_VALUE };
    VALUE_TO_ENUM = new HashMap();
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    while (i < j)
    {
      a locala = arrayOfa[i];
      VALUE_TO_ENUM.put(Integer.valueOf(intValue), locala);
      i += 1;
    }
  }
  
  private bhu$a(int paramInt)
  {
    intValue = paramInt;
  }
  
  public static a a(Integer paramInteger)
  {
    a locala = (a)VALUE_TO_ENUM.get(paramInteger);
    paramInteger = locala;
    if (locala == null) {
      paramInteger = UNRECOGNIZED_VALUE;
    }
    return paramInteger;
  }
}

/* Location:
 * Qualified Name:     bhu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */