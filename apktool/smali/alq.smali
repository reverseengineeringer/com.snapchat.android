.class public final Lalq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalq$a;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field private final f:Lbgk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lalq;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, v0}, Lalq;-><init>(Lbgk;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lbgk;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lalq;->a:I

    .line 58
    iput-wide v2, p0, Lalq;->b:J

    .line 59
    iput-wide v2, p0, Lalq;->c:J

    .line 60
    iput v0, p0, Lalq;->d:I

    .line 68
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgk;

    iput-object v0, p0, Lalq;->f:Lbgk;

    .line 69
    return-void
.end method
