.class final Lbe$a;
.super Lbo;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/Choreographer;

.field final b:Landroid/view/Choreographer$FrameCallback;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lbo;-><init>()V

    .line 101
    iput-object p1, p0, Lbe$a;->a:Landroid/view/Choreographer;

    .line 102
    new-instance v0, Lbe$a$1;

    invoke-direct {v0, p0}, Lbe$a$1;-><init>(Lbe$a;)V

    iput-object v0, p0, Lbe$a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 112
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe$a;->c:Z

    .line 117
    iget-object v0, p0, Lbe$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lbe$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 118
    iget-object v0, p0, Lbe$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lbe$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 119
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe$a;->c:Z

    .line 124
    iget-object v0, p0, Lbe$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lbe$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 125
    return-void
.end method
