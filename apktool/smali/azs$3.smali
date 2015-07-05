.class public final Lazs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lazs;


# direct methods
.method public constructor <init>(Lazs;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lazs$3;->this$0:Lazs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 194
    invoke-static {}, Lazs;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {}, Lazs;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v8

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/snapchat/android/SnapchatApplication;->fileList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v7, v6

    .line 202
    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_4

    .line 203
    invoke-static {v7}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    :try_start_0
    invoke-static {v7}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/snapchat/android/SnapchatApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 208
    :goto_2
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 217
    :goto_3
    invoke-static {v7}, Lazg;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/snapchat/android/SnapchatApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 218
    sget-object v0, Lazk;->LOG_FILE_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/io/File;

    move v0, v6

    .line 219
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 220
    sget-object v4, Lazk;->LOG_FILE_PREFIXES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4, v7}, Lazk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/snapchat/android/SnapchatApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 211
    :cond_1
    :try_start_1
    invoke-static {v1}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v0}, Lbfo;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 223
    :cond_2
    iget-object v0, p0, Lazs$3;->this$0:Lazs;

    const/4 v4, 0x0

    invoke-static {v7}, Lazs;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lazs;->a(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 227
    :cond_4
    invoke-static {}, Lazs;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method
