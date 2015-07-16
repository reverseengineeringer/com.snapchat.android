.class public final Lkg;
.super Lml;
.source "SourceFile"


# instance fields
.field private additionalInfo:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 20
    const-string v0, "PROFILE_PAGE_VIEW"

    iput-object v0, p0, Lkg;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
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
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v1, "event_name"

    const-string v2, "PROFILE_PAGE_VIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lkg;->additionalInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "additional_info"

    iget-object v2, p0, Lkg;->additionalInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 39
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

    .line 40
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 42
    :cond_4
    check-cast p1, Lkg;

    .line 44
    iget-object v2, p0, Lkg;->additionalInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkg;->additionalInfo:Ljava/lang/String;

    iget-object v3, p1, Lkg;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lkg;->additionalInfo:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 51
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lkg;->additionalInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 52
    return v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
