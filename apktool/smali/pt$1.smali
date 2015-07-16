.class final Lpt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpt;->a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$response:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lpt$1;->val$response:Lbnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJZ)V
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lpt$1;->val$response:Lbnd;

    iget-object v2, v2, Lbnd;->a:Lbnb;

    iget-object v2, v2, Lbnb;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 266
    return-void
.end method
