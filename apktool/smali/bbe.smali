.class public final Lbbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbmc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbmb;)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lbbe$1;

    invoke-direct {v0, p0, p2}, Lbbe$1;-><init>(Lbbe;Lbmb;)V

    .line 26
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method
