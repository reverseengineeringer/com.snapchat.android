.class final Llx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llx;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llx;


# direct methods
.method constructor <init>(Llx;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Llx$1;->a:Llx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Llx$1;->a:Llx;

    invoke-static {v0}, Llx;->a(Llx;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Llx$1;->a:Llx;

    invoke-static {v1}, Llx;->b(Llx;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "GoogleAuthManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearGoogleOauthToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Llx$1;->a:Llx;

    invoke-static {v2}, Llx;->b(Llx;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Llx$1;->a:Llx;

    invoke-static {v0}, Llx;->c(Llx;)Ljava/lang/String;

    iget-object v0, p0, Llx$1;->a:Llx;

    invoke-static {v0}, Llx;->d(Llx;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
