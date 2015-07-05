.class Lanm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lanq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laje;


# direct methods
.method public constructor <init>(Laje;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lanm;->a:Laje;

    .line 16
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11
    new-instance v1, Lanq$a;

    iget-object v0, p0, Lanm;->a:Laje;

    invoke-direct {v1, v0}, Lanq$a;-><init>(Laje;)V

    iget-object v0, v1, Lanq$a;->a:Laje;

    invoke-virtual {v0}, Laje;->J()Lawy;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lanq;

    iget-object v1, v1, Lanq$a;->a:Laje;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5}, Lanq;-><init>(Laje;Laip;B)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lanq$a;->b:Lawz;

    iget-object v2, v1, Lanq$a;->a:Laje;

    invoke-virtual {v2}, Laje;->J()Lawy;

    move-result-object v2

    iget-object v3, v1, Lanq$a;->a:Laje;

    invoke-virtual {v3}, Laje;->h()Z

    move-result v3

    iget-object v4, v1, Lanq$a;->a:Laje;

    invoke-virtual {v4}, Laje;->ab()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lawz;->a(Lawy;ZZ)Laip;

    move-result-object v2

    new-instance v0, Lanq;

    iget-object v1, v1, Lanq$a;->a:Laje;

    invoke-direct {v0, v1, v2, v5}, Lanq;-><init>(Laje;Laip;B)V

    goto :goto_0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lanq;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lanq;->e()V

    :cond_0
    return-void
.end method
