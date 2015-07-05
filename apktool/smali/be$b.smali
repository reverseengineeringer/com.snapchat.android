.class final Lbe$b;
.super Lbo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lbo;-><init>()V

    .line 55
    iput-object p1, p0, Lbe$b;->a:Landroid/os/Handler;

    .line 56
    new-instance v0, Lbe$b$1;

    invoke-direct {v0, p0}, Lbe$b$1;-><init>(Lbe$b;)V

    iput-object v0, p0, Lbe$b;->b:Ljava/lang/Runnable;

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe$b;->c:Z

    .line 71
    iget-object v0, p0, Lbe$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbe$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lbe$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbe$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe$b;->c:Z

    .line 78
    iget-object v0, p0, Lbe$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbe$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method
