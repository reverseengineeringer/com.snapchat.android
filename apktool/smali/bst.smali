.class public final Lbst;
.super Ljava/lang/Object;

# interfaces
.implements Lbss;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "logcat -t 100 -v time"

    :goto_0
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbst;->a:[Ljava/lang/String;

    .line 23
    return-void

    .line 22
    :cond_0
    const-string v0, "logcat -d -v time"

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    .line 76
    const/4 v0, 0x0

    .line 78
    array-length v1, p0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 79
    array-length v0, p0

    add-int/lit16 v0, v0, -0xc8

    .line 82
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 89
    :cond_2
    return-object v0
.end method

.method private b()Ljava/lang/Process;
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 41
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iget-object v2, p0, Lbst;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in createProcess(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->b()V

    .line 44
    invoke-static {}, Lbue;->c()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 114
    .line 116
    :try_start_0
    invoke-direct {p0}, Lbst;->b()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v3, Lbtu;

    sget v4, Lbtu$a;->a:I

    invoke-direct {v3, v0, v2, v4}, Lbtu;-><init>(Ljava/lang/Process;Landroid/os/ConditionVariable;I)V

    new-instance v4, Lbtu;

    const/4 v5, 0x0

    sget v6, Lbtu$a;->b:I

    invoke-direct {v4, v0, v5, v6}, Lbtu;-><init>(Ljava/lang/Process;Landroid/os/ConditionVariable;I)V

    new-instance v5, Lbuf;

    invoke-direct {v5, v3}, Lbuf;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lbuf;->start()V

    new-instance v5, Lbuf;

    invoke-direct {v5, v4}, Lbuf;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lbuf;->start()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v3}, Lbtu;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lbst;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_1
    invoke-static {}, Lbue;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_2
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unanticipated throwable in getLogcat: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->b()V

    move-object v0, v1

    .line 119
    invoke-static {}, Lbue;->c()V

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
