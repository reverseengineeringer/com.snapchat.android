.class final Lbvv$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbvv$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvv$b;

.field final synthetic b:Lbvv$1;


# direct methods
.method constructor <init>(Lbvv$1;Lbvv$b;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lbvv$1$1;->b:Lbvv$1;

    iput-object p2, p0, Lbvv$1$1;->a:Lbvv$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lbvv$1$1;->b:Lbvv$1;

    iget-object v0, v0, Lbvv$1;->a:Lbvv;

    iget-object v0, v0, Lbvv;->a:Ljava/util/Queue;

    iget-object v1, p0, Lbvv$1$1;->a:Lbvv$b;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lbvv$1$1;->b:Lbvv$1;

    iget-object v0, v0, Lbvv$1;->a:Lbvv;

    invoke-virtual {v0}, Lbvv;->a()V

    .line 101
    return-void
.end method
