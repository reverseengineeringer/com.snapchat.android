.class public final Lbnd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnd$a;
    }
.end annotation


# instance fields
.field public final a:Lbnb;

.field public final b:Lbna;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lbmu;

.field public final f:Lbmv;

.field public final g:Lbne;

.field public h:Lbnd;

.field i:Lbnd;

.field final j:Lbnd;

.field private volatile k:Lbmk;


# direct methods
.method private constructor <init>(Lbnd$a;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lbnd$a;->a:Lbnb;

    iput-object v0, p0, Lbnd;->a:Lbnb;

    .line 52
    iget-object v0, p1, Lbnd$a;->b:Lbna;

    iput-object v0, p0, Lbnd;->b:Lbna;

    .line 53
    iget v0, p1, Lbnd$a;->c:I

    iput v0, p0, Lbnd;->c:I

    .line 54
    iget-object v0, p1, Lbnd$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lbnd;->d:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lbnd$a;->e:Lbmu;

    iput-object v0, p0, Lbnd;->e:Lbmu;

    .line 56
    iget-object v0, p1, Lbnd$a;->f:Lbmv$a;

    invoke-virtual {v0}, Lbmv$a;->a()Lbmv;

    move-result-object v0

    iput-object v0, p0, Lbnd;->f:Lbmv;

    .line 57
    iget-object v0, p1, Lbnd$a;->g:Lbne;

    iput-object v0, p0, Lbnd;->g:Lbne;

    .line 58
    iget-object v0, p1, Lbnd$a;->h:Lbnd;

    iput-object v0, p0, Lbnd;->h:Lbnd;

    .line 59
    iget-object v0, p1, Lbnd$a;->i:Lbnd;

    iput-object v0, p0, Lbnd;->i:Lbnd;

    .line 60
    iget-object v0, p1, Lbnd$a;->j:Lbnd;

    iput-object v0, p0, Lbnd;->j:Lbnd;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lbnd$a;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lbnd;-><init>(Lbnd$a;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lbnd;->c:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbnd;->f:Lbmv;

    invoke-virtual {v0, p1}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbnd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lbne;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbnd;->g:Lbne;

    return-object v0
.end method

.method public final d()Lbnd$a;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lbnd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbnd$a;-><init>(Lbnd;B)V

    return-object v0
.end method

.method public final e()Lbnd;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lbnd;->i:Lbnd;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbmn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lbnd;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 197
    :goto_0
    iget-object v1, p0, Lbnd;->f:Lbmv;

    invoke-static {v1, v0}, Lboa;->a(Lbmv;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, Lbnd;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final g()Lbmk;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lbnd;->k:Lbmk;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbnd;->f:Lbmv;

    invoke-static {v0}, Lbmk;->a(Lbmv;)Lbmk;

    move-result-object v0

    iput-object v0, p0, Lbnd;->k:Lbmk;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbnd;->b:Lbna;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbnd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbnd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbnd;->a:Lbnb;

    .line 217
    iget-object v1, v1, Lbnb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
