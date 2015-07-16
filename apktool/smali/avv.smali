.class public final Lavv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavv$1;,
        Lavv$a;
    }
.end annotation


# static fields
.field protected static final APP_CREATION_TIMED_METRIC:Ljava/lang/String; = "APP_CREATION_TIMED"

.field private static final TAG:Ljava/lang/String; = "StartupContext"

.field private static mStartupPath:Lcom/snapchat/android/util/StartupPath;

.field private static sStartupContext:Lavv;


# instance fields
.field private isAppStart:Z

.field public mAppCreationTime:Ljava/lang/Long;

.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lavv;

    invoke-direct {v0}, Lavv;-><init>()V

    sput-object v0, Lavv;->sStartupContext:Lavv;

    .line 19
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0}, Lavv;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavv;->isAppStart:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    .line 44
    iput-object p1, p0, Lavv;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 45
    return-void
.end method

.method public static a()Lavv;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lavv;->sStartupContext:Lavv;

    return-object v0
.end method

.method public static b()Lcom/snapchat/android/util/StartupPath;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    return-object v0
.end method

.method public static c()J
    .locals 9

    .prologue
    .line 134
    const-wide/16 v2, 0x64

    .line 136
    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "_SC_CLK_TCK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 137
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "os"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sysconf"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 140
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static d()Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    const/16 v3, 0x14

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 160
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 162
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 158
    :goto_1
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 157
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 92
    sget-object v0, Lavv$1;->$SwitchMap$com$snapchat$android$util$StartupContext$Checkpoint:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 119
    :goto_0
    return-void

    .line 94
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 95
    iput-boolean v2, p0, Lavv;->isAppStart:Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-boolean v0, p0, Lavv;->isAppStart:Z

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 111
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lavv;->isAppStart:Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 105
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    aput-object v1, v0, v4

    .line 106
    const-string v0, "APP_CREATION_TIMED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iget-object v1, p0, Lavv;->mAppCreationTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_1

    .line 114
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Lavv;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
