.class public final Lbti;
.super Ljava/lang/Object;


# instance fields
.field a:Lbqv;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Lbsq;

.field d:Lbtc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbqv;Ljava/util/concurrent/ExecutorService;Lbsq;Lbtc;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbti;->a:Lbqv;

    .line 35
    iput-object p2, p0, Lbti;->b:Ljava/util/concurrent/ExecutorService;

    .line 36
    iput-object p3, p0, Lbti;->c:Lbsq;

    .line 37
    iput-object p4, p0, Lbti;->d:Lbtc;

    .line 38
    return-void
.end method
