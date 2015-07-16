.class public Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    .line 40
    invoke-interface {v0, p1}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
