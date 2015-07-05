.class public final Lbrv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbrv;


# instance fields
.field private volatile b:I

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lbrv;

    invoke-direct {v0}, Lbrv;-><init>()V

    sput-object v0, Lbrv;->a:Lbrv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lbrv;->b:I

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbrv;->c:J

    .line 15
    return-void
.end method

.method private declared-synchronized b()I
    .locals 2

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbrv;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbrv;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbrv;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lbrv;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
