.class public final Lbmv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lbmv$a;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 208
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lbmv$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbmv$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lbmv$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 230
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    invoke-direct {p0, p1, p2}, Lbmv$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lbmv;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lbmv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbmv;-><init>(Lbmv$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lbmv$a;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 250
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lbmv$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 253
    add-int/lit8 v1, v1, -0x2

    .line 249
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 256
    :cond_1
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lbmv$a;->b(Ljava/lang/String;)Lbmv$a;

    .line 265
    invoke-virtual {p0, p1, p2}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 266
    return-object p0
.end method
