.class public final Lapl;
.super Lbfm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapl$a;,
        Lapl$b;
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
            "Lapl$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lbff;

.field public f:Lbff;

.field private g:Lbff;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lavk;->a()Lbp;

    move-result-object v0

    invoke-direct {p0, v0}, Lapl;-><init>(Lbp;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lbj;Lbj;)V
    .locals 3
    .param p1    # Lbj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbj;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lbfm;-><init>()V

    .line 50
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Lapl;->c:Lbh;

    .line 52
    iput-boolean v2, p0, Lapl;->d:Z

    .line 56
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lapl;->g:Lbff;

    .line 57
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lapl;->e:Lbff;

    .line 58
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lapl;->f:Lbff;

    .line 70
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    iput-object v0, p0, Lapl;->a:Lbj;

    .line 71
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    iput-object v0, p0, Lapl;->b:Lbj;

    .line 73
    new-instance v0, Lapl$a;

    invoke-direct {v0, p0, v2}, Lapl$a;-><init>(Lapl;B)V

    .line 74
    iget-object v1, p0, Lapl;->a:Lbj;

    invoke-virtual {v1, v0}, Lbj;->a(Lbn;)Lbj;

    .line 75
    iget-object v1, p0, Lapl;->b:Lbj;

    invoke-virtual {v1, v0}, Lbj;->a(Lbn;)Lbj;

    .line 77
    iget-object v0, p0, Lapl;->a:Lbj;

    iput-boolean v2, v0, Lbj;->b:Z

    .line 78
    iget-object v0, p0, Lapl;->b:Lbj;

    iput-boolean v2, v0, Lbj;->b:Z

    .line 79
    return-void
.end method

.method private constructor <init>(Lbp;)V
    .locals 2
    .param p1    # Lbp;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p1}, Lbp;->a()Lbj;

    move-result-object v0

    invoke-virtual {p1}, Lbp;->a()Lbj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lapl;-><init>(Lbj;Lbj;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lbff;)Lapl;
    .locals 4
    .param p1    # Lbff;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-virtual {p0}, Lapl;->f()V

    .line 168
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-boolean v0, p0, Lapl;->d:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lapl;->a:Lbj;

    iget-wide v2, p1, Lbff;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 172
    iget-object v0, p0, Lapl;->b:Lbj;

    iget-wide v2, p1, Lbff;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 177
    :goto_0
    return-object p0

    .line 174
    :cond_0
    iput-object p1, p0, Lapl;->g:Lbff;

    goto :goto_0
.end method

.method public final a(Lbl;)Lapl;
    .locals 1
    .param p1    # Lbl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-virtual {p0}, Lapl;->f()V

    .line 96
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lapl;->a:Lbj;

    invoke-virtual {v0, p1}, Lbj;->a(Lbl;)Lbj;

    .line 99
    iget-object v0, p0, Lapl;->b:Lbj;

    invoke-virtual {v0, p1}, Lbj;->a(Lbl;)Lbj;

    .line 101
    return-object p0
.end method

.method public final a(Z)Lapl;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 234
    invoke-virtual {p0}, Lapl;->f()V

    .line 236
    iget-boolean v0, p0, Lapl;->d:Z

    if-ne v0, p1, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 240
    :cond_0
    if-eqz p1, :cond_4

    .line 241
    iget-object v0, p0, Lapl;->f:Lbff;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapl;->a:Lbj;

    iget-object v1, p0, Lapl;->f:Lbff;

    iget-wide v2, v1, Lbff;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->c(D)Lbj;

    iget-object v0, p0, Lapl;->b:Lbj;

    iget-object v1, p0, Lapl;->f:Lbff;

    iget-wide v2, v1, Lbff;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->c(D)Lbj;

    :cond_1
    iget-object v0, p0, Lapl;->e:Lbff;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapl;->a:Lbj;

    iget-object v1, p0, Lapl;->e:Lbff;

    iget-wide v2, v1, Lbff;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->a(D)Lbj;

    iget-object v0, p0, Lapl;->b:Lbj;

    iget-object v1, p0, Lapl;->e:Lbff;

    iget-wide v2, v1, Lbff;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->a(D)Lbj;

    :cond_2
    iget-object v0, p0, Lapl;->g:Lbff;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lapl;->a:Lbj;

    iget-object v1, p0, Lapl;->g:Lbff;

    iget-wide v2, v1, Lbff;->x:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    iget-object v0, p0, Lapl;->b:Lbj;

    iget-object v1, p0, Lapl;->g:Lbff;

    iget-wide v2, v1, Lbff;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 242
    :cond_3
    iget-object v0, p0, Lapl;->a:Lbj;

    iget-wide v0, v0, Lbj;->h:D

    iget-object v2, p0, Lapl;->a:Lbj;

    add-double v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lbj;->b(D)Lbj;

    iget-object v2, p0, Lapl;->a:Lbj;

    invoke-virtual {v2, v0, v1}, Lbj;->b(D)Lbj;

    iget-object v0, p0, Lapl;->b:Lbj;

    iget-wide v0, v0, Lbj;->h:D

    iget-object v2, p0, Lapl;->b:Lbj;

    add-double v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lbj;->b(D)Lbj;

    iget-object v2, p0, Lapl;->b:Lbj;

    invoke-virtual {v2, v0, v1}, Lbj;->b(D)Lbj;

    .line 247
    :goto_1
    iput-boolean p1, p0, Lapl;->d:Z

    goto :goto_0

    .line 244
    :cond_4
    new-instance v0, Lbff;

    iget-object v1, p0, Lapl;->a:Lbj;

    iget-wide v2, v1, Lbj;->h:D

    iget-object v1, p0, Lapl;->b:Lbj;

    iget-wide v4, v1, Lbj;->h:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    iput-object v0, p0, Lapl;->g:Lbff;

    new-instance v0, Lbff;

    iget-object v1, p0, Lapl;->a:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->a:D

    iget-object v1, p0, Lapl;->b:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v4, v1, Lbj$a;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    iput-object v0, p0, Lapl;->e:Lbff;

    new-instance v0, Lbff;

    iget-object v1, p0, Lapl;->a:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->b:D

    iget-object v1, p0, Lapl;->b:Lbj;

    iget-object v1, v1, Lbj;->d:Lbj$a;

    iget-wide v4, v1, Lbj$a;->b:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    iput-object v0, p0, Lapl;->f:Lbff;

    goto :goto_1
.end method

.method public final b(Z)Lapl;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lapl;->f()V

    .line 268
    iget-object v0, p0, Lapl;->a:Lbj;

    iput-boolean p1, v0, Lbj;->b:Z

    .line 269
    iget-object v0, p0, Lapl;->b:Lbj;

    iput-boolean p1, v0, Lbj;->b:Z

    .line 270
    return-object p0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lapl;->a:Lbj;

    invoke-virtual {v0}, Lbj;->a()V

    .line 84
    iget-object v0, p0, Lapl;->b:Lbj;

    invoke-virtual {v0}, Lbj;->a()V

    .line 86
    iget-object v0, p0, Lapl;->c:Lbh;

    invoke-virtual {v0}, Lbh;->a()V

    .line 87
    return-void
.end method
