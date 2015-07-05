import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ep
{
  private static final Pattern A;
  private static ep B;
  static final ek a = new ek()
  {
    public final InputStream a(String paramAnonymousString)
    {
      return ep.class.getResourceAsStream(paramAnonymousString);
    }
  };
  static final Logger b = Logger.getLogger(ep.class.getName());
  static final Pattern c;
  static final Pattern d;
  static final Pattern e;
  static final String f;
  static final Pattern g;
  private static final Map<Integer, String> h;
  private static final Map<Character, Character> i;
  private static final Map<Character, Character> j;
  private static final Map<Character, Character> k;
  private static final Map<Character, Character> l;
  private static final Pattern m;
  private static final String n;
  private static final Pattern o;
  private static final Pattern p;
  private static final Pattern q;
  private static final Pattern r;
  private static final String s;
  private static final String t;
  private static final Pattern u;
  private static final Pattern v;
  private static final Pattern w;
  private static final Pattern x;
  private static final Pattern y;
  private static final Pattern z;
  private final Map<Integer, List<String>> C;
  private final Set<String> D = new HashSet(35);
  private final Map<String, eq.b> E = Collections.synchronizedMap(new HashMap());
  private final Map<Integer, eq.b> F = Collections.synchronizedMap(new HashMap());
  private final es G = new es();
  private final Set<String> H = new HashSet(320);
  private final Set<Integer> I = new HashSet();
  private final String J;
  private final ek K;
  
  static
  {
    Object localObject1 = new HashMap();
    ((HashMap)localObject1).put(Integer.valueOf(52), "1");
    ((HashMap)localObject1).put(Integer.valueOf(54), "9");
    h = Collections.unmodifiableMap((Map)localObject1);
    localObject1 = new HashMap();
    ((HashMap)localObject1).put(Character.valueOf('0'), Character.valueOf('0'));
    ((HashMap)localObject1).put(Character.valueOf('1'), Character.valueOf('1'));
    ((HashMap)localObject1).put(Character.valueOf('2'), Character.valueOf('2'));
    ((HashMap)localObject1).put(Character.valueOf('3'), Character.valueOf('3'));
    ((HashMap)localObject1).put(Character.valueOf('4'), Character.valueOf('4'));
    ((HashMap)localObject1).put(Character.valueOf('5'), Character.valueOf('5'));
    ((HashMap)localObject1).put(Character.valueOf('6'), Character.valueOf('6'));
    ((HashMap)localObject1).put(Character.valueOf('7'), Character.valueOf('7'));
    ((HashMap)localObject1).put(Character.valueOf('8'), Character.valueOf('8'));
    ((HashMap)localObject1).put(Character.valueOf('9'), Character.valueOf('9'));
    Object localObject2 = new HashMap(40);
    ((HashMap)localObject2).put(Character.valueOf('A'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('B'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('C'), Character.valueOf('2'));
    ((HashMap)localObject2).put(Character.valueOf('D'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('E'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('F'), Character.valueOf('3'));
    ((HashMap)localObject2).put(Character.valueOf('G'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('H'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('I'), Character.valueOf('4'));
    ((HashMap)localObject2).put(Character.valueOf('J'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('K'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('L'), Character.valueOf('5'));
    ((HashMap)localObject2).put(Character.valueOf('M'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('N'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('O'), Character.valueOf('6'));
    ((HashMap)localObject2).put(Character.valueOf('P'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('Q'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('R'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('S'), Character.valueOf('7'));
    ((HashMap)localObject2).put(Character.valueOf('T'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('U'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('V'), Character.valueOf('8'));
    ((HashMap)localObject2).put(Character.valueOf('W'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('X'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Y'), Character.valueOf('9'));
    ((HashMap)localObject2).put(Character.valueOf('Z'), Character.valueOf('9'));
    j = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap(100);
    ((HashMap)localObject2).putAll(j);
    ((HashMap)localObject2).putAll((Map)localObject1);
    k = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('+'), Character.valueOf('+'));
    ((HashMap)localObject2).put(Character.valueOf('*'), Character.valueOf('*'));
    i = Collections.unmodifiableMap((Map)localObject2);
    localObject2 = new HashMap();
    Object localObject3 = j.keySet().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      char c1 = ((Character)((Iterator)localObject3).next()).charValue();
      ((HashMap)localObject2).put(Character.valueOf(Character.toLowerCase(c1)), Character.valueOf(c1));
      ((HashMap)localObject2).put(Character.valueOf(c1), Character.valueOf(c1));
    }
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).put(Character.valueOf('-'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf(65293), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‐'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‑'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('‒'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('–'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('—'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('―'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('−'), Character.valueOf('-'));
    ((HashMap)localObject2).put(Character.valueOf('/'), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(65295), Character.valueOf('/'));
    ((HashMap)localObject2).put(Character.valueOf(' '), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('　'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('⁠'), Character.valueOf(' '));
    ((HashMap)localObject2).put(Character.valueOf('.'), Character.valueOf('.'));
    ((HashMap)localObject2).put(Character.valueOf(65294), Character.valueOf('.'));
    l = Collections.unmodifiableMap((Map)localObject2);
    m = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
    localObject1 = String.valueOf(Arrays.toString(j.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
    localObject2 = String.valueOf(Arrays.toString(j.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
    if (((String)localObject2).length() != 0)
    {
      localObject1 = ((String)localObject1).concat((String)localObject2);
      n = (String)localObject1;
      c = Pattern.compile("[+＋]+");
      o = Pattern.compile("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]+");
      p = Pattern.compile("(\\p{Nd})");
      q = Pattern.compile("[+＋\\p{Nd}]");
      d = Pattern.compile("[\\\\/] *x");
      e = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
      r = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
      localObject1 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*"));
      localObject2 = String.valueOf(String.valueOf(n));
      localObject3 = String.valueOf(String.valueOf("\\p{Nd}"));
      s = ((String)localObject1).length() + 2 + ((String)localObject2).length() + ((String)localObject3).length() + (String)localObject1 + (String)localObject2 + (String)localObject3 + "]*";
      localObject1 = String.valueOf("xｘ#＃~～");
      if (((String)localObject1).length() == 0) {
        break label1484;
      }
    }
    label1484:
    for (localObject1 = ",".concat((String)localObject1);; localObject1 = new String(","))
    {
      t = d((String)localObject1);
      f = d("xｘ#＃~～");
      localObject1 = String.valueOf(String.valueOf(t));
      u = Pattern.compile(((String)localObject1).length() + 5 + "(?:" + (String)localObject1 + ")$", 66);
      localObject1 = String.valueOf(String.valueOf(s));
      localObject2 = String.valueOf(String.valueOf(t));
      v = Pattern.compile(((String)localObject1).length() + 5 + ((String)localObject2).length() + (String)localObject1 + "(?:" + (String)localObject2 + ")?", 66);
      g = Pattern.compile("(\\D+)");
      w = Pattern.compile("(\\$\\d)");
      x = Pattern.compile("\\$NP");
      y = Pattern.compile("\\$FG");
      z = Pattern.compile("\\$CC");
      A = Pattern.compile("\\(?\\$1\\)?");
      B = null;
      return;
      localObject1 = new String((String)localObject1);
      break;
    }
  }
  
  private ep(String paramString, ek paramek, Map<Integer, List<String>> paramMap)
  {
    J = paramString;
    K = paramek;
    C = paramMap;
    paramString = paramMap.entrySet().iterator();
    while (paramString.hasNext())
    {
      paramek = (Map.Entry)paramString.next();
      List localList = (List)paramek.getValue();
      if ((localList.size() == 1) && ("001".equals(localList.get(0)))) {
        I.add(paramek.getKey());
      } else {
        H.addAll(localList);
      }
    }
    if (H.remove("001")) {
      b.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
    }
    D.addAll((Collection)paramMap.get(Integer.valueOf(1)));
  }
  
  private static int a(er.a parama1, er.a parama2)
  {
    er.a locala = new er.a();
    locala.a(parama1);
    parama1 = new er.a();
    parama1.a(parama2);
    locala.b();
    locala.c();
    locala.d();
    parama1.b();
    parama1.c();
    parama1.d();
    if ((c) && (d.length() == 0)) {
      locala.a();
    }
    if ((c) && (d.length() == 0)) {
      parama1.a();
    }
    if ((c) && (c) && (!d.equals(d))) {
      return ep.b.b;
    }
    int i1 = a;
    int i2 = a;
    if ((i1 != 0) && (i2 != 0))
    {
      if (locala.b(parama1)) {
        return ep.b.e;
      }
      if ((i1 == i2) && (b(locala, parama1))) {
        return ep.b.c;
      }
      return ep.b.b;
    }
    locala.a(i2);
    if (locala.b(parama1)) {
      return ep.b.d;
    }
    if (b(locala, parama1)) {
      return ep.b.c;
    }
    return ep.b.b;
  }
  
  private int a(String paramString, eq.b paramb)
  {
    if (!a(paramString, a)) {
      return ep.d.l;
    }
    if (a(paramString, e)) {
      return ep.d.e;
    }
    if (a(paramString, d)) {
      return ep.d.d;
    }
    if (a(paramString, f)) {
      return ep.d.f;
    }
    if (a(paramString, h)) {
      return ep.d.g;
    }
    if (a(paramString, g)) {
      return ep.d.h;
    }
    if (a(paramString, i)) {
      return ep.d.i;
    }
    if (a(paramString, j)) {
      return ep.d.j;
    }
    if (a(paramString, k)) {
      return ep.d.k;
    }
    if (a(paramString, b))
    {
      if (s) {
        return ep.d.c;
      }
      if (a(paramString, c)) {
        return ep.d.c;
      }
      return ep.d.a;
    }
    if ((!s) && (a(paramString, c))) {
      return ep.d.b;
    }
    return ep.d.l;
  }
  
  private int a(String paramString, eq.b paramb, StringBuilder paramStringBuilder, boolean paramBoolean, er.a parama)
  {
    if (paramString.length() == 0) {
      return 0;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    paramString = "NonMatch";
    if (paramb != null) {
      paramString = m;
    }
    Object localObject;
    if (localStringBuilder.length() != 0)
    {
      localObject = c.matcher(localStringBuilder);
      if (((Matcher)localObject).lookingAt())
      {
        localStringBuilder.delete(0, ((Matcher)localObject).end());
        a(localStringBuilder);
        paramString = er.a.a.a;
      }
    }
    for (;;)
    {
      if (paramBoolean) {
        parama.a(paramString);
      }
      if (paramString == er.a.a.d) {
        break label269;
      }
      if (localStringBuilder.length() > 2) {
        break;
      }
      throw new em(em.a.c, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
      paramString = G.a(paramString);
      a(localStringBuilder);
      paramString = paramString.matcher(localStringBuilder);
      if (paramString.lookingAt())
      {
        i1 = paramString.end();
        paramString = p.matcher(localStringBuilder.substring(i1));
        if ((!paramString.find()) || (!a(paramString.group(1)).equals("0"))) {
          localStringBuilder.delete(0, i1);
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label223;
        }
        paramString = er.a.a.b;
        break;
      }
      label223:
      paramString = er.a.a.d;
    }
    int i1 = a(localStringBuilder, paramStringBuilder);
    if (i1 != 0)
    {
      parama.a(i1);
      return i1;
    }
    throw new em(em.a.a, "Country calling code supplied was not recognised.");
    label269:
    if (paramb != null)
    {
      i1 = l;
      paramString = String.valueOf(i1);
      localObject = localStringBuilder.toString();
      if (((String)localObject).startsWith(paramString))
      {
        paramString = new StringBuilder(((String)localObject).substring(paramString.length()));
        eq.d locald = a;
        localObject = G.a(a);
        a(paramString, paramb, null);
        paramb = G.a(b);
        if (((!((Pattern)localObject).matcher(localStringBuilder).matches()) && (((Pattern)localObject).matcher(paramString).matches())) || (a(paramb, localStringBuilder.toString()) == ep.e.d))
        {
          paramStringBuilder.append(paramString);
          if (paramBoolean) {
            parama.a(er.a.a.c);
          }
          parama.a(i1);
          return i1;
        }
      }
    }
    parama.a(0);
    return 0;
  }
  
  private int a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    if ((paramStringBuilder1.length() == 0) || (paramStringBuilder1.charAt(0) == '0')) {
      return 0;
    }
    int i2 = paramStringBuilder1.length();
    int i1 = 1;
    while ((i1 <= 3) && (i1 <= i2))
    {
      int i3 = Integer.parseInt(paramStringBuilder1.substring(0, i1));
      if (C.containsKey(Integer.valueOf(i3)))
      {
        paramStringBuilder2.append(paramStringBuilder1.substring(i1));
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }
  
  private static int a(Pattern paramPattern, String paramString)
  {
    paramPattern = paramPattern.matcher(paramString);
    if (paramPattern.matches()) {
      return ep.e.a;
    }
    if (paramPattern.lookingAt()) {
      return ep.e.d;
    }
    return ep.e.c;
  }
  
  public static ep a()
  {
    try
    {
      if (B != null) {
        break label6983;
      }
      ek localek1 = a;
      if (localek1 == null) {
        throw new IllegalArgumentException("metadataLoader could not be null.");
      }
    }
    finally {}
    HashMap localHashMap = new HashMap(286);
    ArrayList localArrayList = new ArrayList(25);
    localArrayList.add("US");
    localArrayList.add("AG");
    localArrayList.add("AI");
    localArrayList.add("AS");
    localArrayList.add("BB");
    localArrayList.add("BM");
    localArrayList.add("BS");
    localArrayList.add("CA");
    localArrayList.add("DM");
    localArrayList.add("DO");
    localArrayList.add("GD");
    localArrayList.add("GU");
    localArrayList.add("JM");
    localArrayList.add("KN");
    localArrayList.add("KY");
    localArrayList.add("LC");
    localArrayList.add("MP");
    localArrayList.add("MS");
    localArrayList.add("PR");
    localArrayList.add("SX");
    localArrayList.add("TC");
    localArrayList.add("TT");
    localArrayList.add("VC");
    localArrayList.add("VG");
    localArrayList.add("VI");
    localHashMap.put(Integer.valueOf(1), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RU");
    localArrayList.add("KZ");
    localHashMap.put(Integer.valueOf(7), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EG");
    localHashMap.put(Integer.valueOf(20), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZA");
    localHashMap.put(Integer.valueOf(27), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GR");
    localHashMap.put(Integer.valueOf(30), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NL");
    localHashMap.put(Integer.valueOf(31), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BE");
    localHashMap.put(Integer.valueOf(32), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FR");
    localHashMap.put(Integer.valueOf(33), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ES");
    localHashMap.put(Integer.valueOf(34), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HU");
    localHashMap.put(Integer.valueOf(36), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IT");
    localHashMap.put(Integer.valueOf(39), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RO");
    localHashMap.put(Integer.valueOf(40), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CH");
    localHashMap.put(Integer.valueOf(41), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AT");
    localHashMap.put(Integer.valueOf(43), localArrayList);
    localArrayList = new ArrayList(4);
    localArrayList.add("GB");
    localArrayList.add("GG");
    localArrayList.add("IM");
    localArrayList.add("JE");
    localHashMap.put(Integer.valueOf(44), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DK");
    localHashMap.put(Integer.valueOf(45), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SE");
    localHashMap.put(Integer.valueOf(46), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("NO");
    localArrayList.add("SJ");
    localHashMap.put(Integer.valueOf(47), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PL");
    localHashMap.put(Integer.valueOf(48), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DE");
    localHashMap.put(Integer.valueOf(49), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PE");
    localHashMap.put(Integer.valueOf(51), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MX");
    localHashMap.put(Integer.valueOf(52), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CU");
    localHashMap.put(Integer.valueOf(53), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AR");
    localHashMap.put(Integer.valueOf(54), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BR");
    localHashMap.put(Integer.valueOf(55), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CL");
    localHashMap.put(Integer.valueOf(56), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CO");
    localHashMap.put(Integer.valueOf(57), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VE");
    localHashMap.put(Integer.valueOf(58), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MY");
    localHashMap.put(Integer.valueOf(60), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("AU");
    localArrayList.add("CC");
    localArrayList.add("CX");
    localHashMap.put(Integer.valueOf(61), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ID");
    localHashMap.put(Integer.valueOf(62), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PH");
    localHashMap.put(Integer.valueOf(63), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NZ");
    localHashMap.put(Integer.valueOf(64), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SG");
    localHashMap.put(Integer.valueOf(65), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TH");
    localHashMap.put(Integer.valueOf(66), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JP");
    localHashMap.put(Integer.valueOf(81), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KR");
    localHashMap.put(Integer.valueOf(82), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VN");
    localHashMap.put(Integer.valueOf(84), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CN");
    localHashMap.put(Integer.valueOf(86), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TR");
    localHashMap.put(Integer.valueOf(90), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IN");
    localHashMap.put(Integer.valueOf(91), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PK");
    localHashMap.put(Integer.valueOf(92), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AF");
    localHashMap.put(Integer.valueOf(93), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LK");
    localHashMap.put(Integer.valueOf(94), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MM");
    localHashMap.put(Integer.valueOf(95), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IR");
    localHashMap.put(Integer.valueOf(98), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SS");
    localHashMap.put(Integer.valueOf(211), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("MA");
    localArrayList.add("EH");
    localHashMap.put(Integer.valueOf(212), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DZ");
    localHashMap.put(Integer.valueOf(213), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TN");
    localHashMap.put(Integer.valueOf(216), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LY");
    localHashMap.put(Integer.valueOf(218), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GM");
    localHashMap.put(Integer.valueOf(220), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SN");
    localHashMap.put(Integer.valueOf(221), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MR");
    localHashMap.put(Integer.valueOf(222), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ML");
    localHashMap.put(Integer.valueOf(223), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GN");
    localHashMap.put(Integer.valueOf(224), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CI");
    localHashMap.put(Integer.valueOf(225), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BF");
    localHashMap.put(Integer.valueOf(226), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NE");
    localHashMap.put(Integer.valueOf(227), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TG");
    localHashMap.put(Integer.valueOf(228), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BJ");
    localHashMap.put(Integer.valueOf(229), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MU");
    localHashMap.put(Integer.valueOf(230), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LR");
    localHashMap.put(Integer.valueOf(231), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SL");
    localHashMap.put(Integer.valueOf(232), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GH");
    localHashMap.put(Integer.valueOf(233), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NG");
    localHashMap.put(Integer.valueOf(234), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TD");
    localHashMap.put(Integer.valueOf(235), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CF");
    localHashMap.put(Integer.valueOf(236), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CM");
    localHashMap.put(Integer.valueOf(237), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CV");
    localHashMap.put(Integer.valueOf(238), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ST");
    localHashMap.put(Integer.valueOf(239), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GQ");
    localHashMap.put(Integer.valueOf(240), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GA");
    localHashMap.put(Integer.valueOf(241), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CG");
    localHashMap.put(Integer.valueOf(242), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CD");
    localHashMap.put(Integer.valueOf(243), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AO");
    localHashMap.put(Integer.valueOf(244), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GW");
    localHashMap.put(Integer.valueOf(245), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IO");
    localHashMap.put(Integer.valueOf(246), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AC");
    localHashMap.put(Integer.valueOf(247), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SC");
    localHashMap.put(Integer.valueOf(248), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SD");
    localHashMap.put(Integer.valueOf(249), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RW");
    localHashMap.put(Integer.valueOf(250), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ET");
    localHashMap.put(Integer.valueOf(251), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SO");
    localHashMap.put(Integer.valueOf(252), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("DJ");
    localHashMap.put(Integer.valueOf(253), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KE");
    localHashMap.put(Integer.valueOf(254), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TZ");
    localHashMap.put(Integer.valueOf(255), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UG");
    localHashMap.put(Integer.valueOf(256), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BI");
    localHashMap.put(Integer.valueOf(257), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MZ");
    localHashMap.put(Integer.valueOf(258), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZM");
    localHashMap.put(Integer.valueOf(260), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MG");
    localHashMap.put(Integer.valueOf(261), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("RE");
    localArrayList.add("YT");
    localHashMap.put(Integer.valueOf(262), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ZW");
    localHashMap.put(Integer.valueOf(263), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NA");
    localHashMap.put(Integer.valueOf(264), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MW");
    localHashMap.put(Integer.valueOf(265), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LS");
    localHashMap.put(Integer.valueOf(266), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BW");
    localHashMap.put(Integer.valueOf(267), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SZ");
    localHashMap.put(Integer.valueOf(268), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KM");
    localHashMap.put(Integer.valueOf(269), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("SH");
    localArrayList.add("TA");
    localHashMap.put(Integer.valueOf(290), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ER");
    localHashMap.put(Integer.valueOf(291), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AW");
    localHashMap.put(Integer.valueOf(297), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FO");
    localHashMap.put(Integer.valueOf(298), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GL");
    localHashMap.put(Integer.valueOf(299), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GI");
    localHashMap.put(Integer.valueOf(350), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PT");
    localHashMap.put(Integer.valueOf(351), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LU");
    localHashMap.put(Integer.valueOf(352), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IE");
    localHashMap.put(Integer.valueOf(353), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IS");
    localHashMap.put(Integer.valueOf(354), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AL");
    localHashMap.put(Integer.valueOf(355), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MT");
    localHashMap.put(Integer.valueOf(356), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CY");
    localHashMap.put(Integer.valueOf(357), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("FI");
    localArrayList.add("AX");
    localHashMap.put(Integer.valueOf(358), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BG");
    localHashMap.put(Integer.valueOf(359), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LT");
    localHashMap.put(Integer.valueOf(370), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LV");
    localHashMap.put(Integer.valueOf(371), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EE");
    localHashMap.put(Integer.valueOf(372), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MD");
    localHashMap.put(Integer.valueOf(373), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AM");
    localHashMap.put(Integer.valueOf(374), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BY");
    localHashMap.put(Integer.valueOf(375), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AD");
    localHashMap.put(Integer.valueOf(376), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MC");
    localHashMap.put(Integer.valueOf(377), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SM");
    localHashMap.put(Integer.valueOf(378), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VA");
    localHashMap.put(Integer.valueOf(379), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UA");
    localHashMap.put(Integer.valueOf(380), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("RS");
    localHashMap.put(Integer.valueOf(381), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("ME");
    localHashMap.put(Integer.valueOf(382), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HR");
    localHashMap.put(Integer.valueOf(385), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SI");
    localHashMap.put(Integer.valueOf(386), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BA");
    localHashMap.put(Integer.valueOf(387), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MK");
    localHashMap.put(Integer.valueOf(389), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CZ");
    localHashMap.put(Integer.valueOf(420), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SK");
    localHashMap.put(Integer.valueOf(421), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LI");
    localHashMap.put(Integer.valueOf(423), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FK");
    localHashMap.put(Integer.valueOf(500), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BZ");
    localHashMap.put(Integer.valueOf(501), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GT");
    localHashMap.put(Integer.valueOf(502), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SV");
    localHashMap.put(Integer.valueOf(503), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HN");
    localHashMap.put(Integer.valueOf(504), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NI");
    localHashMap.put(Integer.valueOf(505), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CR");
    localHashMap.put(Integer.valueOf(506), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PA");
    localHashMap.put(Integer.valueOf(507), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PM");
    localHashMap.put(Integer.valueOf(508), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HT");
    localHashMap.put(Integer.valueOf(509), localArrayList);
    localArrayList = new ArrayList(3);
    localArrayList.add("GP");
    localArrayList.add("BL");
    localArrayList.add("MF");
    localHashMap.put(Integer.valueOf(590), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BO");
    localHashMap.put(Integer.valueOf(591), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GY");
    localHashMap.put(Integer.valueOf(592), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("EC");
    localHashMap.put(Integer.valueOf(593), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GF");
    localHashMap.put(Integer.valueOf(594), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PY");
    localHashMap.put(Integer.valueOf(595), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MQ");
    localHashMap.put(Integer.valueOf(596), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SR");
    localHashMap.put(Integer.valueOf(597), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UY");
    localHashMap.put(Integer.valueOf(598), localArrayList);
    localArrayList = new ArrayList(2);
    localArrayList.add("CW");
    localArrayList.add("BQ");
    localHashMap.put(Integer.valueOf(599), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TL");
    localHashMap.put(Integer.valueOf(670), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NF");
    localHashMap.put(Integer.valueOf(672), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BN");
    localHashMap.put(Integer.valueOf(673), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NR");
    localHashMap.put(Integer.valueOf(674), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PG");
    localHashMap.put(Integer.valueOf(675), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TO");
    localHashMap.put(Integer.valueOf(676), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SB");
    localHashMap.put(Integer.valueOf(677), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("VU");
    localHashMap.put(Integer.valueOf(678), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FJ");
    localHashMap.put(Integer.valueOf(679), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PW");
    localHashMap.put(Integer.valueOf(680), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WF");
    localHashMap.put(Integer.valueOf(681), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("CK");
    localHashMap.put(Integer.valueOf(682), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NU");
    localHashMap.put(Integer.valueOf(683), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("WS");
    localHashMap.put(Integer.valueOf(685), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KI");
    localHashMap.put(Integer.valueOf(686), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NC");
    localHashMap.put(Integer.valueOf(687), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TV");
    localHashMap.put(Integer.valueOf(688), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PF");
    localHashMap.put(Integer.valueOf(689), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TK");
    localHashMap.put(Integer.valueOf(690), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("FM");
    localHashMap.put(Integer.valueOf(691), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MH");
    localHashMap.put(Integer.valueOf(692), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(800), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(808), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KP");
    localHashMap.put(Integer.valueOf(850), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("HK");
    localHashMap.put(Integer.valueOf(852), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MO");
    localHashMap.put(Integer.valueOf(853), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KH");
    localHashMap.put(Integer.valueOf(855), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LA");
    localHashMap.put(Integer.valueOf(856), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(870), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(878), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BD");
    localHashMap.put(Integer.valueOf(880), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(881), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(882), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(883), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TW");
    localHashMap.put(Integer.valueOf(886), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(888), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MV");
    localHashMap.put(Integer.valueOf(960), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("LB");
    localHashMap.put(Integer.valueOf(961), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("JO");
    localHashMap.put(Integer.valueOf(962), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SY");
    localHashMap.put(Integer.valueOf(963), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IQ");
    localHashMap.put(Integer.valueOf(964), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KW");
    localHashMap.put(Integer.valueOf(965), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("SA");
    localHashMap.put(Integer.valueOf(966), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("YE");
    localHashMap.put(Integer.valueOf(967), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("OM");
    localHashMap.put(Integer.valueOf(968), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("PS");
    localHashMap.put(Integer.valueOf(970), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AE");
    localHashMap.put(Integer.valueOf(971), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("IL");
    localHashMap.put(Integer.valueOf(972), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BH");
    localHashMap.put(Integer.valueOf(973), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("QA");
    localHashMap.put(Integer.valueOf(974), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("BT");
    localHashMap.put(Integer.valueOf(975), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("MN");
    localHashMap.put(Integer.valueOf(976), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("NP");
    localHashMap.put(Integer.valueOf(977), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("001");
    localHashMap.put(Integer.valueOf(979), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TJ");
    localHashMap.put(Integer.valueOf(992), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("TM");
    localHashMap.put(Integer.valueOf(993), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("AZ");
    localHashMap.put(Integer.valueOf(994), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("GE");
    localHashMap.put(Integer.valueOf(995), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("KG");
    localHashMap.put(Integer.valueOf(996), localArrayList);
    localArrayList = new ArrayList(1);
    localArrayList.add("UZ");
    localHashMap.put(Integer.valueOf(998), localArrayList);
    a(new ep("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", localek2, localHashMap));
    label6983:
    ep localep = B;
    return localep;
  }
  
  private static eq.c a(ObjectInputStream paramObjectInputStream)
  {
    localc = new eq.c();
    try
    {
      localc.readExternal(paramObjectInputStream);
      try
      {
        paramObjectInputStream.close();
      }
      catch (IOException paramObjectInputStream)
      {
        b.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
      }
      finally
      {
        return localc;
      }
      return localc;
    }
    catch (IOException localIOException)
    {
      b.log(Level.WARNING, "error reading input (ignored)", localIOException);
      try
      {
        paramObjectInputStream.close();
      }
      catch (IOException paramObjectInputStream)
      {
        b.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
      }
      finally
      {
        return localc;
      }
    }
    finally
    {
      try
      {
        paramObjectInputStream.close();
        return localc;
      }
      catch (IOException paramObjectInputStream)
      {
        paramObjectInputStream = paramObjectInputStream;
        b.log(Level.WARNING, "error closing input stream (ignored)", paramObjectInputStream);
        return localc;
      }
      finally {}
    }
  }
  
  public static String a(er.a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (e)
    {
      char[] arrayOfChar = new char[f];
      Arrays.fill(arrayOfChar, '0');
      localStringBuilder.append(new String(arrayOfChar));
    }
    localStringBuilder.append(b);
    return localStringBuilder.toString();
  }
  
  private String a(er.a parama, List<String> paramList)
  {
    parama = a(parama);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      eq.b localb = c(str);
      if (v)
      {
        if (G.a(w).matcher(parama).lookingAt()) {
          return str;
        }
      }
      else if (a(parama, localb) != ep.d.l) {
        return str;
      }
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    return a(paramString, false).toString();
  }
  
  static StringBuilder a(String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    paramString = paramString.toCharArray();
    int i2 = paramString.length;
    int i1 = 0;
    if (i1 < i2)
    {
      char c1 = paramString[i1];
      int i3 = Character.digit(c1, 10);
      if (i3 != -1) {
        localStringBuilder.append(i3);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (paramBoolean) {
          localStringBuilder.append(c1);
        }
      }
    }
    return localStringBuilder;
  }
  
  static void a(int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    switch (ep.3.b[(paramInt2 - 1)])
    {
    default: 
      return;
    case 1: 
      paramStringBuilder.insert(0, paramInt1).insert(0, '+');
      return;
    case 2: 
      paramStringBuilder.insert(0, " ").insert(0, paramInt1).insert(0, '+');
      return;
    }
    paramStringBuilder.insert(0, "-").insert(0, paramInt1).insert(0, '+').insert(0, "tel:");
  }
  
  private static void a(ep paramep)
  {
    try
    {
      B = paramep;
      return;
    }
    finally
    {
      paramep = finally;
      throw paramep;
    }
  }
  
  static void a(er.a parama, eq.b paramb, int paramInt, StringBuilder paramStringBuilder)
  {
    if ((c) && (d.length() > 0))
    {
      if (paramInt == ep.c.d) {
        paramStringBuilder.append(";ext=").append(d);
      }
    }
    else {
      return;
    }
    if (o)
    {
      paramStringBuilder.append(p).append(d);
      return;
    }
    paramStringBuilder.append(" ext. ").append(d);
  }
  
  private static void a(String paramString, er.a parama)
  {
    if ((paramString.length() > 1) && (paramString.charAt(0) == '0'))
    {
      parama.a(true);
      int i1 = 1;
      while ((i1 < paramString.length() - 1) && (paramString.charAt(i1) == '0')) {
        i1 += 1;
      }
      if (i1 != 1) {
        parama.b(i1);
      }
    }
  }
  
  private void a(String paramString1, String paramString2, int paramInt, ek paramek)
  {
    boolean bool = "001".equals(paramString2);
    String str = String.valueOf(String.valueOf(paramString1));
    if (bool)
    {
      paramString1 = String.valueOf(paramInt);
      paramString1 = String.valueOf(String.valueOf(paramString1));
      str = str.length() + 1 + paramString1.length() + str + "_" + paramString1;
      paramString1 = paramek.a(str);
      if (paramString1 != null) {
        break label189;
      }
      paramString2 = b;
      paramek = Level.SEVERE;
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {
        break label161;
      }
      paramString1 = "missing metadata: ".concat(paramString1);
      label119:
      paramString2.log(paramek, paramString1);
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {
        break label175;
      }
    }
    label161:
    label175:
    for (paramString1 = "missing metadata: ".concat(paramString1);; paramString1 = new String("missing metadata: "))
    {
      throw new IllegalStateException(paramString1);
      paramString1 = paramString2;
      break;
      paramString1 = new String("missing metadata: ");
      break label119;
    }
    label189:
    label273:
    Object localObject;
    try
    {
      paramek = aObjectInputStreama;
      if (!paramek.isEmpty()) {
        break label382;
      }
      paramString2 = b;
      paramek = Level.SEVERE;
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {
        break label354;
      }
      paramString1 = "empty metadata: ".concat(paramString1);
      paramString2.log(paramek, paramString1);
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {
        break label368;
      }
      paramString1 = "empty metadata: ".concat(paramString1);
      throw new IllegalStateException(paramString1);
    }
    catch (IOException paramString2)
    {
      paramek = b;
      localObject = Level.SEVERE;
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {
        break label492;
      }
    }
    paramString1 = "cannot load/parse metadata: ".concat(paramString1);
    label314:
    paramek.log((Level)localObject, paramString1, paramString2);
    paramString1 = String.valueOf(str);
    if (paramString1.length() != 0) {}
    for (paramString1 = "cannot load/parse metadata: ".concat(paramString1);; paramString1 = new String("cannot load/parse metadata: "))
    {
      throw new RuntimeException(paramString1, paramString2);
      label354:
      paramString1 = new String("empty metadata: ");
      break;
      label368:
      paramString1 = new String("empty metadata: ");
      break label273;
      label382:
      Level localLevel;
      if (paramek.size() > 1)
      {
        localObject = b;
        localLevel = Level.WARNING;
        paramString1 = String.valueOf(str);
        if (paramString1.length() == 0) {
          break label465;
        }
      }
      label465:
      for (paramString1 = "invalid metadata (too many entries): ".concat(paramString1);; paramString1 = new String("invalid metadata (too many entries): "))
      {
        ((Logger)localObject).log(localLevel, paramString1);
        paramString1 = (eq.b)paramek.get(0);
        if (!bool) {
          break;
        }
        F.put(Integer.valueOf(paramInt), paramString1);
        return;
      }
      E.put(paramString2, paramString1);
      return;
      label492:
      paramString1 = new String("cannot load/parse metadata: ");
      break label314;
    }
  }
  
  private static void a(StringBuilder paramStringBuilder)
  {
    String str = paramStringBuilder.toString();
    StringBuilder localStringBuilder;
    if (r.matcher(str).matches())
    {
      Map localMap = k;
      localStringBuilder = new StringBuilder(str.length());
      int i1 = 0;
      while (i1 < str.length())
      {
        Character localCharacter = (Character)localMap.get(Character.valueOf(Character.toUpperCase(str.charAt(i1))));
        if (localCharacter != null) {
          localStringBuilder.append(localCharacter);
        }
        i1 += 1;
      }
    }
    for (str = localStringBuilder.toString();; str = a(str))
    {
      paramStringBuilder.replace(0, paramStringBuilder.length(), str);
      return;
    }
  }
  
  private boolean a(String paramString, eq.d paramd)
  {
    Matcher localMatcher = G.a(a).matcher(paramString);
    return (G.a(b).matcher(paramString).matches()) && (localMatcher.matches());
  }
  
  private er.a b(String paramString1, String paramString2)
  {
    er.a locala = new er.a();
    a(paramString1, paramString2, false, true, locala);
    return locala;
  }
  
  private static String b(StringBuilder paramStringBuilder)
  {
    Matcher localMatcher = u.matcher(paramStringBuilder);
    if ((localMatcher.find()) && (e(paramStringBuilder.substring(0, localMatcher.start()))))
    {
      int i1 = 1;
      int i2 = localMatcher.groupCount();
      while (i1 <= i2)
      {
        if (localMatcher.group(i1) != null)
        {
          String str = localMatcher.group(i1);
          paramStringBuilder.delete(localMatcher.start(), paramStringBuilder.length());
          return str;
        }
        i1 += 1;
      }
    }
    return "";
  }
  
  private static boolean b(er.a parama1, er.a parama2)
  {
    parama1 = String.valueOf(b);
    parama2 = String.valueOf(b);
    return (parama1.endsWith(parama2)) || (parama2.endsWith(parama1));
  }
  
  static boolean b(String paramString)
  {
    return (paramString.length() == 0) || (A.matcher(paramString).matches());
  }
  
  private eq.b c(int paramInt)
  {
    synchronized (F)
    {
      if (!C.containsKey(Integer.valueOf(paramInt))) {
        return null;
      }
      if (!F.containsKey(Integer.valueOf(paramInt))) {
        a(J, "001", paramInt, K);
      }
      return (eq.b)F.get(Integer.valueOf(paramInt));
    }
  }
  
  private static String d(String paramString)
  {
    String str1 = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|["));
    paramString = String.valueOf(String.valueOf(paramString));
    String str2 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
    String str3 = String.valueOf(String.valueOf("\\p{Nd}"));
    return str1.length() + 48 + paramString.length() + str2.length() + str3.length() + str1 + paramString + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*" + str2 + "#?|[- ]+(" + str3 + "{1,5})#";
  }
  
  private static boolean e(String paramString)
  {
    if (paramString.length() < 2) {
      return false;
    }
    return v.matcher(paramString).matches();
  }
  
  private boolean f(String paramString)
  {
    return (paramString != null) && (H.contains(paramString));
  }
  
  public final int a(er.a parama, String paramString)
  {
    try
    {
      i1 = a(parama, b(paramString, "ZZ"));
      return i1;
    }
    catch (em localem)
    {
      int i1;
      while (a == em.a.a)
      {
        Object localObject = b(a);
        try
        {
          if (!((String)localObject).equals("ZZ"))
          {
            int i2 = a(parama, b(paramString, (String)localObject));
            i1 = i2;
            if (i2 == ep.b.e) {
              return ep.b.d;
            }
          }
          else
          {
            localObject = new er.a();
            a(paramString, null, false, false, (er.a)localObject);
            i1 = a(parama, (er.a)localObject);
            return i1;
          }
        }
        catch (em parama) {}
      }
    }
    return ep.b.a;
  }
  
  final eq.a a(List<eq.a> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      eq.a locala = (eq.a)paramList.next();
      int i1 = locala.a();
      if (((i1 == 0) || (G.a((String)c.get(i1 - 1)).matcher(paramString).lookingAt())) && (G.a(a).matcher(paramString).matches())) {
        return locala;
      }
    }
    return null;
  }
  
  final eq.b a(int paramInt, String paramString)
  {
    if ("001".equals(paramString)) {
      return c(paramInt);
    }
    return c(paramString);
  }
  
  final String a(String paramString, eq.a parama, int paramInt)
  {
    String str = b;
    paramString = G.a(a).matcher(paramString);
    int i1 = ep.c.c;
    parama = d;
    if ((paramInt == ep.c.c) && (parama != null) && (parama.length() > 0)) {}
    for (paramString = paramString.replaceAll(w.matcher(str).replaceFirst(parama));; paramString = paramString.replaceAll(str))
    {
      parama = paramString;
      if (paramInt == ep.c.d)
      {
        parama = o.matcher(paramString);
        if (parama.lookingAt()) {
          paramString = parama.replaceFirst("");
        }
        parama = parama.reset(paramString).replaceAll("-");
      }
      return parama;
    }
  }
  
  final void a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, er.a parama)
  {
    int i2 = 0;
    if (paramString1 == null) {
      throw new em(em.a.b, "The phone number supplied was null.");
    }
    if (paramString1.length() > 250) {
      throw new em(em.a.e, "The string supplied was too long to parse.");
    }
    Object localObject3 = new StringBuilder();
    int i3 = paramString1.indexOf(";phone-context=");
    if (i3 > 0)
    {
      i1 = i3 + 15;
      if (paramString1.charAt(i1) == '+')
      {
        int i4 = paramString1.indexOf(';', i1);
        if (i4 > 0) {
          ((StringBuilder)localObject3).append(paramString1.substring(i1, i4));
        }
      }
      else
      {
        i1 = paramString1.indexOf("tel:");
        if (i1 < 0) {
          break label217;
        }
        i1 += 4;
      }
      for (;;)
      {
        ((StringBuilder)localObject3).append(paramString1.substring(i1, i3));
        i1 = ((StringBuilder)localObject3).indexOf(";isub=");
        if (i1 > 0) {
          ((StringBuilder)localObject3).delete(i1, ((StringBuilder)localObject3).length());
        }
        if (e(((StringBuilder)localObject3).toString())) {
          break label402;
        }
        throw new em(em.a.b, "The string supplied did not seem to be a phone number.");
        ((StringBuilder)localObject3).append(paramString1.substring(i1));
        break;
        label217:
        i1 = 0;
      }
    }
    Object localObject1 = q.matcher(paramString1);
    Object localObject4;
    if (((Matcher)localObject1).find())
    {
      localObject2 = paramString1.substring(((Matcher)localObject1).start());
      localObject4 = e.matcher((CharSequence)localObject2);
      localObject1 = localObject2;
      if (((Matcher)localObject4).find())
      {
        localObject2 = ((String)localObject2).substring(0, ((Matcher)localObject4).start());
        localObject4 = b;
        Level localLevel = Level.FINER;
        localObject1 = String.valueOf(localObject2);
        if (((String)localObject1).length() != 0)
        {
          localObject1 = "Stripped trailing characters: ".concat((String)localObject1);
          label321:
          ((Logger)localObject4).log(localLevel, (String)localObject1);
          localObject1 = localObject2;
        }
      }
      else
      {
        localObject4 = d.matcher((CharSequence)localObject1);
        localObject2 = localObject1;
        if (!((Matcher)localObject4).find()) {}
      }
    }
    for (Object localObject2 = ((String)localObject1).substring(0, ((Matcher)localObject4).start());; localObject2 = "")
    {
      ((StringBuilder)localObject3).append((String)localObject2);
      break;
      localObject1 = new String("Stripped trailing characters: ");
      break label321;
    }
    label402:
    if (paramBoolean2)
    {
      localObject1 = ((StringBuilder)localObject3).toString();
      if ((!f(paramString2)) && ((localObject1 == null) || (((String)localObject1).length() == 0) || (!c.matcher((CharSequence)localObject1).lookingAt()))) {}
      for (i1 = 0; i1 == 0; i1 = 1) {
        throw new em(em.a.a, "Missing or invalid default region.");
      }
    }
    if (paramBoolean1) {
      parama.b(paramString1);
    }
    paramString1 = b((StringBuilder)localObject3);
    if (paramString1.length() > 0) {
      parama.a(paramString1);
    }
    localObject2 = c(paramString2);
    localObject1 = new StringBuilder();
    for (;;)
    {
      try
      {
        i1 = a(((StringBuilder)localObject3).toString(), (eq.b)localObject2, (StringBuilder)localObject1, paramBoolean1, parama);
        if (i1 != 0)
        {
          localObject3 = b(i1);
          paramString1 = (String)localObject2;
          if (!((String)localObject3).equals(paramString2)) {
            paramString1 = a(i1, (String)localObject3);
          }
          if (((StringBuilder)localObject1).length() >= 2) {
            break;
          }
          throw new em(em.a.d, "The string supplied is too short to be a phone number.");
        }
      }
      catch (em paramString1)
      {
        localObject4 = c.matcher(((StringBuilder)localObject3).toString());
        if ((a == em.a.a) && (((Matcher)localObject4).lookingAt()))
        {
          i3 = a(((StringBuilder)localObject3).substring(((Matcher)localObject4).end()), (eq.b)localObject2, (StringBuilder)localObject1, paramBoolean1, parama);
          i1 = i3;
          if (i3 != 0) {
            continue;
          }
          throw new em(em.a.a, "Could not interpret numbers after plus-sign.");
        }
        throw new em(a, paramString1.getMessage());
      }
      a((StringBuilder)localObject3);
      ((StringBuilder)localObject1).append((CharSequence)localObject3);
      if (paramString2 != null)
      {
        parama.a(l);
        paramString1 = (String)localObject2;
      }
      else
      {
        paramString1 = (String)localObject2;
        if (paramBoolean1)
        {
          parama.c();
          paramString1 = (String)localObject2;
        }
      }
    }
    paramString2 = (String)localObject1;
    if (paramString1 != null)
    {
      localObject3 = new StringBuilder();
      localObject2 = new StringBuilder((CharSequence)localObject1);
      a((StringBuilder)localObject2, paramString1, (StringBuilder)localObject3);
      paramString2 = ((StringBuilder)localObject2).toString();
      i1 = i2;
      if (a(G.a(a.b), paramString2) == ep.e.c) {
        i1 = 1;
      }
      paramString2 = (String)localObject1;
      if (i1 == 0)
      {
        if (paramBoolean1) {
          parama.c(((StringBuilder)localObject3).toString());
        }
        paramString2 = (String)localObject2;
      }
    }
    int i1 = paramString2.length();
    if (i1 < 2) {
      throw new em(em.a.d, "The string supplied is too short to be a phone number.");
    }
    if (i1 > 17) {
      throw new em(em.a.e, "The string supplied is too long to be a phone number.");
    }
    a(paramString2.toString(), parama);
    parama.a(Long.parseLong(paramString2.toString()));
  }
  
  final boolean a(int paramInt)
  {
    return C.containsKey(Integer.valueOf(paramInt));
  }
  
  public final boolean a(String paramString1, String paramString2)
  {
    try
    {
      boolean bool = c(b(paramString1, paramString2));
      return bool;
    }
    catch (em paramString1) {}
    return false;
  }
  
  final boolean a(StringBuilder paramStringBuilder1, eq.b paramb, StringBuilder paramStringBuilder2)
  {
    int i1 = paramStringBuilder1.length();
    Object localObject = q;
    if ((i1 == 0) || (((String)localObject).length() == 0)) {}
    Pattern localPattern;
    boolean bool;
    int i2;
    StringBuilder localStringBuilder;
    do
    {
      do
      {
        do
        {
          return false;
          localObject = G.a((String)localObject).matcher(paramStringBuilder1);
        } while (!((Matcher)localObject).lookingAt());
        localPattern = G.a(a.a);
        bool = localPattern.matcher(paramStringBuilder1).matches();
        i2 = ((Matcher)localObject).groupCount();
        paramb = r;
        if ((paramb != null) && (paramb.length() != 0) && (((Matcher)localObject).group(i2) != null)) {
          break;
        }
      } while ((bool) && (!localPattern.matcher(paramStringBuilder1.substring(((Matcher)localObject).end())).matches()));
      if ((paramStringBuilder2 != null) && (i2 > 0) && (((Matcher)localObject).group(i2) != null)) {
        paramStringBuilder2.append(((Matcher)localObject).group(1));
      }
      paramStringBuilder1.delete(0, ((Matcher)localObject).end());
      return true;
      localStringBuilder = new StringBuilder(paramStringBuilder1);
      localStringBuilder.replace(0, i1, ((Matcher)localObject).replaceFirst(paramb));
    } while ((bool) && (!localPattern.matcher(localStringBuilder.toString()).matches()));
    if ((paramStringBuilder2 != null) && (i2 > 1)) {
      paramStringBuilder2.append(((Matcher)localObject).group(1));
    }
    paramStringBuilder1.replace(0, paramStringBuilder1.length(), localStringBuilder.toString());
    return true;
  }
  
  public final String b(int paramInt)
  {
    List localList = (List)C.get(Integer.valueOf(paramInt));
    if (localList == null) {
      return "ZZ";
    }
    return (String)localList.get(0);
  }
  
  public final boolean b(er.a parama)
  {
    int i1 = a;
    Object localObject1 = (List)C.get(Integer.valueOf(i1));
    Object localObject3;
    Object localObject2;
    if (localObject1 == null)
    {
      localObject3 = a(parama);
      localObject1 = b;
      localObject2 = Level.WARNING;
      localObject3 = String.valueOf(String.valueOf(localObject3));
      ((Logger)localObject1).log((Level)localObject2, ((String)localObject3).length() + 54 + "Missing/invalid country_code (" + i1 + ") for number " + (String)localObject3);
      localObject1 = null;
      i1 = a;
      localObject2 = a(i1, (String)localObject1);
      if (localObject2 == null) {
        break label224;
      }
      if ("001".equals(localObject1)) {
        break label226;
      }
      localObject3 = c((String)localObject1);
      if (localObject3 != null) {
        break label215;
      }
      parama = String.valueOf(localObject1);
      if (parama.length() == 0) {
        break label201;
      }
    }
    label201:
    for (parama = "Invalid region code: ".concat(parama);; parama = new String("Invalid region code: "))
    {
      throw new IllegalArgumentException(parama);
      if (((List)localObject1).size() == 1)
      {
        localObject1 = (String)((List)localObject1).get(0);
        break;
      }
      localObject1 = a(parama, (List)localObject1);
      break;
    }
    label215:
    if (i1 != l) {
      label224:
      return false;
    }
    label226:
    return a(a(parama), (eq.b)localObject2) != ep.d.l;
  }
  
  final eq.b c(String paramString)
  {
    if (!f(paramString)) {
      return null;
    }
    synchronized (E)
    {
      if (!E.containsKey(paramString)) {
        a(J, paramString, 0, K);
      }
      return (eq.b)E.get(paramString);
    }
  }
  
  public final boolean c(er.a parama)
  {
    String str = a(parama);
    int i1 = a;
    if (!a(i1)) {}
    for (i1 = ep.e.b; i1 == ep.e.a; i1 = a(G.a(a.b), str))
    {
      return true;
      parama = a(i1, b(i1));
    }
    return false;
  }
  
  public static abstract enum a
  {
    private a() {}
    
    abstract boolean a(er.a parama, String paramString, ep paramep);
  }
  
  public static enum b {}
  
  public static enum c
  {
    public static int[] a()
    {
      return (int[])e.clone();
    }
  }
  
  public static enum d
  {
    public static int[] a()
    {
      return (int[])m.clone();
    }
  }
  
  public static enum e {}
}

/* Location:
 * Qualified Name:     ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */