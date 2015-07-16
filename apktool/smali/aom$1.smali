.class final Laom$1;
.super Laoj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laom$a;

.field final synthetic b:Laom;


# direct methods
.method constructor <init>(Laom;Laka;Laom$a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Laom$1;->b:Laom;

    iput-object p3, p0, Laom$1;->a:Laom$a;

    invoke-direct {p0, p2}, Laoj;-><init>(Laka;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    check-cast p1, Laon;

    invoke-super {p0, p1}, Laoj;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Laom$1;->b:Laom;

    const/4 v1, 0x0

    iput-object v1, v0, Laom;->b:Laoj;

    iget-object v0, p0, Laom$1;->a:Laom$a;

    invoke-interface {v0, p1}, Laom$a;->a(Laon;)V

    return-void
.end method
