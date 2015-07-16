.class public final Laap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:J


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field private final d:Lbhk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Laap$a;->a:J

    return-void
.end method

.method private constructor <init>(Lbhk;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Lbhk;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Laap$a;->d:Lbhk;

    .line 77
    iput-object p2, p0, Laap$a;->b:Ljava/lang/String;

    .line 78
    iput-wide p3, p0, Laap$a;->c:J

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Laap$a;-><init>(Lbhk;Ljava/lang/String;J)V

    .line 72
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Laap$a;->c:J

    sub-long/2addr v0, v2

    sget-wide v2, Laap$a;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
