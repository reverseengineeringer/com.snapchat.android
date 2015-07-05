.class public final Lza;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lajr;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)Laio;
    .locals 2
    .param p0    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajr;",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)",
            "Laio;"
        }
    .end annotation

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    new-instance v1, Laiq;

    invoke-direct {v1, v0}, Laiq;-><init>(Z)V

    move-object v0, v1

    .line 53
    :goto_1
    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v0

    invoke-virtual {v0}, Lbjr;->b()Lbjs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lyz;

    invoke-direct {v0, p0, p1}, Lyz;-><init>(Lajr;Lcom/snapchat/android/model/StoryCollection;)V

    goto :goto_1

    .line 50
    :cond_2
    if-nez p2, :cond_3

    .line 51
    new-instance v0, Lzc;

    invoke-direct {v0, p0, p1}, Lzc;-><init>(Lajr;Lcom/snapchat/android/model/StoryCollection;)V

    goto :goto_1

    .line 53
    :cond_3
    new-instance v0, Lzb;

    invoke-direct {v0, p0, p1, p2}, Lzb;-><init>(Lajr;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V

    goto :goto_1
.end method
