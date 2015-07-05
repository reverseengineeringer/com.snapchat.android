.class public final Lwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg;


# instance fields
.field final a:Lwg;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lwg;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lwh;->b:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lwh;->a:Lwg;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lwc$b;I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lwh;->b:Landroid/os/Handler;

    new-instance v1, Lwh$1;

    invoke-direct {v1, p0, p1, p2}, Lwh$1;-><init>(Lwh;Lwc$b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lwh;->b:Landroid/os/Handler;

    new-instance v1, Lwh$2;

    invoke-direct {v1, p0, p1}, Lwh$2;-><init>(Lwh;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
