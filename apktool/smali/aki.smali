.class public final Laki;
.super Lakb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laki$a;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field public mHasLinks:Z


# direct methods
.method protected constructor <init>(Laki$a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lakb;-><init>(Lakb$a;)V

    .line 26
    iget-object v0, p1, Laki$a;->text:Ljava/lang/String;

    iput-object v0, p0, Laki;->mUserText:Ljava/lang/String;

    .line 27
    iget-boolean v0, p1, Laki$a;->hasLinks:Z

    iput-boolean v0, p0, Laki;->mHasLinks:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lbhf;)V
    .locals 8

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lakb;-><init>(Lbhf;)V

    .line 19
    invoke-virtual {p1}, Lbhf;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->f()Ljava/util/List;

    move-result-object v1

    new-instance v0, Laki$1;

    invoke-direct {v0, p0}, Laki$1;-><init>(Laki;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjn;

    invoke-virtual {v0}, Lbjn;->c()Lbhg;

    move-result-object v2

    invoke-virtual {v2}, Lbhg;->a()Lbhg$a;

    move-result-object v2

    sget-object v6, Lbhg$a;->LINK:Lbhg$a;

    if-ne v2, v6, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lbjn;->c()Lbhg;

    move-result-object v6

    invoke-virtual {v6}, Lbhg;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "<a href=\""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbjn;->c()Lbhg;

    move-result-object v6

    invoke-virtual {v6}, Lbhg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbjn;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lbjn;->b()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</a>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbjn;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Lbjn;->b()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lbjn;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lbjn;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v6, v0

    sub-int v0, v2, v0

    add-int/2addr v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laki;->mHasLinks:Z

    :cond_1
    move v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lbjn;->c()Lbhg;

    move-result-object v6

    invoke-virtual {v6}, Lbhg;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "<a href=\""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbjn;->c()Lbhg;

    move-result-object v6

    invoke-virtual {v6}, Lbhg;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbjn;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lbjn;->b()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</a>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laki;->mUserText:Ljava/lang/String;

    .line 22
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lakb;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lakb;->a(Lakb;)V

    .line 38
    iget-object v0, p1, Lakb;->mUserText:Ljava/lang/String;

    iput-object v0, p0, Laki;->mUserText:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "text"

    return-object v0
.end method
