.class public final Lagl;
.super Lcom/snapchat/android/model/Friend;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keywords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lagl;->c:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lagl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lagl;->a:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 64
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    instance-of v0, p1, Lagl;

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    check-cast p1, Lagl;

    .line 69
    iget-object v0, p0, Lagl;->a:Ljava/lang/String;

    iget-object v1, p1, Lagl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lagl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lagl;->a:Ljava/lang/String;

    return-object v0
.end method
