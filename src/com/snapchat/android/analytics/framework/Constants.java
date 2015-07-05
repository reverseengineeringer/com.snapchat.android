package com.snapchat.android.analytics.framework;

class Constants
{
  public static final String a;
  public static final String b;
  public static final String c = a;
  public static final String d = a + ".startSessionTs";
  public static final String e = a + ".endSessionTs";
  public static final String f = a + ".previousEndSessionId";
  public static final String g = a + ".sessionId";
  public static final String h = a + ".timeActive";
  public static final String i = a + ".seqNum";
  public static final String j = a + ".rejectedEventCount";
  public static final String k = a + ".overflowedEventCount";
  public static final String l = a + ".firstFailureTs";
  
  static
  {
    String str = Constants.class.getPackage().getName();
    a = str;
    b = str;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.Constants
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */