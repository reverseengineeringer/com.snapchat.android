.class public final Lbpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbos;


# instance fields
.field private final a:Lbly;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Lbpo;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lbpc;-><init>(Ljava/io/File;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lbly;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lbpc;->a:Lbly;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Lbpo;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lbpc;-><init>(Ljava/io/File;J)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lbly;

    invoke-direct {v0}, Lbly;-><init>()V

    const-wide/16 v2, 0x3a98

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbly;->a(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v2, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lbly;->b(JLjava/util/concurrent/TimeUnit;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lbly;->a(Ljava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lbpc;-><init>(Lbly;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lbpc;->a:Lbly;

    new-instance v1, Lbli;

    invoke-direct {v1, p1, p2, p3}, Lbli;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lbly;->a(Lbli;)Lbly;
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
.method public final a(Landroid/net/Uri;I)Lbos$a;
    .locals 6

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-static {p2}, Lbpa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lblj;->b:Lblj;

    .line 112
    :cond_0
    :goto_0
    new-instance v1, Lbma$a;

    invoke-direct {v1}, Lbma$a;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbma$a;->a(Ljava/lang/String;)Lbma$a;

    move-result-object v1

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v1, v0}, Lbma$a;->a(Lblj;)Lbma$a;

    .line 117
    :cond_1
    iget-object v0, p0, Lbpc;->a:Lbly;

    invoke-virtual {v1}, Lbma$a;->a()Lbma;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbly;->a(Lbma;)Lblk;

    move-result-object v0

    invoke-virtual {v0}, Lblk;->a()Lbmc;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lbmc;->a()I

    move-result v0

    .line 119
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_5

    .line 120
    invoke-virtual {v1}, Lbmc;->c()Lbmd;

    move-result-object v2

    invoke-virtual {v2}, Lbmd;->close()V

    .line 121
    new-instance v2, Lbos$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lbmc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2, v0}, Lbos$b;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 101
    :cond_2
    new-instance v0, Lblj$a;

    invoke-direct {v0}, Lblj$a;-><init>()V

    .line 102
    invoke-static {p2}, Lbpa;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {v0}, Lblj$a;->a()Lblj$a;

    .line 105
    :cond_3
    invoke-static {p2}, Lbpa;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    invoke-virtual {v0}, Lblj$a;->b()Lblj$a;

    .line 108
    :cond_4
    invoke-virtual {v0}, Lblj$a;->c()Lblj;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {v1}, Lbmc;->e()Lbmc;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 127
    :goto_1
    invoke-virtual {v1}, Lbmc;->c()Lbmd;

    move-result-object v1

    .line 128
    new-instance v2, Lbos$a;

    invoke-virtual {v1}, Lbmd;->c()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1}, Lbmd;->a()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lbos$a;-><init>(Ljava/io/InputStream;ZJ)V

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
    iget-object v0, p0, Lbpc;->a:Lbly;

    invoke-virtual {v0}, Lbly;->a()Lbli;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {v0}, Lbli;->a()V
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
