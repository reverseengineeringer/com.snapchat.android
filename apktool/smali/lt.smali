.class public Llt;
.super Lhk;
.source "SourceFile"


# instance fields
.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lhk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v1, p0, Llt;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "user_id"

    iget-object v2, p0, Llt;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    invoke-super {p0}, Lhk;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 31
    :cond_3
    invoke-super {p0, p1}, Lhk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 33
    :cond_4
    check-cast p1, Llt;

    .line 35
    iget-object v2, p0, Llt;->userId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llt;->userId:Ljava/lang/String;

    iget-object v3, p1, Llt;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Llt;->userId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lhk;->hashCode()I

    move-result v0

    .line 42
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Llt;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llt;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 43
    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
