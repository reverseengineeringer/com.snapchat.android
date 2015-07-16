.class public final Lbuj;
.super Ljava/lang/Object;


# instance fields
.field a:Lbrw;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Lbtr;

.field d:Lbud;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbrw;Ljava/util/concurrent/ExecutorService;Lbtr;Lbud;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbuj;->a:Lbrw;

    .line 35
    iput-object p2, p0, Lbuj;->b:Ljava/util/concurrent/ExecutorService;

    .line 36
    iput-object p3, p0, Lbuj;->c:Lbtr;

    .line 37
    iput-object p4, p0, Lbuj;->d:Lbud;

    .line 38
    return-void
.end method
