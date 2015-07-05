.class final Lbe$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe$a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbe$a;


# direct methods
.method constructor <init>(Lbe$a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lbe$a$1;->a:Lbe$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lbe$a$1;->a:Lbe$a;

    iget-boolean v0, v0, Lbe$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe$a$1;->a:Lbe$a;

    iget-object v0, v0, Lbe$a;->d:Lbf;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lbe$a$1;->a:Lbe$a;

    iget-object v0, v0, Lbe$a;->d:Lbf;

    invoke-virtual {v0}, Lbf;->b()V

    .line 109
    iget-object v0, p0, Lbe$a$1;->a:Lbe$a;

    iget-object v0, v0, Lbe$a;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lbe$a$1;->a:Lbe$a;

    iget-object v1, v1, Lbe$a;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
