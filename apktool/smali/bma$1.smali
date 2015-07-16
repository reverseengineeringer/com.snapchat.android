.class public final Lbma$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbma;


# direct methods
.method public constructor <init>(Lbma;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lbma$1;->b:Lbma;

    iput-object p2, p0, Lbma$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iget-object v4, p0, Lbma$1;->b:Lbma;

    iget-object v1, p0, Lbma$1;->a:Landroid/content/Context;

    const-string v2, "YORICK"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lbmf;->b()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {v1}, Lbma;->a(Landroid/content/Context;)I

    move-result v1

    const-string v6, "LAST_INSTALL_VERSION"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v6, "/data/anr/traces.txt"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v6, Lbmg;

    invoke-direct {v6, v2}, Lbmg;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v7, "/data/anr/traces.txt"

    invoke-direct {v1, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6, v1}, Lbma;->a(Lbmg;Ljava/io/FileReader;)Lbme;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_3
    invoke-static {v1}, Lbmd;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lbma$1;->b:Lbma;

    iget-object v1, v1, Lbma;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbma$1;->b:Lbma;

    iget-object v1, v1, Lbma;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_2
    :try_start_4
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "LAST_INSTALL_VERSION"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LAST_DETECTED_ANR"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v0

    goto :goto_1

    :cond_3
    :try_start_5
    iget-wide v6, v2, Lbme;->a:J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    :try_start_6
    invoke-static {v1}, Lbmd;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_5
    :try_start_7
    const-string v8, "LAST_DETECTED_ANR"

    const-wide/high16 v10, -0x8000000000000000L

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "LAST_DETECTED_ANR"

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v0, v4, Lbma;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmc;

    new-instance v4, Lbmb$a;

    iget-object v5, v2, Lbme;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Lbmb$a;-><init>(Ljava/lang/String;)V

    new-instance v5, Lbmb;

    iget-object v6, v4, Lbmb$a;->a:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lbmb;-><init>(Ljava/lang/String;B)V

    iget-object v6, v4, Lbmb$a;->b:[Ljava/lang/StackTraceElement;

    if-eqz v6, :cond_7

    iget-object v4, v4, Lbmb$a;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v5, v4}, Lbmb;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Created an error "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbmf;->a()V

    iget-object v4, v2, Lbme;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Lbmc;->a(Ljava/lang/String;Lbmb;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v1}, Lbmd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v1}, Lbmd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lbmd;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method
