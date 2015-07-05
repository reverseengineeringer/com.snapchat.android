.class public final Leq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Leq$a;->a:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Leq$a;->b:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leq$a;->c:Ljava/util/List;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Leq$a;->d:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Leq$a;->e:Z

    .line 121
    const-string v0, ""

    iput-object v0, p0, Leq$a;->f:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Leq$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Leq$a;->g:Z

    iput-object v0, p0, Leq$a;->a:Ljava/lang/String;

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Leq$a;->h:Z

    iput-object v0, p0, Leq$a;->b:Ljava/lang/String;

    .line 176
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 177
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 178
    iget-object v2, p0, Leq$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Leq$a;->i:Z

    iput-object v0, p0, Leq$a;->d:Ljava/lang/String;

    .line 183
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Leq$a;->k:Z

    iput-object v0, p0, Leq$a;->f:Ljava/lang/String;

    .line 186
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v4, p0, Leq$a;->j:Z

    iput-boolean v0, p0, Leq$a;->e:Z

    .line 187
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Leq$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Leq$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Leq$a;->a()I

    move-result v2

    .line 157
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 158
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 159
    iget-object v0, p0, Leq$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_0
    iget-boolean v0, p0, Leq$a;->i:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 163
    iget-boolean v0, p0, Leq$a;->i:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Leq$a;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 166
    :cond_1
    iget-boolean v0, p0, Leq$a;->k:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 167
    iget-boolean v0, p0, Leq$a;->k:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Leq$a;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 170
    :cond_2
    iget-boolean v0, p0, Leq$a;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 171
    return-void
.end method
