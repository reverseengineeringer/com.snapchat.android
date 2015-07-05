.class public final Lwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lwc$b;

.field private final c:Lwc$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lwc$b;Lwc$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lwi;->a:Landroid/os/Handler;

    .line 25
    iput-object p3, p0, Lwi;->c:Lwc$a;

    .line 26
    iput-object p2, p0, Lwi;->b:Lwc$b;

    .line 27
    return-void
.end method

.method static synthetic a(Lwi;)Lwc$b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lwi;->b:Lwc$b;

    return-object v0
.end method

.method static synthetic b(Lwi;)Lwc$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lwi;->c:Lwc$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lwi;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lwi;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 43
    :cond_0
    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lwi;->a:Landroid/os/Handler;

    new-instance v1, Lwi$1;

    invoke-direct {v1, p0, p1}, Lwi$1;-><init>(Lwi;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method
