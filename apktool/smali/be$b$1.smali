.class final Lbe$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe$b;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbe$b;


# direct methods
.method constructor <init>(Lbe$b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lbe$b$1;->a:Lbe$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lbe$b$1;->a:Lbe$b;

    iget-boolean v0, v0, Lbe$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe$b$1;->a:Lbe$b;

    iget-object v0, v0, Lbe$b;->d:Lbf;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lbe$b$1;->a:Lbe$b;

    iget-object v0, v0, Lbe$b;->d:Lbf;

    invoke-virtual {v0}, Lbf;->b()V

    .line 63
    iget-object v0, p0, Lbe$b$1;->a:Lbe$b;

    iget-object v0, v0, Lbe$b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lbe$b$1;->a:Lbe$b;

    iget-object v1, v1, Lbe$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
