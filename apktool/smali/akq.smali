.class public final Lakq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDatabaseLoader"


# instance fields
.field private final mClock:Lbhk;

.field final mLifecycleAnalytics:Lnw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lnw;->a()Lnw;

    move-result-object v0

    new-instance v1, Lbhl;

    invoke-direct {v1}, Lbhl;-><init>()V

    iget-object v1, v1, Lbhl;->mClock:Lbhk;

    invoke-direct {p0, v0, v1}, Lakq;-><init>(Lnw;Lbhk;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lnw;Lbhk;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lakq;->mLifecycleAnalytics:Lnw;

    .line 25
    iput-object p2, p0, Lakq;->mClock:Lbhk;

    .line 26
    return-void
.end method
