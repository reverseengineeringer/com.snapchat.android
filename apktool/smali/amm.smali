.class public final Lamm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamm$a;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field private final f:Lbhk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lamm;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-direct {p0, v0}, Lamm;-><init>(Lbhk;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lbhk;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lamm;->a:I

    .line 58
    iput-wide v2, p0, Lamm;->b:J

    .line 59
    iput-wide v2, p0, Lamm;->c:J

    .line 60
    iput v0, p0, Lamm;->d:I

    .line 68
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhk;

    iput-object v0, p0, Lamm;->f:Lbhk;

    .line 69
    return-void
.end method
