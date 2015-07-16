.class public final Lavf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavf$a;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field public static final HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final KEEP_ALIVE:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I = 0x40

.field public static final MEDIA_PLAYER_SERIAL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final SCHEDULING_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static final SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

.field public static final SERIAL_EXECUTOR_FOR_LOGGING:Ljava/util/concurrent/ExecutorService;

.field public static final SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String; = "ScExecutors"

.field public static final THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 30
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Thumbnail"

    const/16 v9, 0xa

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x40

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Network"

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x40

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Misc"

    const/16 v9, 0xa

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 57
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x40

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "HighPriority"

    const/4 v9, -0x2

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Serial"

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->SERIAL_BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "MediaPlayer"

    const/4 v9, -0x2

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->MEDIA_PLAYER_SERIAL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 88
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Logging"

    const/16 v9, 0xa

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->SERIAL_EXECUTOR_FOR_LOGGING:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "Debugging"

    const/4 v9, -0x1

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->SERIAL_EXECUTOR_FOR_DEBUGGING:Ljava/util/concurrent/ExecutorService;

    .line 109
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lavf;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lavf$a;

    const-string v0, "SqlWriteOps"

    const/16 v9, 0xa

    invoke-direct {v8, v0, v9}, Lavf$a;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lavf;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    .line 113
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lavf;->SCHEDULING_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private static a()Ljava/util/concurrent/BlockingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method
