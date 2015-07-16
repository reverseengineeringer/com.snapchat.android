.class public final Lbqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpt;


# instance fields
.field private final a:Lbmz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Lbqp;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lbqd;-><init>(Ljava/io/File;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lbmz;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lbqd;->a:Lbmz;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Lbqp;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lbqd;-><init>(Ljava/io/File;J)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lbmz;

    invoke-direct {v0}, Lbmz;-><init>()V

    const-wide/16 v2, 0x3a98

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbmz;->a(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v2, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbmz;->b(JLjava/util/concurrent/TimeUnit;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lbmz;->a(Ljava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lbqd;-><init>(Lbmz;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lbqd;->a:Lbmz;

    new-instance v1, Lbmj;

    invoke-direct {v1, p1, p2, p3}, Lbmj;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lbmz;->a(Lbmj;)Lbmz;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;I)Lbpt$a;
    .locals 6

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-static {p2}, Lbqb;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lbmk;->b:Lbmk;

    .line 112
    :cond_0
    :goto_0
    new-instance v1, Lbnb$a;

    invoke-direct {v1}, Lbnb$a;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbnb$a;->a(Ljava/lang/String;)Lbnb$a;

    move-result-object v1

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v1, v0}, Lbnb$a;->a(Lbmk;)Lbnb$a;

    .line 117
    :cond_1
    iget-object v0, p0, Lbqd;->a:Lbmz;

    invoke-virtual {v1}, Lbnb$a;->a()Lbnb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmz;->a(Lbnb;)Lbml;

    move-result-object v0

    invoke-virtual {v0}, Lbml;->a()Lbnd;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lbnd;->a()I

    move-result v0

    .line 119
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_5

    .line 120
    invoke-virtual {v1}, Lbnd;->c()Lbne;

    move-result-object v2

    invoke-virtual {v2}, Lbne;->close()V

    .line 121
    new-instance v2, Lbpt$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lbnd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2, v0}, Lbpt$b;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 101
    :cond_2
    new-instance v0, Lbmk$a;

    invoke-direct {v0}, Lbmk$a;-><init>()V

    .line 102
    invoke-static {p2}, Lbqb;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {v0}, Lbmk$a;->a()Lbmk$a;

    .line 105
    :cond_3
    invoke-static {p2}, Lbqb;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    invoke-virtual {v0}, Lbmk$a;->b()Lbmk$a;

    .line 108
    :cond_4
    invoke-virtual {v0}, Lbmk$a;->c()Lbmk;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {v1}, Lbnd;->e()Lbnd;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 127
    :goto_1
    invoke-virtual {v1}, Lbnd;->c()Lbne;

    move-result-object v1

    .line 128
    new-instance v2, Lbpt$a;

    invoke-virtual {v1}, Lbne;->c()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1}, Lbne;->a()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lbpt$a;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v2

    .line 125
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbqd;->a:Lbmz;

    invoke-virtual {v0}, Lbmz;->a()Lbmj;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {v0}, Lbmj;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
