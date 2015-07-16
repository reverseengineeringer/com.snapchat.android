.class public abstract Lcik;
.super Lcil;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcik$a;
    }
.end annotation


# instance fields
.field transient A:Lchi;

.field transient B:Lchi;

.field transient C:Lchi;

.field transient D:Lchi;

.field private transient E:Lchn;

.field private transient F:Lchn;

.field private transient G:Lchn;

.field private transient H:Lchn;

.field private transient I:Lchn;

.field private transient J:Lchn;

.field private transient K:Lchn;

.field private transient L:I

.field final a:Lchg;

.field final b:Ljava/lang/Object;

.field transient c:Lchn;

.field transient d:Lchn;

.field transient e:Lchn;

.field transient f:Lchn;

.field transient g:Lchn;

.field transient h:Lchi;

.field transient i:Lchi;

.field transient j:Lchi;

.field transient k:Lchi;

.field transient l:Lchi;

.field transient m:Lchi;

.field transient n:Lchi;

.field transient o:Lchi;

.field transient p:Lchi;

.field transient q:Lchi;

.field transient r:Lchi;

.field transient s:Lchi;

.field transient t:Lchi;

.field transient u:Lchi;

.field transient v:Lchi;

.field transient w:Lchi;

.field transient x:Lchi;

.field transient y:Lchi;

.field transient z:Lchi;


