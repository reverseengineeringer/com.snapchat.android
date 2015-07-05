.class public abstract Lchj;
.super Lchk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchj$a;
    }
.end annotation


# instance fields
.field transient A:Lcgh;

.field transient B:Lcgh;

.field transient C:Lcgh;

.field transient D:Lcgh;

.field private transient E:Lcgm;

.field private transient F:Lcgm;

.field private transient G:Lcgm;

.field private transient H:Lcgm;

.field private transient I:Lcgm;

.field private transient J:Lcgm;

.field private transient K:Lcgm;

.field private transient L:I

.field final a:Lcgf;

.field final b:Ljava/lang/Object;

.field transient c:Lcgm;

.field transient d:Lcgm;

.field transient e:Lcgm;

.field transient f:Lcgm;

.field transient g:Lcgm;

.field transient h:Lcgh;

.field transient i:Lcgh;

.field transient j:Lcgh;

.field transient k:Lcgh;

.field transient l:Lcgh;

.field transient m:Lcgh;

.field transient n:Lcgh;

.field transient o:Lcgh;

.field transient p:Lcgh;

.field transient q:Lcgh;

.field transient r:Lcgh;

.field transient s:Lcgh;

.field transient t:Lcgh;

.field transient u:Lcgh;

.field transient v:Lcgh;

.field transient w:Lcgh;

.field transient x:Lcgh;

.field transient y:Lcgh;

.field transient z:Lcgh;


