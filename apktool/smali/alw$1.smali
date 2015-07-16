.class final Lalw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Laly;

.field final synthetic c:Lbgl;

.field final synthetic d:Lus;

.field final synthetic e:Lalw;


# direct methods
.method constructor <init>(Lalw;Ljava/util/Set;Laly;Lbgl;Lus;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lalw$1;->e:Lalw;

    iput-object p2, p0, Lalw$1;->a:Ljava/util/Set;

    iput-object p3, p0, Lalw$1;->b:Laly;

    iput-object p4, p0, Lalw$1;->c:Lbgl;

    iput-object p5, p0, Lalw$1;->d:Lus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 443
    iget-object v0, p0, Lalw$1;->e:Lalw;

    iget-object v1, p0, Lalw$1;->a:Ljava/util/Set;

    iget-object v2, p0, Lalw$1;->b:Laly;

    iget-object v3, p0, Lalw$1;->c:Lbgl;

    iget-object v4, p0, Lalw$1;->d:Lus;

    invoke-static {v0, v1, v2, v3, v4}, Lalw;->a(Lalw;Ljava/util/Set;Laly;Lbgl;Lus;)V

    .line 444
    return-void
.end method
