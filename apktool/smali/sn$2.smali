.class final Lsn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsn;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsn;


# direct methods
.method constructor <init>(Lsn;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lsn$2;->this$0:Lsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 171
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 164
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lsn$2;->this$0:Lsn;

    new-instance v1, Lsf;

    new-instance v2, Lsn$3;

    invoke-direct {v2, v0}, Lsn$3;-><init>(Lsn;)V

    invoke-direct {v1, v2}, Lsf;-><init>(Lsj;)V

    invoke-virtual {v1}, Lsq;->f()V

    .line 167
    :cond_1
    return-void
.end method

.method public final b(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 175
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method
