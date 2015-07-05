.class public final Laiy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:Lcgs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field public start:Lcgs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field


# virtual methods
.method public final a(Lcgs;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Laiy;->start:Lcgs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laiy;->end:Lcgs;

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Laiy;->start:Lcgs;

    invoke-virtual {v1, p1}, Lcgs;->c(Lchb;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laiy;->end:Lcgs;

    invoke-virtual {v1, p1}, Lcgs;->b(Lchb;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
