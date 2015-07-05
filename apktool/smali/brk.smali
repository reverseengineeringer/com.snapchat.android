.class public Lbrk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrk$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private final d:Ljava/io/File;

.field private e:Lbrx;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lbrk$a;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lbrk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbrk;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbrj;)V
    .locals 8

    .prologue
    .line 49
    iget-object v0, p2, Lbrj;->i:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//com.crittercism//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lbrj;->l:Lbrk$a;

    iget-object v3, p2, Lbrj;->m:Lbrx;

    iget v4, p2, Lbrj;->k:I

    iget v5, p2, Lbrj;->j:I

    iget-object v6, p2, Lbrj;->o:Ljava/lang/String;

    iget-object v7, p2, Lbrj;->n:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbrk;-><init>(Ljava/io/File;Lbrk$a;Lbrx;IILjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lbrk$a;Lbrx;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbrk;->j:Z

    .line 70
    iput-object p2, p0, Lbrk;->i:Lbrk$a;

    .line 71
    iput-object p3, p0, Lbrk;->e:Lbrx;

    .line 72
    iput p4, p0, Lbrk;->h:I

    .line 73
    iput p5, p0, Lbrk;->g:I

    .line 74
    iput-object p6, p0, Lbrk;->a:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lbrk;->b:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lbrk;->d:Ljava/io/File;

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 80
    invoke-direct {p0}, Lbrk;->d()Z

    .line 81
    invoke-direct {p0}, Lbrk;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lbrk;->f:I

    .line 82
    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 107
    iget-object v1, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iput-boolean v0, p0, Lbrk;->j:Z

    .line 110
    iget-object v1, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a directory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lbrk;->j:Z

    if-nez v1, :cond_2

    :goto_1
    return v0

    .line 116
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 187
    :cond_0
    invoke-virtual {p0}, Lbrk;->b()I

    move-result v0

    invoke-direct {p0}, Lbrk;->i()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 188
    invoke-direct {p0}, Lbrk;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :cond_1
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lbrk;->i:Lbrk$a;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    iget-object v2, p0, Lbrk;->i:Lbrk$a;

    invoke-direct {p0}, Lbrk;->g()[Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    iget v5, v2, Lbrk$a;->a:I

    if-le v4, v5, :cond_2

    iget v1, v2, Lbrk$a;->a:I

    aget-object v1, v3, v1

    .line 205
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()[Ljava/io/File;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lbrk;->h()[Ljava/io/File;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 222
    return-object v0
.end method

.method private h()[Ljava/io/File;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 232
    :cond_0
    return-object v0
.end method

.method private declared-synchronized i()I
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbrk;->g:I
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
.method public final a(Landroid/content/Context;)Lbrk;
    .locals 8

    .prologue
    .line 94
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "//com.crittercism/pending/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbrk;->i:Lbrk$a;

    iget-object v3, p0, Lbrk;->e:Lbrx;

    iget v4, p0, Lbrk;->h:I

    iget v5, p0, Lbrk;->g:I

    iget-object v6, p0, Lbrk;->a:Ljava/lang/String;

    iget-object v7, p0, Lbrk;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lbrk;-><init>(Ljava/io/File;Lbrk$a;Lbrx;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbrk;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lbrk;->h()[Ljava/io/File;

    move-result-object v1

    .line 214
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 215
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lbrk;)V
    .locals 7

    .prologue
    .line 245
    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lbrk;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 258
    if-gez v0, :cond_3

    move-object v0, p1

    move-object v1, p0

    .line 266
    :goto_1
    monitor-enter v1

    .line 267
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    invoke-direct {p0}, Lbrk;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p1}, Lbrk;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 269
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 263
    goto :goto_1

    .line 272
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lbrk;->g()[Ljava/io/File;

    move-result-object v3

    .line 273
    const/4 v2, 0x0

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 274
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lbrk;->d:Ljava/io/File;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    aget-object v5, v3, v2

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 278
    :cond_5
    invoke-direct {p1}, Lbrk;->e()V

    .line 279
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    :try_start_4
    monitor-exit v1

    goto :goto_0

    .line 279
    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final declared-synchronized a(Lbrw;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbrk;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 134
    :cond_1
    :try_start_1
    iget v2, p0, Lbrk;->f:I

    iget v3, p0, Lbrk;->h:I

    if-lt v2, v3, :cond_2

    .line 135
    invoke-static {}, Lbtd;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lbrk;->d:Ljava/io/File;

    invoke-interface {p1}, Lbrw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lbrk;->b()I

    move-result v3

    .line 143
    invoke-direct {p0}, Lbrk;->i()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lbrk;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    :cond_3
    invoke-direct {p0}, Lbrk;->i()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbrk;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :cond_4
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :try_start_4
    invoke-interface {p1, v3}, Lbrw;->a(Ljava/io/OutputStream;)V

    .line 163
    iget v4, p0, Lbrk;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbrk;->f:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    move v0, v1

    .line 181
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not open output stream to : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->a()V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to close file "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 165
    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to write to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->f()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 174
    :catch_3
    move-exception v1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to close file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->f()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 171
    :catchall_1
    move-exception v0

    .line 172
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    :goto_2
    :try_start_b
    throw v0

    .line 174
    :catch_4
    move-exception v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to close file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->f()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbrk;->h()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 5

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-direct {p0}, Lbrk;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    monitor-exit p0

    return-object v0

    .line 290
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lbrk;->g()[Ljava/io/File;

    move-result-object v2

    .line 293
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 294
    iget-object v3, p0, Lbrk;->e:Lbrx;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lbrx;->a(Ljava/io/File;)Lbri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
