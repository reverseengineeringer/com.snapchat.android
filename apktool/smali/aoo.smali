.class public Laoo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoo$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:I

.field public c:D

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:J

.field public i:I

.field j:D

.field private final l:Lcom/snapchat/android/scan/SnapScan;

.field private m:I

.field private n:I

.field private final o:Laop;

.field private final p:Laoo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Laoo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoo;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILaop;)V
    .locals 7

    .prologue
    .line 55
    new-instance v1, Lcom/snapchat/android/scan/SnapScan;

    invoke-direct {v1}, Lcom/snapchat/android/scan/SnapScan;-><init>()V

    sget-object v2, Lavf;->SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Laoo;-><init>(Lcom/snapchat/android/scan/SnapScan;Ljava/util/concurrent/Executor;IIILaop;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/scan/SnapScan;Ljava/util/concurrent/Executor;IIILaop;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Laoo;->l:Lcom/snapchat/android/scan/SnapScan;

    .line 63
    iput-object p2, p0, Laoo;->a:Ljava/util/concurrent/Executor;

    .line 64
    iput p3, p0, Laoo;->b:I

    .line 65
    iput p4, p0, Laoo;->m:I

    .line 66
    iput p5, p0, Laoo;->n:I

    .line 67
    iput-object p6, p0, Laoo;->o:Laop;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Laoo;->p:Laoo$a;

    .line 70
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Laoo;->c:D

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laoo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laoo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Laoo;->g:Ljava/util/concurrent/atomic/AtomicLong;

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

.method static synthetic a(Laoo;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Laoo;->j:D

    return-wide p1
.end method

.method static synthetic a(Laoo;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Laoo;->m:I

    return v0
.end method

.method static synthetic b(J)D
    .locals 2

    .prologue
    .line 21
    invoke-static {p0, p1}, Laoo;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Laoo;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Laoo;->n:I

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Laoo;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Laoo;)Lcom/snapchat/android/scan/SnapScan;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laoo;->l:Lcom/snapchat/android/scan/SnapScan;

    return-object v0
.end method

.method static synthetic d(Laoo;)I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Laoo;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoo;->i:I

    return v0
.end method

.method static synthetic e(Laoo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Laoo;)Laoo$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laoo;->p:Laoo$a;

    return-object v0
.end method

.method static synthetic g(Laoo;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Laoo;->h:J

    return-wide v0
.end method

.method static synthetic h(Laoo;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Laoo;->i:I

    return v0
.end method

.method static synthetic i(Laoo;)D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Laoo;->j:D

    return-wide v0
.end method

.method static synthetic j(Laoo;)Laop;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laoo;->o:Laop;

    return-object v0
.end method

.method static synthetic k(Laoo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laoo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Laoo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    return-void
.end method
