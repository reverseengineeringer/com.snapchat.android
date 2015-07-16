.class public final Lamg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly;

.field final synthetic b:Lbgl;

.field final synthetic c:Lamg$a;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lamg;


# direct methods
.method public constructor <init>(Lamg;Laly;Lbgl;Lamg$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lamg$2;->e:Lamg;

    iput-object p2, p0, Lamg$2;->a:Laly;

    iput-object p3, p0, Lamg$2;->b:Lbgl;

    iput-object p4, p0, Lamg$2;->c:Lamg$a;

    iput-object p5, p0, Lamg$2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 108
    iget-object v0, p0, Lamg$2;->e:Lamg;

    iget-object v1, p0, Lamg$2;->a:Laly;

    iget-object v2, p0, Lamg$2;->b:Lbgl;

    invoke-virtual {v0, v1, v2}, Lamg;->a(Laly;Lbgl;)Lus;

    move-result-object v4

    .line 109
    iget-object v0, p0, Lamg$2;->c:Lamg$a;

    iget-object v1, p0, Lamg$2;->e:Lamg;

    iget-object v2, p0, Lamg$2;->a:Laly;

    iget-object v3, p0, Lamg$2;->b:Lbgl;

    iget-object v5, p0, Lamg$2;->d:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lamg$a;->a(Lamg;Laly;Lbgl;Lus;Ljava/lang/Object;)V

    .line 110
    return-void
.end method
