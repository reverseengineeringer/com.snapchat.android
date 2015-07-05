.class public final Lajw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDatabaseLoader"


# instance fields
.field private final mClock:Lbgk;

.field final mLifecycleAnalytics:Lnf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lnf;->a()Lnf;

    move-result-object v0

    new-instance v1, Lbgl;

    invoke-direct {v1}, Lbgl;-><init>()V

    iget-object v1, v1, Lbgl;->mClock:Lbgk;

    invoke-direct {p0, v0, v1}, Lajw;-><init>(Lnf;Lbgk;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lnf;Lbgk;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lajw;->mLifecycleAnalytics:Lnf;

    .line 25
    iput-object p2, p0, Lajw;->mClock:Lbgk;

    .line 26
    return-void
.end method
