.class final Lcom/snapchat/android/SnapchatApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapchatApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatApplication;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatApplication;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/SnapchatApplication$1;->a:Lcom/snapchat/android/SnapchatApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "SlightlySecurePreferences.initialize"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$1;->a:Lcom/snapchat/android/SnapchatApplication;

    iget-object v6, v0, Lcom/snapchat/android/SnapchatApplication;->f:Laze;

    iget-boolean v0, v6, Laze;->mShouldRunTasksInBackground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbhp;->b()V

    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-boolean v4, v6, Laze;->mBackingFileIsEmpty:Z

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, v6, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v3, "fdg78df67g5s6f2"

    invoke-virtual {v6, v1, v3}, Laze;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/fdg78df67g5s6f2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v6, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not open file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, v6, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :cond_2
    iget-object v0, v6, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    const/4 v1, 0x2

    invoke-static {v0}, Laze;->a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v3, v9}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v0, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Laze$1;

    invoke-direct {v2, v6}, Laze$1;-><init>(Laze;)V

    invoke-virtual {v2}, Laze$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v9

    invoke-virtual {v9, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v6, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object v9, v6, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, v6, Laze;->mBackingFileIsEmpty:Z

    :cond_4
    if-nez v7, :cond_7

    move v0, v4

    :goto_1
    iput-boolean v0, v6, Laze;->mBackingFileIsUpToDate:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-static {v1}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lbgo;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    iget-object v0, v6, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_b
    instance-of v3, v0, Ljava/io/IOException;

    if-nez v3, :cond_5

    instance-of v0, v0, Ljava/security/GeneralSecurityException;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v0, :cond_6

    :cond_5
    :try_start_c
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_6
    :goto_4
    :try_start_d
    invoke-static {v1}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete the file that cannot be decrypted."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_5
    :try_start_f
    invoke-static {v1}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method