# direct methods
.method protected constructor <init>(Lcgf;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lchk;-><init>()V

    .line 100
    iput-object p1, p0, Lchj;->a:Lcgf;

    .line 101
    iput-object p2, p0, Lchj;->b:Ljava/lang/Object;

    .line 102
    new-instance v2, Lchj$a;

    invoke-direct {v2}, Lchj$a;-><init>()V

    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2, v0}, Lchj$a;->a(Lcgf;)V

    :cond_0
    invoke-virtual {p0, v2}, Lchj;->a(Lchj$a;)V

    iget-object v0, v2, Lchj$a;->a:Lcgm;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lchj;->E:Lcgm;

    iget-object v0, v2, Lchj$a;->b:Lcgm;

    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lchj;->F:Lcgm;

    iget-object v0, v2, Lchj$a;->c:Lcgm;

    if-eqz v0, :cond_3

    :goto_2
    iput-object v0, p0, Lchj;->G:Lcgm;

    iget-object v0, v2, Lchj$a;->d:Lcgm;

    if-eqz v0, :cond_4

    :goto_3
    iput-object v0, p0, Lchj;->H:Lcgm;

    iget-object v0, v2, Lchj$a;->e:Lcgm;

    if-eqz v0, :cond_5

    :goto_4
    iput-object v0, p0, Lchj;->I:Lcgm;

    iget-object v0, v2, Lchj$a;->f:Lcgm;

    if-eqz v0, :cond_6

    :goto_5
    iput-object v0, p0, Lchj;->c:Lcgm;

    iget-object v0, v2, Lchj$a;->g:Lcgm;

    if-eqz v0, :cond_7

    :goto_6
    iput-object v0, p0, Lchj;->d:Lcgm;

    iget-object v0, v2, Lchj$a;->h:Lcgm;

    if-eqz v0, :cond_8

    :goto_7
    iput-object v0, p0, Lchj;->e:Lcgm;

    iget-object v0, v2, Lchj$a;->i:Lcgm;

    if-eqz v0, :cond_9

    :goto_8
    iput-object v0, p0, Lchj;->f:Lcgm;

    iget-object v0, v2, Lchj$a;->j:Lcgm;

    if-eqz v0, :cond_a

    :goto_9
    iput-object v0, p0, Lchj;->g:Lcgm;

    iget-object v0, v2, Lchj$a;->k:Lcgm;

    if-eqz v0, :cond_b

    :goto_a
    iput-object v0, p0, Lchj;->J:Lcgm;

    iget-object v0, v2, Lchj$a;->l:Lcgm;

    if-eqz v0, :cond_c

    :goto_b
    iput-object v0, p0, Lchj;->K:Lcgm;

    iget-object v0, v2, Lchj$a;->m:Lcgh;

    if-eqz v0, :cond_d

    :goto_c
    iput-object v0, p0, Lchj;->h:Lcgh;

    iget-object v0, v2, Lchj$a;->n:Lcgh;

    if-eqz v0, :cond_e

    :goto_d
    iput-object v0, p0, Lchj;->i:Lcgh;

    iget-object v0, v2, Lchj$a;->o:Lcgh;

    if-eqz v0, :cond_f

    :goto_e
    iput-object v0, p0, Lchj;->j:Lcgh;

    iget-object v0, v2, Lchj$a;->p:Lcgh;

    if-eqz v0, :cond_10

    :goto_f
    iput-object v0, p0, Lchj;->k:Lcgh;

    iget-object v0, v2, Lchj$a;->q:Lcgh;

    if-eqz v0, :cond_11

    :goto_10
    iput-object v0, p0, Lchj;->l:Lcgh;

    iget-object v0, v2, Lchj$a;->r:Lcgh;

    if-eqz v0, :cond_12

    :goto_11
    iput-object v0, p0, Lchj;->m:Lcgh;

    iget-object v0, v2, Lchj$a;->s:Lcgh;

    if-eqz v0, :cond_13

    :goto_12
    iput-object v0, p0, Lchj;->n:Lcgh;

    iget-object v0, v2, Lchj$a;->t:Lcgh;

    if-eqz v0, :cond_14

    :goto_13
    iput-object v0, p0, Lchj;->o:Lcgh;

    iget-object v0, v2, Lchj$a;->u:Lcgh;

    if-eqz v0, :cond_15

    :goto_14
    iput-object v0, p0, Lchj;->p:Lcgh;

    iget-object v0, v2, Lchj$a;->v:Lcgh;

    if-eqz v0, :cond_16

    :goto_15
    iput-object v0, p0, Lchj;->q:Lcgh;

    iget-object v0, v2, Lchj$a;->w:Lcgh;

    if-eqz v0, :cond_17

    :goto_16
    iput-object v0, p0, Lchj;->r:Lcgh;

    iget-object v0, v2, Lchj$a;->x:Lcgh;

    if-eqz v0, :cond_18

    :goto_17
    iput-object v0, p0, Lchj;->s:Lcgh;

    iget-object v0, v2, Lchj$a;->y:Lcgh;

    if-eqz v0, :cond_19

    :goto_18
    iput-object v0, p0, Lchj;->t:Lcgh;

    iget-object v0, v2, Lchj$a;->z:Lcgh;

    if-eqz v0, :cond_1a

    :goto_19
    iput-object v0, p0, Lchj;->u:Lcgh;

    iget-object v0, v2, Lchj$a;->A:Lcgh;

    if-eqz v0, :cond_1b

    :goto_1a
    iput-object v0, p0, Lchj;->v:Lcgh;

    iget-object v0, v2, Lchj$a;->B:Lcgh;

    if-eqz v0, :cond_1c

    :goto_1b
    iput-object v0, p0, Lchj;->w:Lcgh;

    iget-object v0, v2, Lchj$a;->C:Lcgh;

    if-eqz v0, :cond_1d

    :goto_1c
    iput-object v0, p0, Lchj;->x:Lcgh;

    iget-object v0, v2, Lchj$a;->D:Lcgh;

    if-eqz v0, :cond_1e

    :goto_1d
    iput-object v0, p0, Lchj;->y:Lcgh;

    iget-object v0, v2, Lchj$a;->E:Lcgh;

    if-eqz v0, :cond_1f

    :goto_1e
    iput-object v0, p0, Lchj;->z:Lcgh;

    iget-object v0, v2, Lchj$a;->F:Lcgh;

    if-eqz v0, :cond_20

    :goto_1f
    iput-object v0, p0, Lchj;->A:Lcgh;

    iget-object v0, v2, Lchj$a;->G:Lcgh;

    if-eqz v0, :cond_21

    :goto_20
    iput-object v0, p0, Lchj;->B:Lcgh;

    iget-object v0, v2, Lchj$a;->H:Lcgh;

    if-eqz v0, :cond_22

    :goto_21
    iput-object v0, p0, Lchj;->C:Lcgh;

    iget-object v0, v2, Lchj$a;->I:Lcgh;

    if-eqz v0, :cond_23

    :goto_22
    iput-object v0, p0, Lchj;->D:Lcgh;

    iget-object v0, p0, Lchj;->a:Lcgf;

    if-nez v0, :cond_24

    :goto_23
    iput v1, p0, Lchj;->L:I

    .line 103
    return-void

    .line 102
    :cond_1
    invoke-super {p0}, Lchk;->c()Lcgm;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-super {p0}, Lchk;->f()Lcgm;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-super {p0}, Lchk;->i()Lcgm;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    invoke-super {p0}, Lchk;->l()Lcgm;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    invoke-super {p0}, Lchk;->o()Lcgm;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    invoke-super {p0}, Lchk;->s()Lcgm;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    invoke-super {p0}, Lchk;->w()Lcgm;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    invoke-super {p0}, Lchk;->y()Lcgm;

    move-result-object v0

    goto/16 :goto_7

    :cond_9
    invoke-super {p0}, Lchk;->B()Lcgm;

    move-result-object v0

    goto/16 :goto_8

    :cond_a
    invoke-super {p0}, Lchk;->D()Lcgm;

    move-result-object v0

    goto/16 :goto_9

    :cond_b
    invoke-super {p0}, Lchk;->H()Lcgm;

    move-result-object v0

    goto/16 :goto_a

    :cond_c
    invoke-super {p0}, Lchk;->J()Lcgm;

    move-result-object v0

    goto/16 :goto_b

    :cond_d
    invoke-super {p0}, Lchk;->d()Lcgh;

    move-result-object v0

    goto/16 :goto_c

    :cond_e
    invoke-super {p0}, Lchk;->e()Lcgh;

    move-result-object v0

    goto/16 :goto_d

    :cond_f
    invoke-super {p0}, Lchk;->g()Lcgh;

    move-result-object v0

    goto/16 :goto_e

    :cond_10
    invoke-super {p0}, Lchk;->h()Lcgh;

    move-result-object v0

    goto/16 :goto_f

    :cond_11
    invoke-super {p0}, Lchk;->j()Lcgh;

    move-result-object v0

    goto/16 :goto_10

    :cond_12
    invoke-super {p0}, Lchk;->k()Lcgh;

    move-result-object v0

    goto/16 :goto_11

    :cond_13
    invoke-super {p0}, Lchk;->m()Lcgh;

    move-result-object v0

    goto/16 :goto_12

    :cond_14
    invoke-super {p0}, Lchk;->n()Lcgh;

    move-result-object v0

    goto/16 :goto_13

    :cond_15
    invoke-super {p0}, Lchk;->p()Lcgh;

    move-result-object v0

    goto/16 :goto_14

    :cond_16
    invoke-super {p0}, Lchk;->q()Lcgh;

    move-result-object v0

    goto/16 :goto_15

    :cond_17
    invoke-super {p0}, Lchk;->r()Lcgh;

    move-result-object v0

    goto/16 :goto_16

    :cond_18
    invoke-super {p0}, Lchk;->t()Lcgh;

    move-result-object v0

    goto/16 :goto_17

    :cond_19
    invoke-super {p0}, Lchk;->u()Lcgh;

    move-result-object v0

    goto/16 :goto_18

    :cond_1a
    invoke-super {p0}, Lchk;->v()Lcgh;

    move-result-object v0

    goto/16 :goto_19

    :cond_1b
    invoke-super {p0}, Lchk;->x()Lcgh;

    move-result-object v0

    goto/16 :goto_1a

    :cond_1c
    invoke-super {p0}, Lchk;->z()Lcgh;

    move-result-object v0

    goto/16 :goto_1b

    :cond_1d
    invoke-super {p0}, Lchk;->A()Lcgh;

    move-result-object v0

    goto/16 :goto_1c

    :cond_1e
    invoke-super {p0}, Lchk;->C()Lcgh;

    move-result-object v0

    goto/16 :goto_1d

    :cond_1f
    invoke-super {p0}, Lchk;->E()Lcgh;

    move-result-object v0

    goto/16 :goto_1e

    :cond_20
    invoke-super {p0}, Lchk;->F()Lcgh;

    move-result-object v0

    goto/16 :goto_1f

    :cond_21
    invoke-super {p0}, Lchk;->G()Lcgh;

    move-result-object v0

    goto/16 :goto_20

    :cond_22
    invoke-super {p0}, Lchk;->I()Lcgh;

    move-result-object v0

    goto/16 :goto_21

    :cond_23
    invoke-super {p0}, Lchk;->K()Lcgh;

    move-result-object v0

    goto/16 :goto_22

    :cond_24
    iget-object v0, p0, Lchj;->n:Lcgh;

    iget-object v2, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2}, Lcgf;->m()Lcgh;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lchj;->l:Lcgh;

    iget-object v2, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2}, Lcgf;->j()Lcgh;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lchj;->j:Lcgh;

    iget-object v2, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2}, Lcgf;->g()Lcgh;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lchj;->h:Lcgh;

    iget-object v2, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2}, Lcgf;->d()Lcgh;

    move-result-object v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_24
    iget-object v2, p0, Lchj;->i:Lcgh;

    iget-object v3, p0, Lchj;->a:Lcgf;

    invoke-virtual {v3}, Lcgf;->e()Lcgh;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    :goto_25
    or-int/2addr v0, v2

    iget-object v2, p0, Lchj;->z:Lcgh;

    iget-object v3, p0, Lchj;->a:Lcgf;

    invoke-virtual {v3}, Lcgf;->E()Lcgh;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lchj;->y:Lcgh;

    iget-object v3, p0, Lchj;->a:Lcgf;

    invoke-virtual {v3}, Lcgf;->C()Lcgh;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lchj;->t:Lcgh;

    iget-object v3, p0, Lchj;->a:Lcgf;

    invoke-virtual {v3}, Lcgf;->u()Lcgh;

    move-result-object v3

    if-ne v2, v3, :cond_25

    const/4 v1, 0x4

    :cond_25
    or-int/2addr v1, v0

    goto/16 :goto_23

    :cond_26
    move v0, v1

    goto :goto_24

    :cond_27
    move v2, v1

    goto :goto_25
