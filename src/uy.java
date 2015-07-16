import com.snapchat.android.analytics.framework.EasyMetric;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

public final class uy
{
  private static final uy INSTANCE = new uy();
  private static final String MIGRATION_EXC_PREFIX = "Migration exc: ";
  private static final String MIGRATION_PARAM = "MIGRATE";
  private static final String MIGRATION_STUDY = "SERVER_ENDPOINT_MIGRATION";
  public static final String MIGRATION_SUCCESS = "success";
  private static final String NON_MIGRATION_EXC_PREFIX = "Non-migration exc: ";
  private volatile boolean mAllowURIMigration = true;
  private akn mStudySettings;
  
  private uy()
  {
    this(akn.a());
  }
  
  private uy(akn paramakn)
  {
    mStudySettings = paramakn;
  }
  
  private static bnb a(bnb.a parama, String paramString1, String paramString2)
  {
    parama = parama.a(paramString1).a();
    new StringBuilder("Executing request: ").append(paramString2).append(": ").append(paramString1);
    return parama;
  }
  
  public static uy a()
  {
    return INSTANCE;
  }
  
  public static void a(EasyMetric paramEasyMetric, String paramString)
  {
    if (paramString != null)
    {
      if (!paramString.startsWith("Non-migration exc: ")) {
        paramEasyMetric.a("migration_success", Boolean.valueOf(paramString.equals("success")));
      }
      if (!paramString.equals("success")) {
        paramEasyMetric.a("migration_exception", paramString);
      }
    }
  }
  
  public final uy.a a(bnb.a parama, String paramString1, String paramString2, ug paramug)
  {
    Object localObject5 = null;
    for (;;)
    {
      String str3;
      Object localObject3;
      String str4;
      try
      {
        str3 = ut.a(paramString1).toString();
        if ((!mAllowURIMigration) || (!mStudySettings.a("SERVER_ENDPOINT_MIGRATION", "MIGRATE", true)) || (!str3.startsWith("https://feelinsonice-hrd.appspot.com"))) {
          break label327;
        }
        localObject3 = str3.replace("https://feelinsonice-hrd.appspot.com", "https://app.snapchat.com");
        paramString1 = a(parama, (String)localObject3, paramString2);
      }
      catch (URISyntaxException parama)
      {
        String str1;
        Object localObject4;
        throw new IllegalArgumentException("Invalid URL encountered in server request: URL: " + paramString1 + " Error: " + parama.getMessage());
      }
      try
      {
        localObject2 = paramug.a((String)localObject3).a(paramString1).a();
        str1 = "success";
        localObject1 = paramString1;
        paramString1 = (String)localObject2;
        localObject2 = localObject3;
      }
      catch (IOException localIOException1)
      {
        str2 = "Migration exc: " + localIOException1.getMessage();
        str4 = null;
        localObject1 = paramString1;
        localObject2 = localObject3;
        paramString1 = str4;
        continue;
      }
      if (str1 != null)
      {
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = paramString1;
        str4 = str1;
        localObject4 = localObject5;
        if (str1.equals("success")) {}
      }
      else
      {
        localObject3 = a(parama, str3, paramString2);
      }
      try
      {
        localObject2 = paramug.a(str3).a((bnb)localObject3).a();
        paramString1 = (String)localObject2;
        if (str3.startsWith("https://feelinsonice-hrd.appspot.com"))
        {
          paramString1 = (String)localObject2;
          mAllowURIMigration = false;
        }
        localObject1 = str3;
        localObject4 = localObject5;
        str4 = str1;
      }
      catch (IOException localIOException2)
      {
        if (str2 != null) {
          break label324;
        }
        str4 = "Non-migration exc: " + localIOException2.getMessage();
        localObject1 = str3;
        localObject2 = paramString1;
        continue;
        throw localIOException2;
      }
      return new uy.a((bnb)localObject3, (String)localObject1, (bnd)localObject2, str4, (IOException)localObject4);
      label324:
      label327:
      Object localObject2 = str3;
      paramString1 = null;
      Object localObject1 = null;
      String str2 = null;
    }
  }
  
  public static final class a
  {
    public IOException mException;
    public String mMigrationResult;
    public bnb mRequest;
    public bnd mResponse;
    public String mUrl;
    
    public a(bnb parambnb, String paramString1, bnd parambnd, String paramString2, IOException paramIOException)
    {
      mRequest = parambnb;
      mUrl = paramString1;
      mResponse = parambnd;
      mMigrationResult = paramString2;
      mException = paramIOException;
    }
  }
}

/* Location:
 * Qualified Name:     uy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */