.class public final Late;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPLAY_DENSITY_PARAM:Ljava/lang/String; = "display_density"

.field public static final EMPTY_MAP:Ljava/lang/String; = "{}"

.field public static final KB_IN_GB:D = 1048576.0

.field public static final NUM_PROCESSORS_PARAM:Ljava/lang/String; = "num_processors"

.field private static final PRE_2010:I = 0x7d9

.field public static final TAG:Ljava/lang/String; = "DeviceUtils"

.field public static final TOTAL_MEMORY_PARAM:Ljava/lang/String; = "total_memory"

.field public static final YEAR_CLASS_PARAM:Ljava/lang/String; = "year_class"

.field private static final sInstance:Late;


# instance fields
.field private mYearClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Late;

    invoke-direct {v0}, Late;-><init>()V

    sput-object v0, Late;->sInstance:Late;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)D
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 169
    const-string v2, " kB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    aget-object v2, v2, v5

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    :try_start_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 177
    :goto_0
    cmpg-double v4, v2, v0

    if-gtz v4, :cond_0

    :goto_1
    return-wide v0

    .line 175
    :catch_0
    move-exception v2

    const-string v2, "DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was an error parsing /proc/meminfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v2, v0

    goto :goto_0

    .line 177
    :cond_0
    sub-double v0, v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1
.end method

.method public static a()Late;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Late;->sInstance:Late;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 60
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    const-string v0, ""

    .line 194
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/meminfo"

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 199
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v2, "DeviceUtils"

    const-string v3, "There was an error reading /proc/meminfo"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 197
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x7dc

    const/16 v1, 0x7df

    const/16 v2, 0x7db

    const/16 v3, 0x7da

    const/16 v4, 0x7d9

    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {}, Lajx;->bj()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Late;->mYearClass:Ljava/util/Map;

    if-eqz v8, :cond_0

    iget-object v8, p0, Late;->mYearClass:Ljava/util/Map;

    const-string v9, "year_class"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Late;->mYearClass:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Late$1;

    invoke-direct {v8, p0}, Late$1;-><init>(Late;)V

    invoke-virtual {v8}, Late$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Late;->mYearClass:Ljava/util/Map;

    iget-object v0, p0, Late;->mYearClass:Ljava/util/Map;

    const-string v8, "year_class"

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Late;->mYearClass:Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v5, "num_processors"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    move v0, v1

    :goto_1
    invoke-static {}, Late;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Late;->a(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    const-string v5, "total_memory"

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_6

    move v5, v1

    :goto_2
    iget v9, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v10, "display_density"

    invoke-static {v7}, Lavh;->a(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x280

    if-lt v9, v7, :cond_b

    :goto_3
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "year_class"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->s(Ljava/lang/String;)V

    iput-object v8, p0, Late;->mYearClass:Ljava/util/Map;

    iget-object v0, p0, Late;->mYearClass:Ljava/util/Map;

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x4

    if-lt v0, v5, :cond_3

    const/16 v0, 0x7dd

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-lt v0, v5, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_7

    const/16 v5, 0x7de

    goto :goto_2

    :cond_7
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_8

    move v5, v6

    goto :goto_2

    :cond_8
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_a

    move v5, v3

    goto :goto_2

    :cond_a
    move v5, v4

    goto :goto_2

    :cond_b
    const/16 v1, 0x1e0

    if-lt v9, v1, :cond_c

    const/16 v1, 0x7dd

    goto :goto_3

    :cond_c
    const/16 v1, 0xf0

    if-lt v9, v1, :cond_d

    move v1, v6

    goto :goto_3

    :cond_d
    const/16 v1, 0xa0

    if-lt v9, v1, :cond_e

    move v1, v2

    goto :goto_3

    :cond_e
    const/16 v1, 0x78

    if-lt v9, v1, :cond_f

    move v1, v3

    goto :goto_3

    :cond_f
    move v1, v4

    goto :goto_3
.end method
