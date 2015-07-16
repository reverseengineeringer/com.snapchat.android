.class public final Laqk;
.super Lbgm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqk$a;,
        Laqk$b;
    }
.end annotation


# instance fields
.field public final a:Lbj;

.field public final b:Lbj;

.field public c:Lbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbh",
            "<",
            "Laqk$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lbgf;

.field public f:Lbgf;

.field private g:Lbgf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lawi;->a()Lbp;

    move-result-object v0

    invoke-direct {p0, v0}, Laqk;-><init>(Lbp;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lbj;Lbj;)V
    .locals 3
    .param p1    # Lbj;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbj;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lbgm;-><init>()V

    .line 50
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Laqk;->c:Lbh;

    .line 52
    iput-boolean v2, p0, Laqk;->d:Z

    .line 56
    invoke-static {}, Lbgf;->a()Lbgf;

    move-result-object v0

    iput-object v0, p0, Laqk;->g:Lbgf;

    .line 57
    invoke-static {}, Lbgf;->a()Lbgf;

    move-result-object v0

    iput-object v0, p0, Laqk;->e:Lbgf;

    .line 58
    invoke-static {}, Lbgf;->a()Lbgf;

    move-result-object v0

    iput-object v0, p0, Laqk;->f:Lbgf;

    .line 70
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    iput-object v0, p0, Laqk;->a:Lbj;

    .line 71
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    iput-object v0, p0, Laqk;->b:Lbj;

    .line 73
    new-instance v0, Laqk$a;

    invoke-direct {v0, p0, v2}, Laqk$a;-><init>(Laqk;B)V

    .line 74
    iget-object v1, p0, Laqk;->a:Lbj;

    invoke-virtual {v1, v0}, Lbj;->a(Lbn;)Lbj;

    .line 75
    iget-object v1, p0, Laqk;->b:Lbj;

    invoke-virtual {v1, v0}, Lbj;->a(Lbn;)Lbj;

    .line 77
    iget-object v0, p0, Laqk;->a:Lbj;

    iput-boolean v2, v0, Lbj;->b:Z

    .line 78
    iget-object v0, p0, Laqk;->b:Lbj;

    iput-boolean v2, v0, Lbj;->b:Z

    .line 79
    return-void
.end method

.method private constructor <init>(Lbp;)V
    .locals 2
    .param p1    # Lbp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p1}, Lbp;->a()Lbj;

    move-result-object v0

    invoke-virtual {p1}, Lbp;->a()Lbj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laqk;-><init>(Lbj;Lbj;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lbgf;)Laqk;
    .locals 4
    .param p1    # Lbgf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-virtual {p0}, Laqk;->f()V

    .line 168
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-boolean v0, p0, Laqk;->d:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Laqk;->a:Lbj;

    iget-wide v2, p1, Lbgf;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 172
    iget-object v0, p0, Laqk;->b:Lbj;

    iget-wide v2, p1, Lbgf;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 177
    :goto_0
    return-object p0

    .line 174
    :cond_0
    iput-object p1, p0, Laqk;->g:Lbgf;

    goto :goto_0
.end method

.method public final a(Lbl;)Laqk;
    .locals 1
    .param p1    # Lbl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-virtual {p0}, Laqk;->f()V

    .line 96
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Laqk;->a:Lbj;

    invoke-virtual {v0, p1}, Lbj;->a(Lbl;)Lbj;

    .line 99
    iget-object v0, p0, Laqk;->b:Lbj;

    invoke-virtual {v0, p1}, Lbj;->a(Lbl;)Lbj;

    .line 101
    return-object p0
.end method

