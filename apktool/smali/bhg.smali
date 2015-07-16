.class public Lbhg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbhg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lbhg;-><init>(Ljava/util/concurrent/Executor;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lbhg;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbhg;->TAG:Ljava/lang/String;

    return-object v0
.end method
