.class public final Lez$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lez$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lez$c;->a:Ljava/util/List;

    .line 999
    return-void
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .prologue
    .line 1040
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 1041
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1042
    new-instance v2, Lez$b;

    invoke-direct {v2}, Lez$b;-><init>()V

    .line 1043
    invoke-virtual {v2, p1}, Lez$b;->readExternal(Ljava/io/ObjectInput;)V

    .line 1044
    iget-object v3, p0, Lez$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lez$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1033
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1034
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1035
    iget-object v0, p0, Lez$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lez$b;

    invoke-virtual {v0, p1}, Lez$b;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1034
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1037
    :cond_0
    return-void
.end method
