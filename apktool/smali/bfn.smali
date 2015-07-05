.class public final Lbfn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mCapacity:I

.field public final mResources:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iput v0, p0, Lbfn;->mCapacity:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p1, p2}, Lbfn;->a(Ljavax/inject/Provider;I)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lbfn;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 29
    return-void
.end method

.method private static a(Ljavax/inject/Provider;I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;I)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 92
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