.end method


# virtual methods
.method public final A()Lcgh;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lchj;->x:Lcgh;

    return-object v0
.end method

.method public final B()Lcgm;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lchj;->f:Lcgm;

    return-object v0
.end method

.method public final C()Lcgh;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lchj;->y:Lcgh;

    return-object v0
.end method

.method public final D()Lcgm;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lchj;->g:Lcgm;

    return-object v0
.end method

.method public final E()Lcgh;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lchj;->z:Lcgh;

    return-object v0
.end method

.method public final F()Lcgh;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lchj;->A:Lcgh;

    return-object v0
.end method

.method public final G()Lcgh;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lchj;->B:Lcgh;

    return-object v0
.end method

.method public final H()Lcgm;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lchj;->J:Lcgm;

    return-object v0
.end method

.method public final I()Lcgh;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lchj;->C:Lcgh;

    return-object v0
.end method

.method public final J()Lcgm;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lchj;->K:Lcgm;

    return-object v0
.end method

.method public final K()Lcgh;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lchj;->D:Lcgh;

    return-object v0
.end method

.method public a(IIII)J
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    iget v1, p0, Lchj;->L:I

    and-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lcgf;->a(IIII)J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lchk;->a(IIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(IIIIIII)J
    .locals 8

    .prologue
    .line 131
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    iget v1, p0, Lchj;->L:I

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 133
    invoke-virtual/range {v0 .. v7}, Lcgf;->a(IIIIIII)J

    move-result-wide v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p7}, Lchk;->a(IIIIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a()Lcgk;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcgf;->a()Lcgk;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lchj$a;)V
