.class public final Lbtu;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtu$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/BufferedReader;

.field private b:Ljava/io/InputStream;

.field private c:Landroid/os/ConditionVariable;

.field private d:Ljava/lang/Process;

.field private e:Ljava/lang/StringBuilder;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Process;Landroid/os/ConditionVariable;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lbtt;-><init>()V

    .line 14
    iput-object v0, p0, Lbtu;->a:Ljava/io/BufferedReader;

    .line 15
    iput-object v0, p0, Lbtu;->b:Ljava/io/InputStream;

    .line 25
    iput-object p2, p0, Lbtu;->c:Landroid/os/ConditionVariable;

    .line 26
    iput-object p1, p0, Lbtu;->d:Ljava/lang/Process;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lbtu;->e:Ljava/lang/StringBuilder;

    .line 28
    iput p3, p0, Lbtu;->f:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtu;->g:Z

    .line 30
    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbtu;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    iget v0, p0, Lbtu;->f:I

    sget v1, Lbtu$a;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lbtu;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbtu;->b:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lbtu;->b:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbtu;->a:Ljava/io/BufferedReader;

    :goto_1
    iget-object v0, p0, Lbtu;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbtu;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lbue;->b()V

    invoke-static {}, Lbue;->c()V

    :cond_0
    :goto_2
    :try_start_1
    iget-object v0, p0, Lbtu;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    iget-object v0, p0, Lbtu;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iput-object v3, p0, Lbtu;->a:Ljava/io/BufferedReader;

    .line 93
    invoke-direct {p0}, Lbtu;->c()V

    .line 94
    iget-object v0, p0, Lbtu;->c:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lbtu;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 97
    :cond_1
    return-void

    .line 92
    :cond_2
    :try_start_3
    iget-object v0, p0, Lbtu;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when attempting to read stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->b()V

    invoke-static {}, Lbue;->c()V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {}, Lbue;->b()V

    invoke-static {}, Lbue;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lbtu;->a:Ljava/io/BufferedReader;

    throw v0

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {}, Lbue;->b()V

    invoke-static {}, Lbue;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public final declared-synchronized b()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbtu;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtu;->e:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
