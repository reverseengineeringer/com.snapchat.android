.class public final Lart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lart$1;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public final b:Lapz;


# direct methods
.method public constructor <init>(Lapz;)V
    .locals 0
    .param p1    # Lapz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lart;->b:Lapz;

    .line 25
    return-void
.end method
