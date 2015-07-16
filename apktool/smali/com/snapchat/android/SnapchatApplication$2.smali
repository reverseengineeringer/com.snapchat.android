.class final Lcom/snapchat/android/SnapchatApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapchatApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lcom/snapchat/android/SnapchatApplication;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/SnapchatApplication$2;->b:Lcom/snapchat/android/SnapchatApplication;

    iput-object p2, p0, Lcom/snapchat/android/SnapchatApplication$2;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/snapchat/android/SnapchatApplication;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/SnapchatApplication$a;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/snapchat/android/SnapchatApplication$2;->b:Lcom/snapchat/android/SnapchatApplication;

    invoke-interface {v0, v2, p1, p2}, Lcom/snapchat/android/SnapchatApplication$a;->a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$2;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 172
    return-void
.end method
