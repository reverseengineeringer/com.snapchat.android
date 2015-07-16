.class public Lnet/hockeyapp/android/ExpiryInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lbwn;->b()Lbwo;

    move-result-object v0

    const/16 v1, 0x300

    invoke-static {v0, v1}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Lnet/hockeyapp/android/views/ExpiryInfoView;

    invoke-static {}, Lbwn;->b()Lbwo;

    move-result-object v1

    const/16 v2, 0x301

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/views/ExpiryInfoView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setContentView(Landroid/view/View;)V

    .line 56
    return-void
.end method
