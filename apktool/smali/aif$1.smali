.class final Laif$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/platform/PlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laif;


# direct methods
.method constructor <init>(Laif;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Laif$1;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public final onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getState()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Laif$1;->a:Laif;

    invoke-virtual {v0}, Laif;->g()V

    .line 412
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 410
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_INIT_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method
