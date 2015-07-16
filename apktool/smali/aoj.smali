.class Laoj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Laon;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laka;


# direct methods
.method public constructor <init>(Laka;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Laoj;->a:Laka;

    .line 16
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11
    new-instance v1, Laon$a;

    iget-object v0, p0, Laoj;->a:Laka;

    invoke-direct {v1, v0}, Laon$a;-><init>(Laka;)V

    iget-object v0, v1, Laon$a;->a:Laka;

    invoke-virtual {v0}, Laka;->K()Laxw;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Laon;

    iget-object v1, v1, Laon$a;->a:Laka;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5}, Laon;-><init>(Laka;Lajl;B)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Laon$a;->b:Laxx;

    iget-object v2, v1, Laon$a;->a:Laka;

    invoke-virtual {v2}, Laka;->K()Laxw;

    move-result-object v2

    iget-object v3, v1, Laon$a;->a:Laka;

    invoke-virtual {v3}, Laka;->h()Z

    move-result v3

    iget-object v4, v1, Laon$a;->a:Laka;

    invoke-virtual {v4}, Laka;->Z()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Laxx;->a(Laxw;ZZ)Lajl;

    move-result-object v2

    new-instance v0, Laon;

    iget-object v1, v1, Laon$a;->a:Laka;

    invoke-direct {v0, v1, v2, v5}, Laon;-><init>(Laka;Lajl;B)V

    goto :goto_0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Laon;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laon;->e()V

    :cond_0
    return-void
.end method
