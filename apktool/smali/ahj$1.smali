.class final Lahj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/platform/PlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahj;


# direct methods
.method constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lahj$1;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public final onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 396
    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getState()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lahj$1;->a:Lahj;

    invoke-virtual {v0}, Lahj;->f()V

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v0, "livechat"

    const-string v1, "Failed to initialize the AddLive SDK: %s (ERR: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_INIT_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method