# direct methods
.method protected constructor <init>(Lchg;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcil;-><init>()V

    .line 100
    iput-object p1, p0, Lcik;->a:Lchg;

    .line 101
    iput-object p2, p0, Lcik;->b:Ljava/lang/Object;

    .line 102
    new-instance v2, Lcik$a;

    invoke-direct {v2}, Lcik$a;-><init>()V

    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcik;->a:Lchg;

    invoke-virtual {v2, v0}, Lcik$a;->a(Lchg;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcik;->a(Lcik$a;)V

    iget-object v0, v2, Lcik$a;->a:Lchn;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcik;->E:Lchn;

    iget-object v0, v2, Lcik$a;->b:Lchn;

    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lcik;->F:Lchn;

    iget-object v0, v2, Lcik$a;->c:Lchn;

    if-eqz v0, :cond_3

    :goto_2
    iput-object v0, p0, Lcik;->G:Lchn;

    iget-object v0, v2, Lcik$a;->d:Lchn;

    if-eqz v0, :cond_4

    :goto_3
    iput-object v0, p0, Lcik;->H:Lchn;

    iget-object v0, v2, Lcik$a;->e:Lchn;

    if-eqz v0, :cond_5

    :goto_4
    iput-object v0, p0, Lcik;->I:Lchn;

    iget-object v0, v2, Lcik$a;->f:Lchn;

    if-eqz v0, :cond_6

    :goto_5
    iput-object v0, p0, Lcik;->c:Lchn;

    iget-object v0, v2, Lcik$a;->g:Lchn;

    if-eqz v0, :cond_7

    :goto_6
    iput-object v0, p0, Lcik;->d:Lchn;

    iget-object v0, v2, Lcik$a;->h:Lchn;

    if-eqz v0, :cond_8

    :goto_7
    iput-object v0, p0, Lcik;->e:Lchn;

    iget-object v0, v2, Lcik$a;->i:Lchn;

    if-eqz v0, :cond_9

    :goto_8
    iput-object v0, p0, Lcik;->f:Lchn;

    iget-object v0, v2, Lcik$a;->j:Lchn;

    if-eqz v0, :cond_a

    :goto_9
    iput-object v0, p0, Lcik;->g:Lchn;

    iget-object v0, v2, Lcik$a;->k:Lchn;

    if-eqz v0, :cond_b

    :goto_a
    iput-object v0, p0, Lcik;->J:Lchn;

    iget-object v0, v2, Lcik$a;->l:Lchn;

    if-eqz v0, :cond_c

    :goto_b
    iput-object v0, p0, Lcik;->K:Lchn;

    iget-object v0, v2, Lcik$a;->m:Lchi;

    if-eqz v0, :cond_d

    :goto_c
    iput-object v0, p0, Lcik;->h:Lchi;

    iget-object v0, v2, Lcik$a;->n:Lchi;

    if-eqz v0, :cond_e

    :goto_d
    iput-object v0, p0, Lcik;->i:Lchi;

    iget-object v0, v2, Lcik$a;->o:Lchi;

    if-eqz v0, :cond_f

    :goto_e
    iput-object v0, p0, Lcik;->j:Lchi;

    iget-object v0, v2, Lcik$a;->p:Lchi;

    if-eqz v0, :cond_10

    :goto_f
    iput-object v0, p0, Lcik;->k:Lchi;

    iget-object v0, v2, Lcik$a;->q:Lchi;

    if-eqz v0, :cond_11

    :goto_10
    iput-object v0, p0, Lcik;->l:Lchi;

    iget-object v0, v2, Lcik$a;->r:Lchi;

    if-eqz v0, :cond_12

    :goto_11
    iput-object v0, p0, Lcik;->m:Lchi;

    iget-object v0, v2, Lcik$a;->s:Lchi;

    if-eqz v0, :cond_13

    :goto_12
    iput-object v0, p0, Lcik;->n:Lchi;

    iget-object v0, v2, Lcik$a;->t:Lchi;

    if-eqz v0, :cond_14

    :goto_13
    iput-object v0, p0, Lcik;->o:Lchi;

    iget-object v0, v2, Lcik$a;->u:Lchi;

    if-eqz v0, :cond_15

    :goto_14
    iput-object v0, p0, Lcik;->p:Lchi;

    iget-object v0, v2, Lcik$a;->v:Lchi;

    if-eqz v0, :cond_16

    :goto_15
    iput-object v0, p0, Lcik;->q:Lchi;

    iget-object v0, v2, Lcik$a;->w:Lchi;

    if-eqz v0, :cond_17

    :goto_16
    iput-object v0, p0, Lcik;->r:Lchi;

    iget-object v0, v2, Lcik$a;->x:Lchi;

    if-eqz v0, :cond_18

    :goto_17
    iput-object v0, p0, Lcik;->s:Lchi;

    iget-object v0, v2, Lcik$a;->y:Lchi;

    if-eqz v0, :cond_19

    :goto_18
    iput-object v0, p0, Lcik;->t:Lchi;

    iget-object v0, v2, Lcik$a;->z:Lchi;

    if-eqz v0, :cond_1a

    :goto_19
    iput-object v0, p0, Lcik;->u:Lchi;

    iget-object v0, v2, Lcik$a;->A:Lchi;

    if-eqz v0, :cond_1b

    :goto_1a
    iput-object v0, p0, Lcik;->v:Lchi;

    iget-object v0, v2, Lcik$a;->B:Lchi;

    if-eqz v0, :cond_1c

    :goto_1b
    iput-object v0, p0, Lcik;->w:Lchi;

    iget-object v0, v2, Lcik$a;->C:Lchi;

    if-eqz v0, :cond_1d

    :goto_1c
    iput-object v0, p0, Lcik;->x:Lchi;

    iget-object v0, v2, Lcik$a;->D:Lchi;

    if-eqz v0, :cond_1e

    :goto_1d
    iput-object v0, p0, Lcik;->y:Lchi;

    iget-object v0, v2, Lcik$a;->E:Lchi;

    if-eqz v0, :cond_1f

    :goto_1e
    iput-object v0, p0, Lcik;->z:Lchi;

    iget-object v0, v2, Lcik$a;->F:Lchi;

    if-eqz v0, :cond_20

    :goto_1f
    iput-object v0, p0, Lcik;->A:Lchi;

    iget-object v0, v2, Lcik$a;->G:Lchi;

    if-eqz v0, :cond_21

    :goto_20
    iput-object v0, p0, Lcik;->B:Lchi;

    iget-object v0, v2, Lcik$a;->H:Lchi;

    if-eqz v0, :cond_22

    :goto_21
    iput-object v0, p0, Lcik;->C:Lchi;

    iget-object v0, v2, Lcik$a;->I:Lchi;

    if-eqz v0, :cond_23

    :goto_22
    iput-object v0, p0, Lcik;->D:Lchi;

    iget-object v0, p0, Lcik;->a:Lchg;

    if-nez v0, :cond_24

    :goto_23
    iput v1, p0, Lcik;->L:I

    .line 103
    return-void

    .line 102
    :cond_1
    invoke-super {p0}, Lcil;->c()Lchn;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-super {p0}, Lcil;->f()Lchn;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-super {p0}, Lcil;->i()Lchn;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    invoke-super {p0}, Lcil;->l()Lchn;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    invoke-super {p0}, Lcil;->o()Lchn;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    invoke-super {p0}, Lcil;->s()Lchn;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    invoke-super {p0}, Lcil;->w()Lchn;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    invoke-super {p0}, Lcil;->y()Lchn;

    move-result-object v0

    goto/16 :goto_7

    :cond_9
    invoke-super {p0}, Lcil;->B()Lchn;

    move-result-object v0

    goto/16 :goto_8

    :cond_a
    invoke-super {p0}, Lcil;->D()Lchn;

    move-result-object v0

    goto/16 :goto_9

    :cond_b
    invoke-super {p0}, Lcil;->H()Lchn;

    move-result-object v0

    goto/16 :goto_a

    :cond_c
    invoke-super {p0}, Lcil;->J()Lchn;

    move-result-object v0

    goto/16 :goto_b

    :cond_d
    invoke-super {p0}, Lcil;->d()Lchi;

    move-result-object v0

    goto/16 :goto_c

    :cond_e
    invoke-super {p0}, Lcil;->e()Lchi;

    move-result-object v0

    goto/16 :goto_d

    :cond_f
    invoke-super {p0}, Lcil;->g()Lchi;

    move-result-object v0

    goto/16 :goto_e

    :cond_10
    invoke-super {p0}, Lcil;->h()Lchi;

    move-result-object v0

    goto/16 :goto_f

    :cond_11
    invoke-super {p0}, Lcil;->j()Lchi;

    move-result-object v0

    goto/16 :goto_10

    :cond_12
    invoke-super {p0}, Lcil;->k()Lchi;

    move-result-object v0

    goto/16 :goto_11

    :cond_13
    invoke-super {p0}, Lcil;->m()Lchi;

    move-result-object v0

    goto/16 :goto_12

    :cond_14
    invoke-super {p0}, Lcil;->n()Lchi;

    move-result-object v0

    goto/16 :goto_13

    :cond_15
    invoke-super {p0}, Lcil;->p()Lchi;

    move-result-object v0

    goto/16 :goto_14

    :cond_16
    invoke-super {p0}, Lcil;->q()Lchi;

    move-result-object v0

    goto/16 :goto_15

    :cond_17
    invoke-super {p0}, Lcil;->r()Lchi;

    move-result-object v0

    goto/16 :goto_16

    :cond_18
    invoke-super {p0}, Lcil;->t()Lchi;

    move-result-object v0

    goto/16 :goto_17

    :cond_19
    invoke-super {p0}, Lcil;->u()Lchi;

    move-result-object v0

    goto/16 :goto_18

    :cond_1a
    invoke-super {p0}, Lcil;->v()Lchi;

    move-result-object v0

    goto/16 :goto_19

    :cond_1b
    invoke-super {p0}, Lcil;->x()Lchi;

    move-result-object v0

    goto/16 :goto_1a

    :cond_1c
    invoke-super {p0}, Lcil;->z()Lchi;

    move-result-object v0

    goto/16 :goto_1b

    :cond_1d
    invoke-super {p0}, Lcil;->A()Lchi;

    move-result-object v0

    goto/16 :goto_1c

    :cond_1e
    invoke-super {p0}, Lcil;->C()Lchi;

    move-result-object v0

    goto/16 :goto_1d

    :cond_1f
    invoke-super {p0}, Lcil;->E()Lchi;

    move-result-object v0

    goto/16 :goto_1e

    :cond_20
    invoke-super {p0}, Lcil;->F()Lchi;

    move-result-object v0

    goto/16 :goto_1f

    :cond_21
    invoke-super {p0}, Lcil;->G()Lchi;

    move-result-object v0

    goto/16 :goto_20

    :cond_22
    invoke-super {p0}, Lcil;->I()Lchi;

    move-result-object v0

    goto/16 :goto_21

    :cond_23
    invoke-super {p0}, Lcil;->K()Lchi;

    move-result-object v0

    goto/16 :goto_22

    :cond_24
    iget-object v0, p0, Lcik;->n:Lchi;

    iget-object v2, p0, Lcik;->a:Lchg;

    invoke-virtual {v2}, Lchg;->m()Lchi;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcik;->l:Lchi;

    iget-object v2, p0, Lcik;->a:Lchg;

    invoke-virtual {v2}, Lchg;->j()Lchi;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcik;->j:Lchi;

    iget-object v2, p0, Lcik;->a:Lchg;

    invoke-virtual {v2}, Lchg;->g()Lchi;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcik;->h:Lchi;

    iget-object v2, p0, Lcik;->a:Lchg;

    invoke-virtual {v2}, Lchg;->d()Lchi;

    move-result-object v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_24
    iget-object v2, p0, Lcik;->i:Lchi;

    iget-object v3, p0, Lcik;->a:Lchg;

    invoke-virtual {v3}, Lchg;->e()Lchi;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    :goto_25
    or-int/2addr v0, v2

    iget-object v2, p0, Lcik;->z:Lchi;

    iget-object v3, p0, Lcik;->a:Lchg;

    invoke-virtual {v3}, Lchg;->E()Lchi;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcik;->y:Lchi;

    iget-object v3, p0, Lcik;->a:Lchg;

    invoke-virtual {v3}, Lchg;->C()Lchi;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcik;->t:Lchi;

    iget-object v3, p0, Lcik;->a:Lchg;

    invoke-virtual {v3}, Lchg;->u()Lchi;

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
.method public final A()Lchi;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcik;->x:Lchi;

    return-object v0
.end method

.method public final B()Lchn;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcik;->f:Lchn;

    return-object v0
.end method

.method public final C()Lchi;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcik;->y:Lchi;

    return-object v0
.end method

.method public final D()Lchn;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcik;->g:Lchn;

    return-object v0
.end method

.method public final E()Lchi;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcik;->z:Lchi;

    return-object v0
.end method

.method public final F()Lchi;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcik;->A:Lchi;

    return-object v0
.end method

.method public final G()Lchi;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcik;->B:Lchi;

    return-object v0
.end method

.method public final H()Lchn;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcik;->J:Lchn;

    return-object v0
.end method

.method public final I()Lchi;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcik;->C:Lchi;

    return-object v0
.end method

.method public final J()Lchn;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcik;->K:Lchn;

    return-object v0
.end method

.method public final K()Lchi;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcik;->D:Lchi;

    return-object v0
.end method

.method public a(IIII)J
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    iget v1, p0, Lcik;->L:I

    and-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lchg;->a(IIII)J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcil;->a(IIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(IIIIIII)J
    .locals 8

    .prologue
    .line 131
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    iget v1, p0, Lcik;->L:I

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
    invoke-virtual/range {v0 .. v7}, Lchg;->a(IIIIIII)J

    move-result-wide v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p7}, Lcil;->a(IIIIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a()Lchl;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lchg;->a()Lchl;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lcik$a;)V
.end method

.method public final c()Lchn;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcik;->E:Lchn;

    return-object v0
.end method

.method public final d()Lchi;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcik;->h:Lchi;

    return-object v0
.end method

.method public final e()Lchi;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcik;->i:Lchi;

    return-object v0
.end method

.method public final f()Lchn;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcik;->F:Lchn;

    return-object v0
.end method

.method public final g()Lchi;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcik;->j:Lchi;

    return-object v0
.end method

.method public final h()Lchi;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcik;->k:Lchi;

    return-object v0
.end method

.method public final i()Lchn;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcik;->G:Lchn;

    return-object v0
.end method

.method public final j()Lchi;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcik;->l:Lchi;

    return-object v0
.end method

.method public final k()Lchi;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcik;->m:Lchi;

    return-object v0
.end method

.method public final l()Lchn;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcik;->H:Lchn;

    return-object v0
.end method

.method public final m()Lchi;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcik;->n:Lchi;

    return-object v0
.end method

.method public final n()Lchi;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcik;->o:Lchi;

    return-object v0
.end method

.method public final o()Lchn;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcik;->I:Lchn;

    return-object v0
.end method

.method public final p()Lchi;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcik;->p:Lchi;

    return-object v0
.end method

.method public final q()Lchi;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcik;->q:Lchi;

    return-object v0
.end method

.method public final r()Lchi;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcik;->r:Lchi;

    return-object v0
.end method

.method public final s()Lchn;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcik;->c:Lchn;

    return-object v0
.end method

.method public final t()Lchi;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcik;->s:Lchi;

    return-object v0
.end method

.method public final u()Lchi;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcik;->t:Lchi;

    return-object v0
.end method

.method public final v()Lchi;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcik;->u:Lchi;

    return-object v0
.end method

.method public final w()Lchn;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcik;->d:Lchn;

    return-object v0
.end method

.method public final x()Lchi;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcik;->v:Lchi;

    return-object v0
.end method

.method public final y()Lchn;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcik;->e:Lchn;

    return-object v0
.end method

.method public final z()Lchi;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcik;->w:Lchi;

    return-object v0
.end method
