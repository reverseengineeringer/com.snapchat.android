.class public final Laju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:Lcht;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field public start:Lcht;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field


# virtual methods
.method public final a(Lcht;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Laju;->start:Lcht;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laju;->end:Lcht;

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Laju;->start:Lcht;

    invoke-virtual {v1, p1}, Lcht;->c(Lcic;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laju;->end:Lcht;

    invoke-virtual {v1, p1}, Lcht;->b(Lcic;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
