.class public final Landroid/support/v4/util/AtomicFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    .line 54
    return-void
.end method

.method private delete()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    return-void
.end method

.method private failWrite(Ljava/io/FileOutputStream;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 142
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 143
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 144
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishWrite(Ljava/io/FileOutputStream;)V
    .locals 1

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 125
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 126
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getBaseFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method private openRead()Ljava/io/FileInputStream;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 168
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private readFully()[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 179
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 180
    new-array v1, v1, [B

    .line 182
    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 185
    if-gtz v2, :cond_1

    .line 199
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .line 190
    :cond_1
    add-int/2addr v2, v0

    .line 191
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 192
    array-length v4, v1

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_2

    .line 193
    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 194
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, v0

    move v0, v2

    .line 197
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private startWrite()Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t rename file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t create directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 1

    .prologue
    .line 205
    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
