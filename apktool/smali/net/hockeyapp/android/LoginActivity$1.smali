.class final Lnet/hockeyapp/android/LoginActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/LoginActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lnet/hockeyapp/android/LoginActivity$1;->a:Lnet/hockeyapp/android/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    const-string v1, "success"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity$1;->a:Lnet/hockeyapp/android/LoginActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/LoginActivity;->finish()V

    .line 126
    sget-object v0, Lbvf;->b:Lbvg;

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity$1;->a:Lnet/hockeyapp/android/LoginActivity;

    const-string v1, "Login failed. Check your credentials."

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
