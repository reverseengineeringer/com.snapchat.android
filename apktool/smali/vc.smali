.class public final Lvc;
.super Lbfe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbfe",
        "<",
        "Lut;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lazo;Lbfe$a;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lbfe$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;",
            "Lazo;",
            "Lbfe$a",
            "<",
            "Lut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Lbfe;-><init>(Lazo;Lbfe$a;)V

    .line 24
    iput-object p1, p0, Lvc;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lvc;->a:Ljava/util/List;

    .line 40
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v0, p0, Lvc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    .line 36
    invoke-interface {v0, p1}, Lut;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 40
    goto :goto_0
.end method
