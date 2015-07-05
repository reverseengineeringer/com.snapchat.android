.class public Lanr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanr$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public c:I

.field public d:D

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public i:J

.field public j:I

.field k:D

.field private final l:Lcom/snapchat/android/scan/SnapScan;

.field private m:I

.field private n:I

.field private final o:Lans;

.field private final p:Lanr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lanr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILans;)V
    .locals 7

    .prologue
    .line 55
    new-instance v1, Lcom/snapchat/android/scan/SnapScan;

    invoke-direct {v1}, Lcom/snapchat/android/scan/SnapScan;-><init>()V

    sget-object v2, Lauh;->SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lanr;-><init>(Lcom/snapchat/android/scan/SnapScan;Ljava/util/concurrent/Executor;IIILans;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/scan/SnapScan;Ljava/util/concurrent/Executor;IIILans;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lanr;->l:Lcom/snapchat/android/scan/SnapScan;

    .line 63
    iput-object p2, p0, Lanr;->b:Ljava/util/concurrent/Executor;

    .line 64
    iput p3, p0, Lanr;->c:I

    .line 65
    iput p4, p0, Lanr;->m:I

    .line 66
    iput p5, p0, Lanr;->n:I

    .line 67
    iput-object p6, p0, Lanr;->o:Lans;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lanr;->p:Lanr$a;

    .line 70
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lanr;->d:D

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lanr;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    return-void
.end method

.method public static a(J)D
    .locals 4

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lanr;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lanr;->k:D

    return-wide p1
.end method

.method static synthetic a(Lanr;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lanr;->m:I

    return v0
.end method

.method static synthetic b(J)D
    .locals 2

    .prologue
    .line 21
    invoke-static {p0, p1}, Lanr;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lanr;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lanr;->n:I

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lanr;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lanr;)Lcom/snapchat/android/scan/SnapScan;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanr;->l:Lcom/snapchat/android/scan/SnapScan;

    return-object v0
.end method

.method static synthetic d(Lanr;)I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lanr;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lanr;->j:I

    return v0
.end method

.method static synthetic e(Lanr;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lanr;)Lanr$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanr;->p:Lanr$a;

    return-object v0
.end method

.method static synthetic g(Lanr;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lanr;->i:J

    return-wide v0
.end method

.method static synthetic h(Lanr;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lanr;->j:I

    return v0
.end method

.method static synthetic i(Lanr;)D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lanr;->k:D

    return-wide v0
.end method

.method static synthetic j(Lanr;)Lans;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanr;->o:Lans;

    return-object v0
.end method

.method static synthetic k(Lanr;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Lanr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    sget-object v0, Lanr;->a:Ljava/lang/String;

    const-string v1, "Disable Scanner..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    return-void
.end method
