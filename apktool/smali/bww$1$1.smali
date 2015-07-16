.class final Lbww$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbww$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbww$b;

.field final synthetic b:Lbww$1;


# direct methods
.method constructor <init>(Lbww$1;Lbww$b;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lbww$1$1;->b:Lbww$1;

    iput-object p2, p0, Lbww$1$1;->a:Lbww$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lbww$1$1;->b:Lbww$1;

    iget-object v0, v0, Lbww$1;->a:Lbww;

    iget-object v0, v0, Lbww;->a:Ljava/util/Queue;

    iget-object v1, p0, Lbww$1$1;->a:Lbww$b;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lbww$1$1;->b:Lbww$1;

    iget-object v0, v0, Lbww$1;->a:Lbww;

    invoke-virtual {v0}, Lbww;->a()V

    .line 101
    return-void
.end method
