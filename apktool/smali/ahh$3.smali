.class final Lahh$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/platform/PlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/addlive/platform/PlatformInitListener;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/addlive/platform/PlatformInitListener;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lahh$3;->a:Landroid/os/Handler;

    iput-object p2, p0, Lahh$3;->b:Lcom/addlive/platform/PlatformInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lahh$3;->a:Landroid/os/Handler;

    new-instance v1, Lahh$3$1;

    invoke-direct {v1, p0, p1}, Lahh$3$1;-><init>(Lahh$3;Lcom/addlive/platform/InitProgressChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public final onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lahh$3;->a:Landroid/os/Handler;

    new-instance v1, Lahh$3$2;

    invoke-direct {v1, p0, p1}, Lahh$3$2;-><init>(Lahh$3;Lcom/addlive/platform/InitStateChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method
