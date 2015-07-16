.class public final Lbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbar;


# direct methods
.method public constructor <init>(Lbar;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lbar$3;->this$0:Lbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 195
    invoke-static {}, Lbar;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lbar;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v8

    .line 202
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/snapchat/android/SnapchatApplication;->fileList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v7, v6

    .line 203
    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_4

    .line 204
    invoke-static {v7}, Lbar;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    :try_start_0
    invoke-static {v7}, Lbar;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/snapchat/android/SnapchatApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 211
    :try_start_1
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 216
    :catch_0
    move-exception v3

    :goto_3
    invoke-static {v1}, Lbgo;->a(Ljava/util/Scanner;)V

    .line 219
    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 222
    :goto_4
    invoke-static {v7}, Lbaf;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/snapchat/android/SnapchatApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 223
    sget-object v0, Lbaj;->LOG_FILE_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/io/File;

    move v0, v6

    .line 224
    :goto_5
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 225
    sget-object v5, Lbaj;->LOG_FILE_PREFIXES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5, v7}, Lbaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/snapchat/android/SnapchatApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 218
    :cond_1
    invoke-static {v1}, Lbgo;->a(Ljava/util/Scanner;)V

    .line 219
    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .line 218
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_6
    invoke-static {v1}, Lbgo;->a(Ljava/util/Scanner;)V

    .line 219
    invoke-static {v4}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    .line 228
    :cond_2
    iget-object v0, p0, Lbar$3;->this$0:Lbar;

    invoke-static {v7}, Lbar;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lbar;->a(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 232
    :cond_4
    invoke-static {}, Lbar;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 218
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto :goto_6

    .line 216
    :catch_1
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v4

    goto :goto_3
.end method
