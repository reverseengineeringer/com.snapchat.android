.class public final Lava;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lajv;Lajr;Z)V
    .locals 3
    .param p0    # Lajv;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p1    # Lajr;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    const-string v1, "my_story_ads79sdf"

    invoke-virtual {v0, v1}, Lajq;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 29
    :goto_1
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Ljava/lang/String;)Lajr;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lajr;->d(I)V

    .line 33
    invoke-virtual {v1}, Lajr;->C()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->f(Lajr;)V

    .line 35
    invoke-virtual {v1, p2}, Lajr;->e(Z)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    iget-object v1, p1, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    goto :goto_1
.end method
