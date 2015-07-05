.class final Lanp$1;
.super Lanm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanp$a;

.field final synthetic b:Lanp;


# direct methods
.method constructor <init>(Lanp;Laje;Lanp$a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lanp$1;->b:Lanp;

    iput-object p3, p0, Lanp$1;->a:Lanp$a;

    invoke-direct {p0, p2}, Lanm;-><init>(Laje;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    check-cast p1, Lanq;

    invoke-super {p0, p1}, Lanm;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lanp$1;->b:Lanp;

    const/4 v1, 0x0

    iput-object v1, v0, Lanp;->b:Lanm;

    iget-object v0, p0, Lanp$1;->a:Lanp$a;

    invoke-interface {v0, p1}, Lanp$a;->a(Lanq;)V

    return-void
.end method
