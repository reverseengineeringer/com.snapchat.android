.class public final Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field final a:Lxc;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lxc;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lxd;->b:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lxd;->a:Lxc;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lwy$b;I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lxd;->b:Landroid/os/Handler;

    new-instance v1, Lxd$1;

    invoke-direct {v1, p0, p1, p2}, Lxd$1;-><init>(Lxd;Lwy$b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lxd;->b:Landroid/os/Handler;

    new-instance v1, Lxd$2;

    invoke-direct {v1, p0, p1}, Lxd$2;-><init>(Lxd;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
