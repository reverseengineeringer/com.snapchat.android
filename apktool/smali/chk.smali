.class public final Lchk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchk$b;,
        Lchk$a;
    }
.end annotation


# static fields
.field private static final a:Lchk$b;

.field private static volatile b:Lchk$a;

.field private static volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lchl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lchk$b;

    invoke-direct {v0}, Lchk$b;-><init>()V

    .line 41
    sput-object v0, Lchk;->a:Lchk$b;

    sput-object v0, Lchk;->b:Lchk$a;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    const-string v1, "UT"

    sget-object v2, Lchl;->a:Lchl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "UTC"

    sget-object v2, Lchl;->a:Lchl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "GMT"

    sget-object v2, Lchl;->a:Lchl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "EST"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "EDT"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "CDT"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "MST"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "MDT"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "PDT"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lchk;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lchk;->c:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public static final a()J
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lchk;->b:Lchk$a;

    invoke-interface {v0}, Lchk$a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Lcia;)J
    .locals 2

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    invoke-static {}, Lchk;->a()J

    move-result-wide v0

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lcia;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final a(Lchg;)Lchg;
    .locals 0

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    invoke-static {}, Lcjd;->M()Lcjd;

    move-result-object p0

    .line 285
    :cond_0
    return-object p0
.end method

.method public static final a(Lchl;)Lchl;
    .locals 0

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p0

    .line 302
    :cond_0
    return-object p0
.end method

.method public static final a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5

    .prologue
    .line 395
    :try_start_0
    const-class v0, Ljava/text/DateFormatSymbols;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lchl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-static {p2}, Lchl;->a(Ljava/lang/String;)Lchl;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Lcia;)Lchg;
    .locals 1

    .prologue
    .line 194
    if-nez p0, :cond_1

    .line 195
    invoke-static {}, Lcjd;->M()Lcjd;

    move-result-object v0

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-interface {p0}, Lcia;->d()Lchg;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcjd;->M()Lcjd;

    move-result-object v0

    goto :goto_0
.end method

.method public static final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lchl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lchk;->c:Ljava/util/Map;

    return-object v0
.end method
