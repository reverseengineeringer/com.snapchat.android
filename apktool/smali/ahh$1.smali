.class final Lahh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/addlive/platform/InitState;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/addlive/platform/ADL;->getInitState()Lcom/addlive/platform/InitState;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    invoke-static {p1, p2, p3}, Lcom/addlive/platform/ADL;->init(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public final b()Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method
