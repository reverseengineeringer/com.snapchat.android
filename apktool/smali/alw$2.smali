.class final Lalw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalw;


# direct methods
.method constructor <init>(Lalw;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lalw$2;->a:Lalw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamg;Laly;Lbgl;Lus;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 470
    iget-object v0, p0, Lalw$2;->a:Lalw;

    move-object v5, p5

    check-cast v5, Lalw$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lalw;->a(Lalw;Lamg;Laly;Lbgl;Lus;Lalw$b;)V

    .line 471
    return-void
.end method
