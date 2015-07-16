.class public final Lxv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lxv;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lavc;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lavc;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/SharedPreferences;
    .annotation build Lchd;
    .end annotation
.end field

.field public final c:Lban;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x1e0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 35
    new-instance v0, Lxv;

    invoke-direct {v0}, Lxv;-><init>()V

    sput-object v0, Lxv;->d:Lxv;

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-array v3, v9, [Ljava/lang/String;

    const-string v0, "XT1080"

    aput-object v0, v3, v1

    const-string v0, "XT1056"

    aput-object v0, v3, v8

    const/4 v0, 0x2

    const-string v4, "XT1058"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "XT1052"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "XT1053"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "XT1055"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "XT1050"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "XT1060"

    aput-object v4, v3, v0

    move v0, v1

    .line 45
    :goto_0
    if-ge v0, v9, :cond_0

    aget-object v4, v3, v0

    .line 46
    new-array v5, v8, [Lavc;

    new-instance v6, Lavc;

    const/16 v7, 0x354

    invoke-direct {v6, v7, v10}, Lavc;-><init>(II)V

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-array v5, v8, [Lavc;

    new-instance v6, Lavc;

    const/16 v7, 0x314

    invoke-direct {v6, v7, v10}, Lavc;-><init>(II)V

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lxv;->e:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, v0}, Lxv;-><init>(Lban;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lban;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lxv;->a:Ljava/util/Set;

    .line 66
    iput-object p1, p0, Lxv;->c:Lban;

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/String;)Lavc;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 123
    array-length v1, v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 130
    :goto_0
    return-object v0

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Lavc;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lavc;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Lxv;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lxv;->d:Lxv;

    return-object v0
.end method

.method public static a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lavc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lxv;->e:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public static b(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lavc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lavc;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lavc;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lxv;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_ENCODING_RESOLUTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lxv;->a(Ljava/lang/String;)Lavc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxv;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lxv;->a:Ljava/util/Set;

    invoke-static {v0}, Lxv;->a(Ljava/util/Set;)V

    .line 71
    :cond_2
    return-void
.end method
