.class public final Lmi;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lajv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lnf;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnf;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lmi;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lmi;->b:Lnf;

    .line 30
    return-void
.end method

.method private a()Lajv;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 44
    iget-object v0, p0, Lmi;->b:Lnf;

    const-string v1, "USER_LOAD_TIME"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    iput-object v1, v0, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    iput-boolean v8, v0, Lnf;->mDidLoadFromDatabase:Z

    .line 46
    invoke-virtual {p0}, Lmi;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 52
    :try_start_0
    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "UserLoader.loadInBackground DB SIZE "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lazz;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {v0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    .line 63
    const-string v1, "UserLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadInBackground() Elapsed Time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "UserLoader"

    const-string v2, "Error while opening database: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lmi;->a:Landroid/app/Activity;

    invoke-static {v0}, Lasr;->a(Landroid/app/Activity;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lmi;->a()Lajv;

    move-result-object v0

    return-object v0
.end method

.method protected final onStartLoading()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lmi;->forceLoad()V

    .line 35
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lmi;->cancelLoad()Z

    .line 40
    return-void
.end method