.end method

.method public final c()Lcgm;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lchj;->E:Lcgm;

    return-object v0
.end method

.method public final d()Lcgh;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lchj;->h:Lcgh;

    return-object v0
.end method

.method public final e()Lcgh;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lchj;->i:Lcgh;

    return-object v0
.end method

.method public final f()Lcgm;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lchj;->F:Lcgm;

    return-object v0
.end method

.method public final g()Lcgh;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lchj;->j:Lcgh;

    return-object v0
.end method

.method public final h()Lcgh;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lchj;->k:Lcgh;

    return-object v0
.end method

.method public final i()Lcgm;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lchj;->G:Lcgm;

    return-object v0
.end method

.method public final j()Lcgh;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lchj;->l:Lcgh;

    return-object v0
.end method

.method public final k()Lcgh;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lchj;->m:Lcgh;

    return-object v0
.end method

.method public final l()Lcgm;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lchj;->H:Lcgm;

    return-object v0
.end method

.method public final m()Lcgh;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lchj;->n:Lcgh;

    return-object v0
.end method

.method public final n()Lcgh;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lchj;->o:Lcgh;

    return-object v0
.end method

.method public final o()Lcgm;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lchj;->I:Lcgm;

    return-object v0
.end method

.method public final p()Lcgh;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lchj;->p:Lcgh;

    return-object v0
.end method

.method public final q()Lcgh;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lchj;->q:Lcgh;

    return-object v0
.end method

.method public final r()Lcgh;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lchj;->r:Lcgh;

    return-object v0
.end method

.method public final s()Lcgm;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lchj;->c:Lcgm;

    return-object v0
.end method

.method public final t()Lcgh;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lchj;->s:Lcgh;

    return-object v0
.end method

.method public final u()Lcgh;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lchj;->t:Lcgh;

    return-object v0
.end method

.method public final v()Lcgh;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lchj;->u:Lcgh;

    return-object v0
.end method

.method public final w()Lcgm;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lchj;->d:Lcgm;

    return-object v0
.end method

.method public final x()Lcgh;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lchj;->v:Lcgh;

    return-object v0
.end method

.method public final y()Lcgm;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lchj;->e:Lcgm;

    return-object v0
.end method

.method public final z()Lcgh;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lchj;->w:Lcgh;

    return-object v0
.end method
