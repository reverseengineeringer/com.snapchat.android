.class public Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 28
    sget-object v0, Lavf;->SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;-><init>(Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 51
    if-nez p2, :cond_0

    .line 52
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flurry only supports up to 10 parameters. Found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Truncating!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v3, v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 40
    sget-object v0, Lavf;->SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;-><init>(Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method
