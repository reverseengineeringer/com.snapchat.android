.class public final Lbug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lbuf;

    invoke-direct {v0, p1}, Lbuf;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
