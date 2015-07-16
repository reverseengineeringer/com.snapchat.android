.class public final Lafx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/android/discover/ui/DSnapView;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;FF)V
    .locals 0
    .param p1    # Lcom/snapchat/android/discover/ui/DSnapView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lafx;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    .line 20
    iput p2, p0, Lafx;->b:F

    .line 21
    iput p3, p0, Lafx;->c:F

    .line 22
    return-void
.end method
