.class public abstract Lbfe;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field public final mExceptionReporter:Lazo;

.field protected final mInterface:Lbfe$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbfe$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazo;Lbfe$a;)V
    .locals 0
    .param p1    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbfe$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazo;",
            "Lbfe$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 35
    iput-object p1, p0, Lbfe;->mExceptionReporter:Lazo;

    .line 36
    iput-object p2, p0, Lbfe;->mInterface:Lbfe$a;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
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
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lbfe;->mExceptionReporter:Lazo;

    invoke-virtual {v0, p1}, Lazo;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 44
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbfe;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {p0, v1}, Lbfe;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p2    # Landroid/widget/Filter$FilterResults;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lbfe;->mInterface:Lbfe$a;

    invoke-interface {v1, v0}, Lbfe$a;->a(Ljava/util/List;)V

    .line 80
    return-void

    .line 77
    :cond_0
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method
