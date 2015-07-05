package org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Rule
{
  public static final String ALL = "ALL";
  public static final RPattern ALL_STRINGS_RMATCHER = new RPattern()
  {
    public final boolean isMatch(CharSequence paramAnonymousCharSequence)
    {
      return true;
    }
  };
  private static final String DOUBLE_QUOTE = "\"";
  private static final String HASH_INCLUDE = "#include";
  private static final Map<NameType, Map<RuleType, Map<String, List<Rule>>>> RULES = new EnumMap(NameType.class);
  private final RPattern lContext;
  private final String pattern;
  private final PhonemeExpr phoneme;
  private final RPattern rContext;
  
  static
  {
    NameType[] arrayOfNameType = NameType.values();
    int k = arrayOfNameType.length;
    int i = 0;
    while (i < k)
    {
      NameType localNameType = arrayOfNameType[i];
      EnumMap localEnumMap = new EnumMap(RuleType.class);
      RuleType[] arrayOfRuleType = RuleType.values();
      int m = arrayOfRuleType.length;
      int j = 0;
      while (j < m)
      {
        RuleType localRuleType = arrayOfRuleType[j];
        HashMap localHashMap = new HashMap();
        Iterator localIterator = Languages.getInstance(localNameType).getLanguages().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          try
          {
            localHashMap.put(str, parseRules(createScanner(localNameType, localRuleType, str), createResourceName(localNameType, localRuleType, str)));
          }
          catch (IllegalStateException localIllegalStateException)
          {
            throw new IllegalStateException("Problem processing " + createResourceName(localNameType, localRuleType, str), localIllegalStateException);
          }
        }
        if (!localRuleType.equals(RuleType.RULES)) {
          localHashMap.put("common", parseRules(createScanner(localNameType, localRuleType, "common"), createResourceName(localNameType, localRuleType, "common")));
        }
        localEnumMap.put(localRuleType, Collections.unmodifiableMap(localHashMap));
        j += 1;
      }
      RULES.put(localNameType, Collections.unmodifiableMap(localEnumMap));
      i += 1;
    }
  }
  
  public Rule(String paramString1, String paramString2, String paramString3, PhonemeExpr paramPhonemeExpr)
  {
    pattern = paramString1;
    lContext = pattern(paramString2 + "$");
    rContext = pattern("^" + paramString3);
    phoneme = paramPhonemeExpr;
  }
  
  private static boolean contains(CharSequence paramCharSequence, char paramChar)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramCharSequence.length())
      {
        if (paramCharSequence.charAt(i) == paramChar) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private static String createResourceName(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    return String.format("org/apache/commons/codec/language/bm/%s_%s_%s.txt", new Object[] { paramNameType.getName(), paramRuleType.getName(), paramString });
  }
  
  private static Scanner createScanner(String paramString)
  {
    paramString = String.format("org/apache/commons/codec/language/bm/%s.txt", new Object[] { paramString });
    InputStream localInputStream = Languages.class.getClassLoader().getResourceAsStream(paramString);
    if (localInputStream == null) {
      throw new IllegalArgumentException("Unable to load resource: " + paramString);
    }
    return new Scanner(localInputStream, "UTF-8");
  }
  
  private static Scanner createScanner(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    paramNameType = createResourceName(paramNameType, paramRuleType, paramString);
    paramRuleType = Languages.class.getClassLoader().getResourceAsStream(paramNameType);
    if (paramRuleType == null) {
      throw new IllegalArgumentException("Unable to load resource: " + paramNameType);
    }
    return new Scanner(paramRuleType, "UTF-8");
  }
  
  private static boolean endsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence2.length() > paramCharSequence1.length()) {
      return false;
    }
    int j = paramCharSequence1.length() - 1;
    int i = paramCharSequence2.length() - 1;
    for (;;)
    {
      if (i < 0) {
        break label67;
      }
      if (paramCharSequence1.charAt(j) != paramCharSequence2.charAt(i)) {
        break;
      }
      j -= 1;
      i -= 1;
    }
    label67:
    return true;
  }
  
  public static List<Rule> getInstance(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    List localList = (List)((Map)((Map)RULES.get(paramNameType)).get(paramRuleType)).get(paramString);
    if (localList == null) {
      throw new IllegalArgumentException(String.format("No rules found for %s, %s, %s.", new Object[] { paramNameType.getName(), paramRuleType.getName(), paramString }));
    }
    return localList;
  }
  
  public static List<Rule> getInstance(NameType paramNameType, RuleType paramRuleType, Languages.LanguageSet paramLanguageSet)
  {
    if (paramLanguageSet.isSingleton()) {
      return getInstance(paramNameType, paramRuleType, paramLanguageSet.getAny());
    }
    return getInstance(paramNameType, paramRuleType, "any");
  }
  
  private static Phoneme parsePhoneme(String paramString)
  {
    int i = paramString.indexOf("[");
    if (i >= 0)
    {
      if (!paramString.endsWith("]")) {
        throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
      }
      return new Phoneme(paramString.substring(0, i), Languages.LanguageSet.from(new HashSet(Arrays.asList(paramString.substring(i + 1, paramString.length() - 1).split("[+]")))));
    }
    return new Phoneme(paramString, Languages.ANY_LANGUAGE);
  }
  
  private static PhonemeExpr parsePhonemeExpr(String paramString)
  {
    if (paramString.startsWith("("))
    {
      if (!paramString.endsWith(")")) {
        throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
      }
      ArrayList localArrayList = new ArrayList();
      paramString = paramString.substring(1, paramString.length() - 1);
      String[] arrayOfString = paramString.split("[|]");
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(parsePhoneme(arrayOfString[i]));
        i += 1;
      }
      if ((paramString.startsWith("|")) || (paramString.endsWith("|"))) {
        localArrayList.add(new Phoneme("", Languages.ANY_LANGUAGE));
      }
      return new PhonemeList(localArrayList);
    }
    return parsePhoneme(paramString);
  }
  
  private static List<Rule> parseRules(Scanner paramScanner, final String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = 0;
    final int k;
    String str;
    while (paramScanner.hasNextLine())
    {
      k = j + 1;
      str = paramScanner.nextLine();
      if (i != 0)
      {
        j = k;
        if (str.endsWith("*/"))
        {
          i = 0;
          j = k;
        }
      }
      else if (str.startsWith("/*"))
      {
        i = 1;
        j = k;
      }
      else
      {
        j = str.indexOf("//");
        if (j < 0) {
          break label371;
        }
      }
    }
    label371:
    for (Object localObject = str.substring(0, j);; localObject = str)
    {
      localObject = ((String)localObject).trim();
      j = k;
      if (((String)localObject).length() == 0) {
        break;
      }
      if (((String)localObject).startsWith("#include"))
      {
        localObject = ((String)localObject).substring(8).trim();
        if (((String)localObject).contains(" "))
        {
          System.err.println("Warining: malformed import statement: " + str);
          j = k;
          break;
        }
        localArrayList.addAll(parseRules(createScanner((String)localObject), paramString + "->" + (String)localObject));
        j = k;
        break;
      }
      localObject = ((String)localObject).split("\\s+");
      if (localObject.length != 4)
      {
        System.err.println("Warning: malformed rule statement split into " + localObject.length + " parts: " + str);
        j = k;
        break;
      }
      try
      {
        localArrayList.add(new Rule(stripQuotes(localObject[0]), stripQuotes(localObject[1]), stripQuotes(localObject[2]), parsePhonemeExpr(stripQuotes(localObject[3])))
        {
          private final String loc = paramString;
          private final int myLine = k;
          
          public final String toString()
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Rule");
            localStringBuilder.append("{line=").append(myLine);
            localStringBuilder.append(", loc='").append(loc).append('\'');
            localStringBuilder.append('}');
            return localStringBuilder.toString();
          }
        });
        j = k;
      }
      catch (IllegalArgumentException paramScanner)
      {
        throw new IllegalStateException("Problem parsing line " + k, paramScanner);
      }
      return localArrayList;
    }
  }
  
  private static RPattern pattern(String paramString)
  {
    final boolean bool1 = true;
    boolean bool2 = paramString.startsWith("^");
    boolean bool3 = paramString.endsWith("$");
    int i;
    if (bool2)
    {
      i = 1;
      if (!bool3) {
        break label87;
      }
    }
    String str;
    label87:
    for (int j = paramString.length() - 1;; j = paramString.length())
    {
      str = paramString.substring(i, j);
      if (str.contains("[")) {
        break label157;
      }
      if ((!bool2) || (!bool3)) {
        break label105;
      }
      if (str.length() != 0) {
        break label95;
      }
      new RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return paramAnonymousCharSequence.length() == 0;
        }
      };
      i = 0;
      break;
    }
    label95:
    new RPattern()
    {
      public final boolean isMatch(CharSequence paramAnonymousCharSequence)
      {
        return paramAnonymousCharSequence.equals(val$content);
      }
    };
    label105:
    if (((bool2) || (bool3)) && (str.length() == 0)) {
      return ALL_STRINGS_RMATCHER;
    }
    if (bool2) {
      new RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return Rule.startsWith(paramAnonymousCharSequence, val$content);
        }
      };
    }
    label157:
    boolean bool4;
    if (bool3)
    {
      new RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return Rule.endsWith(paramAnonymousCharSequence, val$content);
        }
      };
      bool4 = str.startsWith("[");
      boolean bool5 = str.endsWith("]");
      if ((bool4) && (bool5))
      {
        str = str.substring(1, str.length() - 1);
        if (!str.contains("["))
        {
          bool4 = str.startsWith("^");
          if (!bool4) {
            break label307;
          }
          str = str.substring(1);
        }
      }
    }
    label307:
    for (;;)
    {
      if (!bool4) {}
      while ((bool2) && (bool3))
      {
        new RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            return (paramAnonymousCharSequence.length() == 1) && (Rule.contains(val$bContent, paramAnonymousCharSequence.charAt(0)) == bool1);
          }
        };
        bool1 = false;
      }
      if (bool2) {
        new RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            boolean bool2 = false;
            boolean bool1 = bool2;
            if (paramAnonymousCharSequence.length() > 0)
            {
              bool1 = bool2;
              if (Rule.contains(val$bContent, paramAnonymousCharSequence.charAt(0)) == bool1) {
                bool1 = true;
              }
            }
            return bool1;
          }
        };
      }
      if (bool3) {
        new RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            return (paramAnonymousCharSequence.length() > 0) && (Rule.contains(val$bContent, paramAnonymousCharSequence.charAt(paramAnonymousCharSequence.length() - 1)) == bool1);
          }
        };
      }
      new RPattern()
      {
        Pattern pattern = Pattern.compile(val$regex);
        
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return pattern.matcher(paramAnonymousCharSequence).find();
        }
      };
    }
  }
  
  private static boolean startsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence2.length() > paramCharSequence1.length()) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramCharSequence2.length()) {
        break label53;
      }
      if (paramCharSequence1.charAt(i) != paramCharSequence2.charAt(i)) {
        break;
      }
      i += 1;
    }
    label53:
    return true;
  }
  
  private static String stripQuotes(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("\"")) {
      str = paramString.substring(1);
    }
    paramString = str;
    if (str.endsWith("\"")) {
      paramString = str.substring(0, str.length() - 1);
    }
    return paramString;
  }
  
  public RPattern getLContext()
  {
    return lContext;
  }
  
  public String getPattern()
  {
    return pattern;
  }
  
  public PhonemeExpr getPhoneme()
  {
    return phoneme;
  }
  
  public RPattern getRContext()
  {
    return rContext;
  }
  
  public boolean patternAndContextMatches(CharSequence paramCharSequence, int paramInt)
  {
    if (paramInt < 0) {
      throw new IndexOutOfBoundsException("Can not match pattern at negative indexes");
    }
    int i = pattern.length() + paramInt;
    if (i > paramCharSequence.length()) {}
    boolean bool1;
    boolean bool2;
    boolean bool3;
    do
    {
      return false;
      bool1 = paramCharSequence.subSequence(paramInt, i).equals(pattern);
      bool2 = rContext.isMatch(paramCharSequence.subSequence(i, paramCharSequence.length()));
      bool3 = lContext.isMatch(paramCharSequence.subSequence(0, paramInt));
    } while ((!bool1) || (!bool2) || (!bool3));
    return true;
  }
  
  public static final class Phoneme
    implements Rule.PhonemeExpr
  {
    public static final Comparator<Phoneme> COMPARATOR = new Comparator()
    {
      public final int compare(Rule.Phoneme paramAnonymousPhoneme1, Rule.Phoneme paramAnonymousPhoneme2)
      {
        int j = 0;
        int i = 0;
        if (i < phonemeText.length()) {
          if (i >= phonemeText.length()) {
            i = 1;
          }
        }
        do
        {
          return i;
          int k = phonemeText.charAt(i) - phonemeText.charAt(i);
          if (k != 0) {
            return k;
          }
          i += 1;
          break;
          i = j;
        } while (phonemeText.length() >= phonemeText.length());
        return -1;
      }
    };
    private final Languages.LanguageSet languages;
    private final CharSequence phonemeText;
    
    public Phoneme(CharSequence paramCharSequence, Languages.LanguageSet paramLanguageSet)
    {
      phonemeText = paramCharSequence;
      languages = paramLanguageSet;
    }
    
    public final Phoneme append(CharSequence paramCharSequence)
    {
      return new Phoneme(phonemeText.toString() + paramCharSequence.toString(), languages);
    }
    
    public final Languages.LanguageSet getLanguages()
    {
      return languages;
    }
    
    public final CharSequence getPhonemeText()
    {
      return phonemeText;
    }
    
    public final Iterable<Phoneme> getPhonemes()
    {
      return Collections.singleton(this);
    }
    
    public final Phoneme join(Phoneme paramPhoneme)
    {
      return new Phoneme(phonemeText.toString() + phonemeText.toString(), languages.restrictTo(languages));
    }
  }
  
  public static abstract interface PhonemeExpr
  {
    public abstract Iterable<Rule.Phoneme> getPhonemes();
  }
  
  public static final class PhonemeList
    implements Rule.PhonemeExpr
  {
    private final List<Rule.Phoneme> phonemes;
    
    public PhonemeList(List<Rule.Phoneme> paramList)
    {
      phonemes = paramList;
    }
    
    public final List<Rule.Phoneme> getPhonemes()
    {
      return phonemes;
    }
  }
  
  public static abstract interface RPattern
  {
    public abstract boolean isMatch(CharSequence paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */