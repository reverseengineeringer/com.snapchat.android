.class final Lcom/snapchat/android/discover/ui/DSnapView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/discover/ui/DSnapView;

.field b:F

.field c:F

.field final synthetic d:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->d:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    .line 123
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->d:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->d:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->c(Lcom/snapchat/android/discover/ui/DSnapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->d:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lafx;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    iget v3, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->b:F

    iget v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->c:F

    invoke-direct {v1, v2, v3, v4}, Lafx;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;FF)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$a;->d:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e(Lcom/snapchat/android/discover/ui/DSnapView;)Z

    .line 136
    return-void
.end method
