.class public final Lavy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lakp;Lakl;Z)V
    .locals 3
    .param p0    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p1    # Lakl;
        .annotation build Lchd;
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
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lakl;->mUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    const-string v1, "my_story_ads79sdf"

    invoke-virtual {v0, v1}, Lakk;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 29
    :goto_1
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Ljava/lang/String;)Lakl;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lakl;->d(I)V

    .line 33
    invoke-virtual {v1}, Lakl;->D()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->f(Lakl;)V

    .line 35
    invoke-virtual {v1, p2}, Lakl;->e(Z)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    iget-object v1, p1, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    goto :goto_1
.end method
