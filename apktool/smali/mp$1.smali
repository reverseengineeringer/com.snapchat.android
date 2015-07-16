.class final Lmp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmp;->c()V
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
.field final synthetic a:Lmp;


# direct methods
.method constructor <init>(Lmp;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmp$1;->a:Lmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmp$1;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmp$1;->a:Lmp;

    invoke-static {v1}, Lmp;->b(Lmp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearGoogleOauthToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmp$1;->a:Lmp;

    invoke-static {v1}, Lmp;->b(Lmp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmp$1;->a:Lmp;

    invoke-static {v0}, Lmp;->c(Lmp;)Ljava/lang/String;

    iget-object v0, p0, Lmp$1;->a:Lmp;

    invoke-static {v0}, Lmp;->d(Lmp;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
