.class public final Laqu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqu$1;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public final b:Lapd;


# direct methods
.method public constructor <init>(Lapd;)V
    .locals 0
    .param p1    # Lapd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Laqu;->b:Lapd;

    .line 25
    return-void
.end method