.method public final a(Z)Laqk;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 234
    invoke-virtual {p0}, Laqk;->f()V

    .line 236
    iget-boolean v0, p0, Laqk;->d:Z

    if-ne v0, p1, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 240
    :cond_0
    if-eqz p1, :cond_4

    .line 241
    iget-object v0, p0, Laqk;->f:Lbgf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqk;->a:Lbj;

    iget-object v1, p0, Laqk;->f:Lbgf;

    iget-wide v2, v1, Lbgf;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->c(D)Lbj;

    iget-object v0, p0, Laqk;->b:Lbj;

    iget-object v1, p0, Laqk;->f:Lbgf;

    iget-wide v2, v1, Lbgf;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->c(D)Lbj;

    :cond_1
    iget-object v0, p0, Laqk;->e:Lbgf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laqk;->a:Lbj;

    iget-object v1, p0, Laqk;->e:Lbgf;

    iget-wide v2, v1, Lbgf;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->a(D)Lbj;

    iget-object v0, p0, Laqk;->b:Lbj;

    iget-object v1, p0, Laqk;->e:Lbgf;

    iget-wide v2, v1, Lbgf;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->a(D)Lbj;

    :cond_2
    iget-object v0, p0, Laqk;->g:Lbgf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laqk;->a:Lbj;

    iget-object v1, p0, Laqk;->g:Lbgf;

    iget-wide v2, v1, Lbgf;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    iget-object v0, p0, Laqk;->b:Lbj;

    iget-object v1, p0, Laqk;->g:Lbgf;

    iget-wide v2, v1, Lbgf;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 242
    :cond_3
    iget-object v0, p0, Laqk;->a:Lbj;

    iget-wide v0, v0, Lbj;->h:D

    iget-object v2, p0, Laqk;->a:Lbj;

    add-double v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lbj;->b(D)Lbj;

    iget-object v2, p0, Laqk;->a:Lbj;

    invoke-virtual {v2, v0, v1}, Lbj;->b(D)Lbj;

    iget-object v0, p0, Laqk;->b:Lbj;

    iget-wide v0, v0, Lbj;->h:D

    iget-object v2, p0, Laqk;->b:Lbj;

    add-double v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lbj;->b(D)Lbj;

    iget-object v2, p0, Laqk;->b:Lbj;

    invoke-virtual {v2, v0, v1}, Lbj;->b(D)Lbj;

    .line 247
    :goto_1
    iput-boolean p1, p0, Laqk;->d:Z

    goto :goto_0

    .line 244
    :cond_4
    new-instance v0, Lbgf;

    iget-object v1, p0, Laqk;->a:Lbj;

    iget-wide v2, v1, Lbj;->h:D

    iget-object v1, p0, Laqk;->b:Lbj;

    iget-wide v4, v1, Lbj;->h:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbgf;-><init>(DD)V

    iput-object v0, p0, Laqk;->g:Lbgf;

    new-instance v0, Lbgf;

    iget-object v1, p0, Laqk;->a:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->a:D

    iget-object v1, p0, Laqk;->b:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v4, v1, Lbj$a;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbgf;-><init>(DD)V

    iput-object v0, p0, Laqk;->e:Lbgf;

    new-instance v0, Lbgf;

    iget-object v1, p0, Laqk;->a:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->b:D

    iget-object v1, p0, Laqk;->b:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v4, v1, Lbj$a;->b:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbgf;-><init>(DD)V

    iput-object v0, p0, Laqk;->f:Lbgf;

    goto :goto_1
.end method

.method public final b(Z)Laqk;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Laqk;->f()V

    .line 268
    iget-object v0, p0, Laqk;->a:Lbj;

    iput-boolean p1, v0, Lbj;->b:Z

    .line 269
    iget-object v0, p0, Laqk;->b:Lbj;

    iput-boolean p1, v0, Lbj;->b:Z

    .line 270
    return-object p0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Laqk;->a:Lbj;

    invoke-virtual {v0}, Lbj;->a()V

    .line 84
    iget-object v0, p0, Laqk;->b:Lbj;

    invoke-virtual {v0}, Lbj;->a()V

    .line 86
    iget-object v0, p0, Laqk;->c:Lbh;

    invoke-virtual {v0}, Lbh;->a()V

    .line 87
    return-void
.end method
